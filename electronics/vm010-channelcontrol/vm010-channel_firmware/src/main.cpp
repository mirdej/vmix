//----------------------------------------------------------------------------------------
//
//	vm010  Firmware
//
//		Target MCU: ATMEGA1284 @ 20Mhz
//		Copyright:	2020 Michael Egger, me@anyma.ch
//		License: 	This is FREE software (as in free speech, not necessarily free beer)
//					published under gnu GPL v.3
//
//----------------------------------------------------------------------------------------

/*

    VSync goes negative for ~240µs
    30µs/Led -> Fastled update for 9 LEDs takes about 270µs
        - that should still well be inside vertical blanking period
    SPI Speed for DAC: 1Mhz. Need to transfer 8 words = 64 bits -> ~128µs transfer, right?

    Theory of operation:
        -> no digital duties during active video portion
        -> only do calculations and ad conversion during active video
        -> ad sampling twice, output once for a bit of oversampling/smoothing of values
        -> output lags behind by one field


    To be able to record and playback automation synchronised to Midi Clock the actual output buffers
    are only updated every MIDI tick (~30ms @ 80bpm down to ~11ms @ 220bpm -> still fast enough for hand related movements)
    --> pots are sampled async,  actual decision what is being output happens in the midi tick handler


    ODD FIELD: (20ms total)
        write to leds (during blanking)
        wait 2ms (let voltage settle)
        then sample AD
    EVEN FIELD: (20ms total)
        update DAC (during blanking)
        check buttons (during blanking)
        recalculate leds
        wait 2ms
        then sample AD


*/

#include <Timer.h>
#include <SPI.h>
#include <EEPROM.h>
#include <Wire.h>

#include "FastLED.h"

#include "main.h"
#include "ChannelParam.h"

ChannelParam chan[NUM_CHAN];
/*"channels" per channel:
0 - BIAS
1 - COMPA
2 - SCALE
3 - AUX
4 - BUS_C
5 - BUS_B
6 - BUS_A
*/

Timer t;
CRGB pixels[NUM_PIXELS];
char loop_state;
char pfl_state;
char inverter_on;
char edges_on;

int rec_idx,
    playback_idx;
int rec_length = 0;

char button_changed;

int error = ERROR_NONE;

byte i2c_address;
volatile byte i2c_new_bytes;
volatile byte i2c_buf[32];

volatile int v_sync_interrupt_flag;
volatile int beat_interrupt_flag;

void check_ad(void *context);
void check_btns();
void check_sync();
void check_tick();
void dac_send(int dac, int channel, int send_val);
void handle_rec_click();
void playback_btns();
void power_on_dacs();
void set_dacs();
void update_leds();

//----------------------------------------------------------------------------------------
//																				AD
// update potentiometer values for each channel
void check_ad(void *context)
{
    for (int i = 0; i < 4; i++)
    {
        chan[i].ad(analogRead(PIN_POT[i]));
    }
    // LAST POTENTIOMETER (FADER) controls BUS-A, B and C

    int temp = analogRead(PIN_AD_MIX);
    temp = 1023 - temp;
    chan[BUS_C].ad(temp);
    chan[BUS_B].ad(temp);
    chan[BUS_A].ad(temp);
}

void dac_send(int dac, int channel, int send_val)
{
    int dac_pin = (dac == 0) ? PIN_DAC0_CS : PIN_DAC1_CS;
    digitalWrite(dac_pin, LOW);
    send_val = send_val << 2;
    send_val &= 1023 << 2;
    send_val |= channel << 12;
    SPI.transfer16(send_val);
    digitalWrite(dac_pin, HIGH);
}

void set_dacs()
{
    SPI.beginTransaction(SPISettings(1000000, MSBFIRST, SPI_MODE2));

    for (int i = 0; i < 3; i++)
    {
        dac_send(0, i, chan[i].get());
        check_tick();
    }

    for (int i = 0; i < 4; i++)
    {
        dac_send(1, 3 - i, chan[i + 3].out_enabled ? chan[i + 3].get() : 0);
        check_tick();
    }
    SPI.endTransaction();
}

//---------------------------------------------------------------------------------------------
void power_on_dacs()
{
    static int sendval = 0xf010;

    SPI.beginTransaction(SPISettings(1000000, MSBFIRST, SPI_MODE2));

    digitalWrite(PIN_DAC0_CS, LOW);
    delay(1);
    SPI.transfer16(sendval);
    digitalWrite(PIN_DAC0_CS, HIGH);
    digitalWrite(PIN_DAC1_CS, LOW);
    delay(1);
    SPI.transfer16(sendval);
    digitalWrite(PIN_DAC1_CS, HIGH);

    delay(100);

    digitalWrite(PIN_DAC0_CS, LOW);
    delay(1);
    SPI.transfer16(sendval);
    digitalWrite(PIN_DAC0_CS, HIGH);
    digitalWrite(PIN_DAC1_CS, LOW);
    delay(1);
    SPI.transfer16(sendval);
    digitalWrite(PIN_DAC1_CS, HIGH);

    SPI.endTransaction();
}

//----------------------------------------------------------------------------------------
//																				PLAY
void play()
{
    switch (loop_state)
    {
    case LOOP_STATE_EMPTY:
        break;

    case LOOP_STATE_REC_WAITING:
        break;

    case LOOP_STATE_REC:
        loop_state = LOOP_STATE_PLAY_WAITING;
        break;

    case LOOP_STATE_PLAY:
        break;

    case LOOP_STATE_PLAY_WAITING:
        break;

    case LOOP_STATE_DUB:
        loop_state = LOOP_STATE_PLAY;
        break;

    case LOOP_STATE_STOPPED:
        loop_state = LOOP_STATE_PLAY;
        break;

    default:
        break;
    }
}
//----------------------------------------------------------------------------------------
//																				REC
void record()
{
    // store start values to see if a pot has actually moved
    for (int i = 0; i < NUM_CHAN; i++)
    {
        chan[i].mark();
    }
    button_changed = 0;
    loop_state = LOOP_STATE_REC_WAITING;
}

//----------------------------------------------------------------------------------------
//																				DUB
void overdub()
{
    // store start values to see if a pot has actually moved
    for (int i = 0; i < NUM_CHAN; i++)
    {
        chan[i].mark();
    }
    loop_state = LOOP_STATE_DUB;
}

//----------------------------------------------------------------------------------------
//																				STOP
void stop()
{
    loop_state = LOOP_STATE_STOPPED;
}

//----------------------------------------------------------------------------------------
//																				CLEAR
void clear_buffer()
{
    for (int i = 0; i < NUM_CHAN; i++)
    {
        chan[i].clear();
    }
    loop_state = LOOP_STATE_EMPTY;
}

//---------------------------------------------------------------------------------------------
void v_sync_interrupt()
{
    v_sync_interrupt_flag++;
}

void check_sync()
{
    static int field;
    static long last_vsync;
    long vsync_timestamp;

    if (v_sync_interrupt_flag)
    {
        v_sync_interrupt_flag--;
        vsync_timestamp = millis();
        if (vsync_timestamp - last_vsync > 15)
        { // something is wrong otherwise, fields are 20ms
            field++;
            field %= 2;

            if (field)
            {
                FastLED.show();
            }
            else
            {
                check_tick();
                set_dacs();
                check_tick();
                check_btns();
                check_tick();
                update_leds();
            }
        }
        t.after(4, check_ad, (void *)0);
        last_vsync = vsync_timestamp;
    }
    else
    {
        if (millis() - last_vsync > 30)
        { // we've lost sync
            error = ERROR_NO_SYNC;
            fill_solid(pixels, NUM_PIXELS, CRGB::Red);
            FastLED.show();
        }
    }
}

//---------------------------------------------------------------------------------------------
void beat_interrupt()
{
    beat_interrupt_flag++;
}

void record_btns()
{
    /*
        int temp = 0;
        if (chan[BUS_C].out_enabled)
            temp |= (1 << 0);
        if (chan[BUS_B].out_enabled)
            temp |= (1 << 1);
        if (chan[BUS_A].out_enabled)
            temp |= (1 << 2);
        if (pfl_state)
            temp |= (1 << 3);
        if (inverter_on)
            temp |= (1 << 4);
        if (chan[COMPA].out_enabled)
            temp |= (1 << 5);
        if (edges_on)
            temp |= (1 << 6);
        rec_buffer[NUM_POTS][rec_idx] = temp; */
}

void dub_btns()
{
    /*  int temp = 0;
     if (chan[BUS_C].out_enabled)
         temp |= (1 << 0);
     if (chan[BUS_B].out_enabled)
         temp |= (1 << 1);
     if (chan[BUS_A].out_enabled)
         temp |= (1 << 2);
     if (pfl_state)
         temp |= (1 << 3);
     if (inverter_on)
         temp |= (1 << 4);
     if (chan[COMPA].out_enabled)
         temp |= (1 << 5);
     if (edges_on)
         temp |= (1 << 6);
     rec_buffer[NUM_POTS][rec_idx] = rec_buffer[NUM_POTS][rec_idx] & ~button_changed; // mask unchanged
     rec_buffer[NUM_POTS][rec_idx] = rec_buffer[NUM_POTS][rec_idx] | temp;
     playback_btns(); */
}

void playback_btns()
{

    /*  int temp = rec_buffer[NUM_POTS][playback_idx];

     if (button_changed & (1 << 0))
     {
         if (temp & (1 << 0))
             chan[BUS_C].out_enabled = 0xFF;
         else
             chan[BUS_C].out_enabled = 0;
     }
     if (button_changed & (1 << 1))
     {
         if (temp & (1 << 1))
             chan[BUS_B].out_enabled = 0xFF;
         else
             chan[BUS_B].out_enabled = 0;
     }
     if (button_changed & (1 << 2))
     {
         if (temp & (1 << 2))
             chan[BUS_A].out_enabled = 0xFF;
         else
             chan[BUS_A].out_enabled = 0;
     }
     if (button_changed & (1 << 3))
     {
         if (temp & (1 << 3))
             pfl_state = 0xFF;
         else
             pfl_state = 0;
     }
     if (button_changed & (1 << 4))
     {
         if (temp & (1 << 4))
             inverter_on = 0xFF;
         else
             inverter_on = 0;
     }
     if (button_changed & (1 << 5))
     {
         if (temp & (1 << 5))
             chan[COMPA].out_enabled = 0xFF;
         else
             chan[COMPA].out_enabled = 0;
     }
     if (button_changed & (1 << 6))
     {
         if (temp & (1 << 6))
             edges_on = 0xFF;
         else
             edges_on = 0;
     } */
}

void record_frame()
{
    for (int i = 0; i < NUM_CHAN; i++)
    {
        chan[i].record(rec_idx);
    }
    record_btns();

    if (rec_idx < MAX_REC_SLOTS - 1)
    {
        rec_idx++;
    }
    else
    {
        loop_state = LOOP_STATE_PLAY_WAITING;
    }
}

//----------------------------------------------------------------------------------------
//																				MIDI CLOCK

void check_tick()
{

    if (!beat_interrupt_flag)
    {
        return;
    }
    beat_interrupt_flag--;

    switch (loop_state)
    {

    case LOOP_STATE_REC_WAITING: // start recording
        rec_idx = 0;
        loop_state = LOOP_STATE_REC;
        record_frame();
        break;

    case LOOP_STATE_REC: // record
        record_frame();
        break;

    case LOOP_STATE_PLAY_WAITING:
        record_frame();
        if (rec_idx % LOOP_QUANTIZE == 0)
        {
            playback_idx = 0;
            loop_state = LOOP_STATE_PLAY;
            rec_length = rec_idx;
        }
        break;

    case LOOP_STATE_PLAY: // play

        //        playback_btns();

        playback_idx++;
        playback_idx %= rec_length;
        break;

    case LOOP_STATE_DUB:
        rec_idx = playback_idx;

        dub_btns();

        playback_idx++;
        playback_idx %= rec_length;
        break;

    default: // catches: LOOP_STATE_EMPTY, LOOP_STATE_STOPPED
        break;
    }

    for (int i = 0; i < NUM_CHAN; i++)
    {
        chan[i].update(loop_state, playback_idx);
    }
}

//----------------------------------------------------------------------------------------
//																				REC-BTN

void handle_rec_click()
{
    switch (loop_state)
    {
    case LOOP_STATE_EMPTY:
        record();
        break;
    case LOOP_STATE_REC_WAITING:
        break;
    case LOOP_STATE_REC:
        play();
        break;
    case LOOP_STATE_PLAY:
        overdub();
        break;
    case LOOP_STATE_PLAY_WAITING:
        break;
    case LOOP_STATE_DUB:
        play();
        break;
    case LOOP_STATE_STOPPED:
        play();
        break;
    default:
        break;
    }
}

//----------------------------------------------------------------------------------------
//																				STOP-BTN

void handle_stop_click()
{
    switch (loop_state)
    {
    case LOOP_STATE_EMPTY:
        clear_buffer();
        break;
    case LOOP_STATE_REC_WAITING:
        clear_buffer();
        break;
    case LOOP_STATE_REC:
        clear_buffer();
        break;
    case LOOP_STATE_PLAY:
        stop();
        break;
    case LOOP_STATE_PLAY_WAITING:
        stop();
        break;
    case LOOP_STATE_DUB:
        stop();
        break;
    case LOOP_STATE_STOPPED:
        clear_buffer();
        break;
    default:
        break;
    }
}

//----------------------------------------------------------------------------------------
//																				LEDS

void update_leds()
{
    fill_solid(pixels, NUM_PIXELS, BUTTON_COLOR);

    switch (error)
    {
    case ERROR_NO_BEAT:
        pixels[0] = CRGB::Navy;
        pixels[1] = CRGB::Navy;
        break;

    default:
        switch (loop_state)
        {
        case LOOP_STATE_EMPTY:
            break;
        case LOOP_STATE_REC_WAITING:
            pixels[0] = CRGB::Red;
            pixels[1] = CRGB::Orange;
        case LOOP_STATE_REC:
            pixels[0] = CRGB::Red;
            pixels[1] = CRGB::Red;
            break;
        case LOOP_STATE_PLAY_WAITING:
            pixels[0] = CRGB::Green;
            pixels[1] = CRGB::Orange;
        case LOOP_STATE_PLAY:
            pixels[0] = CRGB::Green;
            pixels[1] = CRGB::Green;
            break;
        case LOOP_STATE_DUB:
            pixels[0] = CRGB::Orange;
            pixels[1] = CRGB::Orange;
            break;
        case LOOP_STATE_STOPPED:
            pixels[0] = CRGB::Yellow;
            pixels[1] = CRGB::Yellow;
            break;
        }
    }

    if (chan[BUS_C].out_enabled)
    {
        pixels[2] = SELECTION_COLOR;
    }
    if (chan[BUS_B].out_enabled)
    {
        pixels[3] = SELECTION_COLOR;
    }
    if (chan[BUS_A].out_enabled)
    {
        pixels[4] = SELECTION_COLOR;
    }

    if (pfl_state)
    {
        pixels[5] = SELECTION_COLOR;
    }
    if (inverter_on)
    {
        pixels[6] = SELECTION_COLOR;
    }
    if (chan[COMPA].out_enabled)
    {
        pixels[7] = SELECTION_COLOR;
    }
    if (edges_on)
    {
        pixels[8] = SELECTION_COLOR;
    }

    digitalWrite(PIN_INVERT_OUT, inverter_on);
    digitalWrite(PIN_COMPA_OUT, chan[COMPA].out_enabled);
    digitalWrite(PIN_EDGES_OUT, edges_on);
    digitalWrite(PIN_PREVIEW_OUT, pfl_state);
}

//----------------------------------------------------------------------------------------
//																				BUTTONS

void check_btns()
{
    char state;
    static char old_state[NUM_BTNS];

    char leds_changed = 0;
    for (int i = 0; i < NUM_BTNS; i++)
    {

        //    check_tick();

        state = digitalRead(PIN_BTN[i]);

        if (state != old_state[i])
        {
            leds_changed = 1;
            old_state[i] = state;
#if DEBUG
            Serial.printf("Pressed %d", i);
#endif
            if (!state)
            {
                if ((loop_state == LOOP_STATE_REC) || (loop_state == LOOP_STATE_DUB))
                {
                    if (i > 1)
                        button_changed |= (1 << (i - 2));
                }

                switch (i)
                {
                case 0:
                    handle_rec_click();
                    break;
                case 1:
                    handle_stop_click();
                    break;
                case 2:
                    chan[BUS_C].out_enabled = !chan[BUS_C].out_enabled;
                    EEPROM.write(EEPROM_BUS_C, chan[BUS_C].out_enabled);
                    break;
                case 3:
                    chan[BUS_B].out_enabled = !chan[BUS_B].out_enabled;
                    EEPROM.write(EEPROM_BUS_B, chan[BUS_B].out_enabled);
                    break;
                case 4:
                    chan[BUS_A].out_enabled = !chan[BUS_A].out_enabled;
                    EEPROM.write(EEPROM_BUS_A, chan[BUS_A].out_enabled);
                    break;
                case 5:
                    pfl_state = ~pfl_state;
#if DEBUG
                    Serial.printf("pfl %d", pfl_state);
#endif
                    EEPROM.write(EEPROM_PFL, pfl_state);
                    break;
                case 6:
                    inverter_on = ~inverter_on;
                    EEPROM.write(EEPROM_INVERT, inverter_on);
                    break;
                case 7:
                    chan[COMPA].out_enabled = !chan[COMPA].out_enabled;
                    EEPROM.write(EEPROM_COMPA, chan[COMPA].out_enabled);
                    break;
                case 8:
                    edges_on = ~edges_on;
                    EEPROM.write(EEPROM_EDGES, edges_on);
                    break;
                default:
                    break;
                }
            }
        }
    }

    if (leds_changed)
        update_leds();
}

//----------------------------------------------------------------------------------------
//																				I2C
/*
Note that receiveEvent is called from an Interrupt Service Routine (ISR)!

You should not:

Do serial prints
Use "delay"
Do anything lengthy
Do anything that requires interrupts to be active
*/

void receiveEvent(int howMany)
{
    for (byte i = 0; i < howMany; i++)
    {
        i2c_buf[i] = Wire.read();
    }
    i2c_new_bytes = howMany;
}

void requestEvent()
{
    byte buf[6] = {9, 12, 13, 14, 31, 44};
    Wire.write(buf, sizeof buf);
}

//----------------------------------------------------------------------------------------

void check_i2c()
{
#if DEBUG
    if (i2c_new_bytes)
    {
        Serial.printf("Received %d bytes\n", i2c_new_bytes);
    }
#endif

    if (i2c_new_bytes == 1)
    {
        switch (i2c_buf[0])
        {
        case I2C_CALL_REC:
            record();
            break;
        case I2C_CALL_PLAY:
            play();
            break;
        case I2C_CALL_DUB:
            overdub();
            break;
        case I2C_CALL_STOP:
            stop();
            break;
        case I2C_CALL_CLEAR:
            clear_buffer();
            break;
        default:
            // Serial.print("Strange Call Received: ");
            // Serial.println(i2c_buf[0], HEX);
            break;
        }
        // Serial.println();
    }
    if (i2c_new_bytes == 2)
    {
        switch (i2c_buf[0])
        {
        case I2C_CALL_STORE:
            // Serial.print("Received: STORE ");
            // Serial.println(i2c_buf[1], DEC);
            break;
        case I2C_CALL_RECALL:
            // Serial.print("Received: RECALL ");
            // Serial.println(i2c_buf[1], DEC);
            break;
        case I2C_CALL_BRIGHTNESS:
            FastLED.setBrightness(i2c_buf[1]);
            FastLED.show();
            break;
        case I2C_CALL_VOLUME:

            break;
        default:
            // Serial.print("Strange Call Received: ");
            // Serial.println(i2c_buf[0], HEX);
            break;
        }
        // Serial.println();
    }
    if (i2c_new_bytes == 3)
    {
#if DEBUG

        Serial.print("Received data: ");
        for (int i = 0; i < 3; i++)
        {
            Serial.print(i2c_buf[i], DEC);
            Serial.print(" ");
        }
        Serial.println();
#endif

        if (i2c_buf[0] == I2C_CALL_SET_CHAN)
        {
            int ch = i2c_buf[1];
            int val = i2c_buf[2];

            if (ch > 0 && ch < 7)
            {
                ch = 7 - ch;
                val *= 8;
                val %= 1024;
                chan[ch].set(val);
            }
            else
            {
                if (ch == 7)
                {
                    chan[BUS_C].out_enabled = val & (1 << 2);
                    chan[BUS_B].out_enabled = val & (1 << 1);
                    chan[BUS_A].out_enabled = val & (1 << 0);
                    pfl_state = val & (1 << 3);
                    inverter_on = val & (1 << 4);
                    chan[COMPA].out_enabled = val & (1 << 5);
                    edges_on = val & (1 << 6);
                    update_leds();
                }
            }
        }
        i2c_new_bytes = 0;
    }
}

void debug()
{
    Serial.printf("Fader %d\n", analogRead(PIN_AD_MIX));
}
//========================================================================================
//----------------------------------------------------------------------------------------
//																				SETUP

void setup()
{
#if DEBUG
    Serial.begin(115200);
    delay(3000);
    Serial.println("_____________________");
    Serial.println("SETUP");
#endif
    FastLED.addLeds<SK6812, PIN_PIXELS, GRB>(pixels, NUM_PIXELS);
    FastLED.setBrightness(100);

    for (int i = 0; i < NUM_BTNS; i++)
    {
        pinMode(PIN_BTN[i], INPUT_PULLUP);
    }

    SPI.begin();

    pinMode(PIN_DAC0_CS, OUTPUT);
    pinMode(PIN_DAC1_CS, OUTPUT);
    pinMode(PIN_INVERT_OUT, OUTPUT);
    pinMode(PIN_COMPA_OUT, OUTPUT);
    pinMode(PIN_EDGES_OUT, OUTPUT);
    pinMode(PIN_PREVIEW_OUT, OUTPUT);

    power_on_dacs();

    fill_solid(pixels, NUM_PIXELS, CRGB::Red); // Stays red if we dont have genlock
    FastLED.show();

    chan[BUS_D].out_enabled = 0xFF; // always on
    chan[BUS_C].out_enabled = EEPROM.read(EEPROM_BUS_C);
    chan[BUS_B].out_enabled = EEPROM.read(EEPROM_BUS_B);
    chan[BUS_A].out_enabled = EEPROM.read(EEPROM_BUS_A);

    pfl_state = 0;
    inverter_on = 0;
    chan[COMPA].out_enabled = 0;
    edges_on = 0;
    pfl_state = EEPROM.read(EEPROM_PFL);
    inverter_on = EEPROM.read(EEPROM_INVERT);
    chan[COMPA].out_enabled = EEPROM.read(EEPROM_COMPA);
    edges_on = EEPROM.read(EEPROM_EDGES);

    //i2c_address = 0x01;
 /*    i2c_address = 3;
    EEPROM.write(EEPROM_I2C_ADDRESS, i2c_address); */
    i2c_address = EEPROM.read(EEPROM_I2C_ADDRESS);

    Wire.begin();

    TWAR = (i2c_address << 1) | 1; // enable broadcasts to be received
    Wire.onReceive(receiveEvent);
    Wire.onRequest(requestEvent);

    attachInterrupt(digitalPinToInterrupt(PIN_VSYNC), v_sync_interrupt, FALLING);
    attachInterrupt(digitalPinToInterrupt(PIN_BEAT), beat_interrupt, RISING);

#if DEBUG
    delay(1000);
    Serial.println("SETUP DONE");
    Serial.println("_____________________");
    // t.every(4000, debug, (void *)0);
#endif
}

//========================================================================================
//----------------------------------------------------------------------------------------
//																				LOOP

void loop()
{
    t.update();
    check_sync();
    check_tick();
    check_i2c();
}