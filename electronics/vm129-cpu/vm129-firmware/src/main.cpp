#define VERSION "2024-12-03"
//----------------------------------------------------------------------------------------
//
//  vMix CPU Firmware
//  Part of the vmix20 analog video mixer by [ a n y m a ]
//  Based on the Synkie, analog modular video processor, www.synkie.net
//
//          Target MCU: ESP32-S3
//          Copyright:  2020 Michael Egger, me@anyma.ch
//          License:        This is FREE software (as in free speech, not necessarily free beer)
//                                  published under gnu GPL v.3
//
//----------------------------------------------------------------------------------------

/*
About sync

There are two sync mechanisms running interlocked in parallel on the mixer: Beat Clock and Video Sync

1) Beat Clock:
This clock ticks 24 times per beat, running either on an internal precision timer
set to a specific BPM, or driven externally via MIDI realtime messages.
Parameter automation runs in step with the beat clock. Trigger outputs as well. (???????? but synched to vsync, no???)
Clock period varies between ~30ms @ 80bpm down to ~11ms @ 220bpm

2) Video Sync:
Vertical blanking interrupts taken from the Genlock signal (via the LM1881) are the main
clock for all mixer operations. Most of digital communication and noisy behaviour (Neopixel updates)
should take place during vertical blanking.
Clock period: fixed at 20ms


*/
#include <Arduino.h>
#include <Preferences.h>
#include <Wire.h>
#include <WiFi.h>
#include <FastLED.h>
#include <Adafruit_GFX.h>
#include <Adafruit_SSD1306.h>
#include <ESP32Encoder.h>
#include <MIDI.h>

#include <WiFi.h>
#include <WiFiUDP.h>
#include <ESPmDNS.h>
#include <AppleMIDI.h>
USING_NAMESPACE_APPLEMIDI

APPLEMIDI_CREATE_DEFAULTSESSION_INSTANCE();
// ..................................................................................... PIN mapping

const int PIN_ENCODER_A = 4;
const int PIN_ENCODER_B = 5;
const int PIN_HSYNC = 6;
const int PIN_VSYNC = 7;
const int PIN_MUX_4 = 18;
const int PIN_MUX_3 = 17;
const int PIN_MUX_2 = 16;
const int PIN_MUX_1 = 15;

const int PIN_FOOTPEDAL = 1;
const int PIN_FOOTPEDAL_2 = 2;
const int PIN_TRIGGER_IN = 48;
const int PIN_BEATSYNC = 42;
const int PIN_TRIGGER_3 = 11;
const int PIN_TRIGGER_2 = 10;
const int PIN_TRIGGER_1 = 9;
const int PIN_SYNKIETXT_EN = 41;
const int PIN_SYNKIETXT = 40;
const int PIN_VIDEO_READ = 39;
const int PIN_PIXELS = 8;

const int PIN_BTN_LATCH = 14;
const int PIN_BTN_CLK = 21;
const int PIN_BTN_DATA = 47;
const int PIN_SDA = 13;
const int PIN_SCL = 12;
const int PIN_RX = 37;
const int PIN_TX = 38;

// ..................................................................................... Constants

const int NUM_PIXELS = 24;

const int SYNC_MODE_INTERN = 0;
const int SYNC_MODE_EXTERN_AUDIO = 1;
const int SYNC_MODE_EXTERN_MIDI = 2;

const int MENU_NONE = 0;
const int MENU_BRIGHTNESS = 1;
const int MENU_BPM = 2;
const int MENU_TRIGGER_1 = 11;
const int MENU_TRIGGER_2 = 12;
const int MENU_TRIGGER_3 = 13;

const int trigger_clocks[] = {6, 12, 24, 48, 96};
static const char *const trigger_strings[] = {"16th", "8th", "beats", "half", "bar"};

const int UI_TIMEOUT = 5000;

#define NUM_REGISTERS 3
#define SELECTION_COLOR CRGB::Gray
// ..................................................................................... SCREEN

#define SCREEN_WIDTH 128
#define SCREEN_HEIGHT 32
#define OLED_RESET -1
Adafruit_SSD1306 display = Adafruit_SSD1306(SCREEN_WIDTH, SCREEN_HEIGHT, &Wire, OLED_RESET);

/* for u8g2 library use : U8G2_SSD1306_128X32_UNIVISION_2_HW_I2C */

#define LOOP_STATE_EMPTY 0
#define LOOP_STATE_REC 1
#define LOOP_STATE_DUB 2
#define LOOP_STATE_PLAY 3
#define LOOP_STATE_STOPPED 4

#define BUTTON_COLOR CRGB(0, 5, 10)
#define PIX_LOOP 3
#define PIX_STOP 2

#define I2C_CALL_REC 0xF0
#define I2C_CALL_PLAY 0xF1
#define I2C_CALL_DUB 0xF2
#define I2C_CALL_STOP 0xF3
#define I2C_CALL_CLEAR 0xF4
#define I2C_CALL_STORE 0xB0
#define I2C_CALL_RECALL 0xB1
#define I2C_CALL_BRIGHTNESS 0xB2
#define I2C_CALL_VOLUME 0xC0
#define I2C_CALL_SET_CHAN 0xC1

//========================================================================================
//----------------------------------------------------------------------------------------
//																				GLOBALS

MIDI_CREATE_INSTANCE(HardwareSerial, Serial1, DIN_MIDI);

Preferences preferences;
ESP32Encoder encoder;
CRGB pixels[NUM_PIXELS];

int selected_menu;
int sync_mode;
int bpm;
int bpm_displayed;

int brightness;

long last_ui_interaction;
long last_beat;
long last_midi_clock;

volatile int interruptCounter;
int tickCounter;

const int beat_divider = 24; // MIDI CLOCk Ticks per beat

int beatclock_clocks = beat_divider;    // default output beat on trigger out 1
int trigger1_clocks = beat_divider * 4; // default output bar on trigger out 1x
int trigger2_clocks = beat_divider;     // default output beat on trigger out 2
int trigger3_clocks = beat_divider / 4; // default output 16ths on trigger out 3

hw_timer_t *beatClockTimer = NULL;
portMUX_TYPE beatClockTimerMux = portMUX_INITIALIZER_UNLOCKED;

bool display_needs_update;

int preview_out_channel;
int preview_out_afl;

char loop_state;

long buttons_raw;

void update_leds(void);
void update_display(void);

//----------------------------------------------------------------------------------------
//																		Intro
void intro()
{
    display.clearDisplay();
    display.setTextSize(1);
    display.setTextColor(WHITE);
    display.setCursor(22, 6);
    display.println(F("[ a n y m a ]"));
    display.setCursor(8, 16);
    display.setTextSize(2);
    display.println(F("ANYMIX-21"));
    display.display();
    fill_solid(pixels, NUM_PIXELS, CRGB::DarkBlue);
    FastLED.show();

    /*
        display.clearDisplay();
        display.setTextSize(1);
        display.setCursor(40,0);
        display.println(F("version"));
        display.setCursor(34,12);
        display.println(F(VERSION));
        display.display();
        delay(1000);
        */
}

//----------------------------------------------------------------------------------------
//																		set all trigger pins to low
void release_triggers(void *p)
{
    vTaskDelay(10);
    digitalWrite(PIN_TRIGGER_1, LOW);
    digitalWrite(PIN_TRIGGER_2, LOW);
    digitalWrite(PIN_TRIGGER_3, LOW);
    vTaskDelete(NULL);
}

void release_tick(void *p)
{
    // log_v("Release");
    vTaskDelay(2);
    digitalWrite(PIN_BEATSYNC, LOW);
    vTaskDelete(NULL);
}

//----------------------------------------------------------------------------------------
//                                                              MIDI Clock Timer
void check_clock()
{
    if (interruptCounter > 0)
    {

        portENTER_CRITICAL(&beatClockTimerMux);
        interruptCounter = 0;
        portEXIT_CRITICAL(&beatClockTimerMux);

        tickCounter++;

        if (sync_mode == SYNC_MODE_EXTERN_MIDI)
        {
            if (tickCounter % 24 == 0)
            {
                long this_beat = millis();
                bpm = 60000 / (this_beat - last_beat);
                last_beat = this_beat;
                if (bpm_displayed != bpm)
                    display_needs_update = true;
            }
        }

        DIN_MIDI.sendRealTime(midi::Clock);

        // if (tickCounter % beatclock_clocks == 0)
        digitalWrite(PIN_BEATSYNC, HIGH);
        if (tickCounter % trigger1_clocks == 0)
            digitalWrite(PIN_TRIGGER_1, HIGH);
        if (tickCounter % trigger2_clocks == 0)
            digitalWrite(PIN_TRIGGER_2, HIGH);
        if (tickCounter % trigger3_clocks == 0)
            digitalWrite(PIN_TRIGGER_3, HIGH);

        xTaskCreate(release_tick, "release_tick", 3000, NULL, 1, NULL);
        xTaskCreate(release_triggers, "release_triggers", 3000, NULL, 1, NULL);

        /* t.after(2, release_tick);
        t.after(10, release_triggers); */
        update_display(); // display update needs a lot of time. do it right after clock tick
                          //  (if necessary) in order to not skew clock timing
        update_leds();
    }
}

void IRAM_ATTR onTimer()
{
    portENTER_CRITICAL_ISR(&beatClockTimerMux);
    interruptCounter++;
    portEXIT_CRITICAL_ISR(&beatClockTimerMux);
}

void change_bpm()
{
    portENTER_CRITICAL(&beatClockTimerMux);
    interruptCounter = 0;
    portEXIT_CRITICAL(&beatClockTimerMux);

    timerAlarmWrite(beatClockTimer, 2500000 / bpm, true); // 60 000 000 microseconds / bpm / 24 (clocks per beat)
    timerAlarmEnable(beatClockTimer);
}

//----------------------------------------------------------------------------------------
//																		UI Timeout

void check_ui_timeout()
{

    if (millis() - last_ui_interaction > UI_TIMEOUT)
    {
        selected_menu = 0;
        display_needs_update = true;
    }

    if (sync_mode == SYNC_MODE_EXTERN_MIDI)
    {
        if (millis() - last_midi_clock > 1000)
        {
            Serial.println("Lost MIDI");
            sync_mode = SYNC_MODE_INTERN;
            display_needs_update = true;
            change_bpm(); // restart timer
        }
    }
}

//----------------------------------------------------------------------------------------
//																		Encoder
void check_encoder()
{
    if (encoder.getCount() == 0)
        return;

    switch (selected_menu)
    {
    case MENU_NONE:
        break;
    case MENU_BRIGHTNESS:
        brightness += encoder.getCount();
        if (brightness < 5)
            brightness = 5;
        if (brightness > 255)
            brightness = 255;
        FastLED.setBrightness(brightness);
        FastLED.show();
        display_needs_update = true;
        Wire.beginTransmission(0);
        Wire.write(I2C_CALL_BRIGHTNESS);
        Wire.write(brightness);
        Wire.endTransmission();
        break;
    case MENU_BPM:
        bpm += encoder.getCount();
        if (bpm < 60)
            bpm = 60;
        if (bpm > 240)
            bpm = 240;
        display_needs_update = true;
        change_bpm();
        break;
    case MENU_TRIGGER_1:
        trigger1_clocks += encoder.getCount();
        if (trigger1_clocks < 1)
            trigger1_clocks = 1;
        if (trigger1_clocks > 100)
            trigger1_clocks = 100;
        display_needs_update = true;
        break;
    case MENU_TRIGGER_2:
        trigger2_clocks += encoder.getCount();
        if (trigger2_clocks < 1)
            trigger2_clocks = 1;
        if (trigger2_clocks > 100)
            trigger2_clocks = 100;
        display_needs_update = true;
        break;
    case MENU_TRIGGER_3:
        trigger3_clocks += encoder.getCount();
        if (trigger3_clocks < 1)
            trigger3_clocks = 1;
        if (trigger3_clocks > 100)
            trigger3_clocks = 100;
        display_needs_update = true;
        break;
    default:
        break;
    }

    last_ui_interaction = millis();
    encoder.setCount(0);
}

//----------------------------------------------------------------------------------------
//																		Buttons
void set_preview_mux()
{
    digitalWrite(PIN_MUX_4, (preview_out_channel & 1));
    digitalWrite(PIN_MUX_3, (preview_out_channel & 2));
    digitalWrite(PIN_MUX_2, preview_out_afl);
}

void preview_press(int n)
{
    if (preview_out_channel == n)
    {
        preview_out_afl = ~preview_out_afl;
    }
    else
    {
        preview_out_channel = n;
    }
    set_preview_mux();
}

//----------------------------------------------------------------------------------------
//																				PLAY
void play()
{
    return;
    Wire.beginTransmission(0);
    Wire.write(I2C_CALL_PLAY);
    Wire.endTransmission();
    loop_state = LOOP_STATE_PLAY;
}
//----------------------------------------------------------------------------------------
//																				REC
void record()
{
    return;
    Wire.beginTransmission(0);
    Wire.write(I2C_CALL_REC);
    Wire.endTransmission();
    loop_state = LOOP_STATE_REC;
}
//----------------------------------------------------------------------------------------
//																				DUB
void overdub()
{
    switch (loop_state)
    {
    case LOOP_STATE_PLAY:
        Wire.beginTransmission(0);
        Wire.write(I2C_CALL_DUB);
        Wire.endTransmission();
        loop_state = LOOP_STATE_DUB;
        break;

    default:
        break;
    }
}
//----------------------------------------------------------------------------------------
//																				STOP
void stop()
{
    return;
    Wire.beginTransmission(0);
    Wire.write(I2C_CALL_STOP);
    Wire.endTransmission();
    loop_state = LOOP_STATE_STOPPED;
}
//----------------------------------------------------------------------------------------
//																				CLEAR
void clear_buffer()
{
    return;
    Wire.beginTransmission(0);
    Wire.write(I2C_CALL_CLEAR);
    Wire.endTransmission();
    loop_state = LOOP_STATE_EMPTY;
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
    case LOOP_STATE_REC:
        play();
        break;
    case LOOP_STATE_PLAY:
        overdub();
        break;
    case LOOP_STATE_DUB:
        play();
        break;
    case LOOP_STATE_STOPPED:
        play();
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
    case LOOP_STATE_REC:
        clear_buffer();
        break;
    case LOOP_STATE_PLAY:
        stop();
        break;
    case LOOP_STATE_DUB:
        stop();
        break;
    case LOOP_STATE_STOPPED:
        clear_buffer();
        break;
    }
}

void check_buttons()
{
    static long old_buttons;
    static int old_footpedal;

    byte temp;
    buttons_raw = 0;

    SPI.beginTransaction(SPISettings(80000, LSBFIRST, SPI_MODE2));
    digitalWrite(PIN_BTN_LATCH, LOW);
    delayMicroseconds(100);
    digitalWrite(PIN_BTN_LATCH, HIGH);
    cli();
    for (int i = 0; i < NUM_REGISTERS; i++)
    {
        temp = ~SPI.transfer(0x00);
        buttons_raw |= (temp << (i * 8)); //((temp << 4) & 0xF0 ) | ((temp >> 4) & 0x0F);
    }
    sei();
    SPI.endTransaction();

    // log_v("Buttons_raw: %d", buttons_raw);

    int footpedal = digitalRead(PIN_FOOTPEDAL);
    if (old_footpedal != footpedal)
    {
        if (!footpedal)
        {
            handle_rec_click();
        }
        old_footpedal = footpedal;
    }

    if (old_buttons == buttons_raw)
        return;

    long triggers = ~old_buttons & buttons_raw;

    for (int i = 0; i < NUM_PIXELS; i++)
    {
        if (triggers & (1 << i))
        {
            switch (i)
            {
            case 2:
                handle_stop_click();
                break;
            case 3:
                handle_rec_click();
                break;
            case 12:
                selected_menu = MENU_BRIGHTNESS;
                break;
            case 13:
                selected_menu = MENU_BPM;
                break;
            case 15:
                selected_menu = MENU_NONE;
                break;
            case 22:
                selected_menu = MENU_TRIGGER_1;
                break;
            case 21:
                selected_menu = MENU_TRIGGER_2;
                break;
            case 20:
                selected_menu = MENU_TRIGGER_3;
                break;

            case 19:
                preview_press(0);
                break;
            case 18:
                preview_press(1);
                break;
            case 17:
                preview_press(2);
                break;
            case 16:
                preview_press(3);
                break;

            default:
                break;
            }
        }

        last_ui_interaction = millis();
        old_buttons = buttons_raw;
        display_needs_update = true;
    }
}

//----------------------------------------------------------------------------------------
//																		Leds

void update_leds()
{
    fill_solid(pixels, NUM_PIXELS, BUTTON_COLOR);
    for (int i = 0; i < NUM_PIXELS; i++)
    {
        if (buttons_raw & (1 << i))
        {
            pixels[i] = CRGB::Yellow;
        }
    }

    switch (selected_menu)
    {
    case MENU_BRIGHTNESS:
        pixels[12] = SELECTION_COLOR;
    case MENU_BPM:
        break;
        pixels[13] = SELECTION_COLOR;
    case MENU_TRIGGER_1:
        break;
        pixels[22] = SELECTION_COLOR;
        break;
    case MENU_TRIGGER_2:
        pixels[21] = SELECTION_COLOR;
        break;
    case MENU_TRIGGER_3:
        pixels[20] = SELECTION_COLOR;
        break;
    }

    switch (loop_state)
    {
    case LOOP_STATE_EMPTY:
        break;
    case LOOP_STATE_REC:
        pixels[PIX_LOOP] = CRGB::Red;
        pixels[PIX_STOP] = CRGB::Red;
        break;
    case LOOP_STATE_PLAY:
        pixels[PIX_LOOP] = CRGB::Green;
        pixels[PIX_STOP] = CRGB::Green;
        break;
    case LOOP_STATE_DUB:
        pixels[PIX_LOOP] = CRGB::Orange;
        pixels[PIX_STOP] = CRGB::Orange;
        break;
    case LOOP_STATE_STOPPED:
        pixels[PIX_LOOP] = CRGB::Yellow;
        pixels[PIX_STOP] = CRGB::Yellow;
        break;
    }

    CRGB preview_color;
    if (preview_out_afl)
        preview_color = SELECTION_COLOR;
    else
        preview_color = CRGB::Gold;
    pixels[19 - preview_out_channel] = preview_color;

    if (digitalRead(PIN_TRIGGER_1))
    {
        pixels[22] = CRGB::Blue;
    }
    if (digitalRead(PIN_TRIGGER_2))
    {
        pixels[21] = CRGB::Blue;
    }
    if (digitalRead(PIN_TRIGGER_3))
    {
        pixels[20] = CRGB::Blue;
    }

    FastLED.show();
}

//----------------------------------------------------------------------------------------
//																		Display
void update_display()
{

    if (millis() < 6000)
        return;
    if (!display_needs_update)
        return;
    display.clearDisplay();
    display.setTextSize(1);
    display.setTextColor(WHITE);

    bpm_displayed = bpm;

    switch (selected_menu)
    {
    case MENU_NONE:
        display.setCursor(0, 0);
        if (sync_mode == SYNC_MODE_EXTERN_AUDIO)
            display.print("EXT SYNC: AUDIO");
        else if (sync_mode == SYNC_MODE_EXTERN_MIDI)
            display.print("EXT SYNC: MIDI");
        else
            display.print("INTERNAL SYNC");

        display.setTextSize(2);
        display.setCursor(0, 14);
        display.print(bpm);
        display.print(" bpm");

        break;
    case MENU_BRIGHTNESS:
        display.setCursor(0, 0);
        display.print("BRIGHTNESS");

        display.setTextSize(2);
        display.setCursor(0, 14);
        display.print(brightness);
        break;
    case MENU_BPM:
        display.setCursor(0, 0);
        display.print("BPM");

        display.setTextSize(2);
        display.setCursor(0, 14);
        display.print(bpm);
        break;
    case MENU_TRIGGER_1:
        display.setCursor(0, 0);
        display.print("TRIGGER OUT 1");

        display.setTextSize(2);
        display.setCursor(0, 14);
        display.print(trigger1_clocks);
        break;
    case MENU_TRIGGER_2:
        display.setCursor(0, 0);
        display.print("TRIGGER OUT 2");

        display.setTextSize(2);
        display.setCursor(0, 14);
        display.print(trigger2_clocks);
        break;
    case MENU_TRIGGER_3:
        display.setCursor(0, 0);
        display.print("TRIGGER OUT 3");

        display.setTextSize(2);
        display.setCursor(0, 14);
        display.print(trigger3_clocks);
        break;
    default:
        break;
    }

    display.drawLine(0, 8, 128, 8, WHITE);
    display.display();
    display_needs_update = false;
}

//----------------------------------------------------------------------------------------
//																				MIDI

void test(byte channel, byte pitch, byte velocity)
{
    log_v("GOT %d %d", pitch, velocity);
}

//																		MIDI Clock
void handleMIDIClock()
{
    last_midi_clock = millis();
    if (sync_mode != SYNC_MODE_EXTERN_MIDI)
    {
        sync_mode = SYNC_MODE_EXTERN_MIDI;
        display_needs_update = true;

        log_v("GOT MIDI CLOCK");
        timerAlarmDisable(beatClockTimer);
        interruptCounter = 0;
        tickCounter = 0;
    }

    interruptCounter++;
}

//																		Control changfe

void handleMIDICtlchange(byte channel, byte ctl, byte val)
{
    log_v("CTL %d %d", ctl, val);

    int chann = ctl / 10 + 1;
    ctl %= 10;

    Wire.beginTransmission(chann);
    Wire.write(I2C_CALL_SET_CHAN);
    Wire.write(ctl);
    Wire.write(val);
    Wire.endTransmission();
}

void note_on(byte channel, byte pitch, byte velocity)
{
    log_v("NOTE %d %d", pitch, velocity);
    Wire.beginTransmission(1);
    Wire.write(I2C_CALL_VOLUME);
    Wire.endTransmission();
}

void initAppleMIDI()
{
    String hostname = "Anymix";

    WiFi.begin("Anymair", "Mot de passe pas complique");
    while (WiFi.status() != WL_CONNECTED)
    {
        delay(250);
        Serial.print(".");
    }
    Serial.print("IP address: ");
    Serial.println(WiFi.localIP());

    if (!MDNS.begin(hostname.c_str()))
    {
        Serial.println("Error setting up MDNS responder!");
        while (1)
        {
            delay(1000);
        }
    }

    Serial.print("Hostname: ");
    Serial.println(hostname);

    MIDI.begin(1); // listen on channel 1
                   // AppleMIDI.c(OnAppleMidiConnected);
                   // AppleMIDI.setHandleDisconnected(OnAppleMidiDisconnected);
    MIDI.setHandleControlChange(handleMIDICtlchange);

    MDNS.addService("apple-midi", "udp", AppleMIDI.getPort());
    MDNS.addService("http", "tcp", 80);
    Serial.println("Started AppleMIDI");
}
//========================================================================================
//----------------------------------------------------------------------------------------
//																				SETUP

void setup()
{

    Serial.begin(115200);

    delay(1000);

    log_v("vMIX20 - SETUP start");
    WiFi.mode(WIFI_MODE_NULL);
    btStop();

    Wire.begin(PIN_SDA, PIN_SCL);

    brightness = 10;
    FastLED.addLeds<NEOPIXEL, PIN_PIXELS>(pixels, NUM_PIXELS);
    FastLED.setBrightness(brightness);

    display.begin(SSD1306_SWITCHCAPVCC, 0x3C);
    display.setRotation(0);
    intro();

    pinMode(PIN_TRIGGER_1, OUTPUT);
    pinMode(PIN_TRIGGER_2, OUTPUT);
    pinMode(PIN_TRIGGER_3, OUTPUT);
    pinMode(PIN_BEATSYNC, OUTPUT);
    pinMode(PIN_BTN_LATCH, OUTPUT);
    // pinMode(PIN_RX, INPUT_PULLUP); WHY ???????????
    pinMode(PIN_MUX_1, OUTPUT);
    pinMode(PIN_MUX_2, OUTPUT);
    pinMode(PIN_MUX_3, OUTPUT);
    pinMode(PIN_MUX_4, OUTPUT);
    pinMode(PIN_FOOTPEDAL, INPUT_PULLUP);

    preview_out_channel = 0;
    set_preview_mux();

    SPI.begin(PIN_BTN_CLK, PIN_BTN_DATA, NULL, PIN_BTN_LATCH);

    //  encoder.attachHalfQuad(PIN_ENCODER_B, PIN_ENCODER_A);
    encoder.attachSingleEdge(PIN_ENCODER_B, PIN_ENCODER_A);

    // precision beatClockTimer for generating midi clock signal when not synched externally
    beatClockTimer = timerBegin(2, 80, true);
    timerAttachInterrupt(beatClockTimer, &onTimer, true);

    bpm = 110;
    sync_mode = SYNC_MODE_INTERN;
    change_bpm();

    initAppleMIDI();
    /*  Serial1.begin(31250, SERIAL_8N1, 37, 38);
     DIN_MIDI.begin(); // Launch MIDI, by default listening to channel 1.
     DIN_MIDI.setHandleClock(handleMIDIClock);
     DIN_MIDI.setHandleControlChange(handleMIDICtlchange); */
    // DIN_MIDI.setHandleNoteOn(note_on);

    log_v("SETUP done");
}

void loop()
{
    static long last_button_check, last_ui_check, last_encoder_check;
    if (millis() - last_button_check > 20)
    {
        check_buttons();
        last_button_check = millis();
    }
    if (millis() - last_ui_check > 1000)
    {
        check_ui_timeout();
        last_ui_check = millis();
    }
    if (millis() - last_encoder_check > 100)
    {
        check_encoder();
        last_encoder_check = millis();
    }
    // DIN_MIDI.read();
    MIDI.read();
    check_clock();
}
