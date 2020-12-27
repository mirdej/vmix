//----------------------------------------------------------------------------------------
//
//	vm010  Firmware		
//						
//		Target MCU: ATMEGA1284
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

    ODD FIELD: (20ms total)
        write to leds (during blanking)
        wait 2ms (let voltage settle)
        then sample AD and update values;
    EVEN FIELD: (20ms total)
        update DAC (during blanking)
        check buttons (during blanking)
        recalculate leds
        wait 2ms
        then sample AD, dont update
    
    
*/

#include <Timer.h>
#include <SPI.h>
#include <EEPROM.h>
#include <Wire.h>

#include "FastLED.h"


const char	NUM_PIXELS				= 9;
const char	NUM_BTNS				= 9;
const char  NUM_POTS                = 5;
const int   MAX_REC_SLOTS           = 1000; // 25 frames/values per second -> max 40 second loop

#define PIN_LED_BUILTIN         0
#define PIN_COMPA_OUT           1
#define PIN_PREVIEW_OUT         2
#define PIN_EDGES_OUT           3
#define PIN_PIXELS              4
#define PIN_MOSI                5
#define PIN_MISO                6
#define PIN_SCK                 7

#define PIN_RX                  8
#define PIN_TX                  9
#define PIN_VSYNC               10
#define PIN_BEAT                11
#define PIN_BTN_EDGES           12
#define PIN_BTN_BUS_C           13
#define PIN_BTN_BUS_B           14
#define PIN_BTN_BUS_A           15

#define PIN_SCL                 16
#define PIN_SDA                 17
#define PIN_ODDEVEN             18
#define PIN_BTN_COMPA           19
#define PIN_BTN_INVERT          20
#define PIN_BTN_DRYWET          21
#define PIN_BTN_REC             22
#define PIN_BTN_STOP            23

#define PIN_AD_SCALE            A0
#define PIN_AD_MIX              A1
#define PIN_AD_AUX              A2
#define PIN_INVERT_OUT          27
#define PIN_DAC0_CS             28
#define PIN_DAC1_CS             29
#define PIN_AD_COMPA            A6
#define PIN_AD_BIAS             A7

#define EEPROM_BUS_C             0
#define EEPROM_BUS_B             1
#define EEPROM_BUS_A             2
#define EEPROM_INVERT            3
#define EEPROM_COMPA             4
#define EEPROM_PFL               5
#define EEPROM_EDGES             6
#define EEPROM_I2C_ADDRESS       7

const int REC_THRESH = 4;

// scalke bias pots are inversed on board as of dec2020
const char PIN_POT[NUM_POTS] = {PIN_AD_BIAS, PIN_AD_COMPA,  PIN_AD_SCALE, PIN_AD_AUX, PIN_AD_MIX};
const char PIN_BTN[NUM_BTNS] = {PIN_BTN_REC, PIN_BTN_STOP, PIN_BTN_BUS_C, PIN_BTN_BUS_B, PIN_BTN_BUS_A, PIN_BTN_DRYWET, PIN_BTN_INVERT, PIN_BTN_COMPA, PIN_BTN_EDGES };


#define LOOP_STATE_EMPTY    0
#define LOOP_STATE_REC      1
#define LOOP_STATE_DUB      2
#define LOOP_STATE_PLAY     3
#define LOOP_STATE_STOPPED  4

#define ERROR_NONE          0
#define ERROR_NO_BEAT       1
#define ERROR_NO_SYNC       2


#define I2C_CALL_START          0xF0
#define I2C_CALL_STOP           0xF1
#define I2C_CALL_STORE          0xB0
#define I2C_CALL_RECALL         0xB1
#define I2C_CALL_BRIGHTNESS     0xB2


Timer t;
CRGB		pixels[NUM_PIXELS];
char        loop_state;
char        pfl_state;
char        inverter_on;
char        compa_on;
char        edges_on;
char        bus_a_on,bus_b_on,bus_c_on;

int         pot_value [NUM_POTS];
int         out_value [NUM_POTS];

int         rec_buffer[NUM_POTS][MAX_REC_SLOTS];
int         rec_idx, playback_idx;
int         rec_length = MAX_REC_SLOTS;

int         beat_frame_counter = 0;
int         frames_per_beat = 0;
int         beat_play_idx = 0;
int         loop_beat_count = 0;
int         rec_start_pending_for_frame = -1;
int         rec_end_pending_for_frame = -1;
int         rec_start_value [NUM_POTS];
int         rec_enabled [NUM_POTS];

int         error = ERROR_NONE;

byte            i2c_address;
volatile byte   i2c_new_bytes;
volatile byte   i2c_buf[32];

volatile int    v_sync_interrupt_flag;
volatile int    beat_interrupt_flag;


//----------------------------------------------------------------------------------------
//																				AD

void check_ad(void *context) {
    int temp;
    for (int i = 0; i < NUM_POTS; i++) {
        temp = analogRead(PIN_POT[i]);
        if (i == 4) temp = 1023 - temp;
        pot_value[i] = (3 * pot_value[i] + temp) / 4;
    }
    
    if (digitalRead(PIN_ODDEVEN)) {                 // only on 1 field
        beat_frame_counter++;
    
        for (int i = 0; i < NUM_POTS; i++) {
            if (loop_state != LOOP_STATE_PLAY) {
                if (abs(rec_start_value[i]- pot_value[i]) > REC_THRESH) {
                    rec_enabled[i] = 1;
                }
            }
        
            // default to thru out
            out_value[i] = pot_value[i];

            if (loop_state == LOOP_STATE_PLAY) {
                if (rec_buffer[i][playback_idx] >= 0) {
                    out_value[i] = rec_buffer[i][playback_idx];     // when playing, only output if values are recorded, otherwise thru out
                } 
            }

            if (loop_state == LOOP_STATE_DUB) { // when overdubbing, play back recorded values, unless pot is moved
                 if (!rec_enabled[i]) {
                    out_value[i] = rec_buffer[i][playback_idx];
                } 
            }


            if (rec_enabled[i]) {
                    rec_buffer[i][rec_idx] = pot_value[i];
            }
        }

        if (rec_idx < MAX_REC_SLOTS - 1 ) {
            rec_idx++;
        }
        if (playback_idx < MAX_REC_SLOTS - 1 ) {
            playback_idx++;
        }
        if (loop_state == LOOP_STATE_DUB) {
            rec_idx = playback_idx;
        }
    }
}

void dac_send(int dac, int channel, int send_val) {
    int dac_pin;
    if (dac == 0) dac_pin = PIN_DAC0_CS; else dac_pin = PIN_DAC1_CS;

    digitalWrite(dac_pin,LOW);
    send_val = send_val << 2;
    send_val &= 1023 << 2;
    send_val |= channel << 12;
    SPI.transfer16(send_val);
    digitalWrite(dac_pin,HIGH);
}

void set_dacs() {
	SPI.beginTransaction(SPISettings(1000000, MSBFIRST, SPI_MODE2));
	
    for (int i = 0; i < 4; i++) 	{
        dac_send(0,i,out_value[i]);
	}

    if (bus_a_on) { dac_send (1, 0, out_value[4]);      } else { dac_send (1, 0, 0); }
    if (bus_b_on) { dac_send (1, 1, out_value[4]);      } else { dac_send (1, 1, 0); }
    if (bus_c_on) { dac_send (1, 2, out_value[4]);      } else { dac_send (1, 2, 0); }
    dac_send(1, 3, out_value[3]);        

    SPI.endTransaction();
}

//---------------------------------------------------------------------------------------------
void power_on_dacs() {
	static int sendval;
	int cs_pin;
	SPI.beginTransaction(SPISettings(1000000, MSBFIRST, SPI_MODE2));

	sendval = 0xf010;	
	
    digitalWrite(PIN_DAC0_CS,LOW);
    delay(1);
    SPI.transfer16(sendval);
    digitalWrite(PIN_DAC0_CS,HIGH);
    digitalWrite(PIN_DAC1_CS,LOW);
    delay(1);
    SPI.transfer16(sendval);
    digitalWrite(PIN_DAC1_CS,HIGH);

	delay(100);
	
    digitalWrite(PIN_DAC0_CS,LOW);
    delay(1);
    SPI.transfer16(sendval);
    digitalWrite(PIN_DAC0_CS,HIGH);
    digitalWrite(PIN_DAC1_CS,LOW);
    delay(1);
    SPI.transfer16(sendval);
    digitalWrite(PIN_DAC1_CS,HIGH);

	SPI.endTransaction();
}

//----------------------------------------------------------------------------------------
//																				PLAY
void play(){
    switch (loop_state) {
        case LOOP_STATE_REC:
          // start playing immediately if we're a bit late
            if (beat_frame_counter < frames_per_beat / 2) {
                playback_idx = beat_frame_counter;
                beat_play_idx = 0;
                loop_state = LOOP_STATE_PLAY;
            } else {
                rec_end_pending_for_frame = beat_frame_counter;
            }
            break;
            
        case LOOP_STATE_DUB:
            loop_state = LOOP_STATE_PLAY;
            for (int i = 0; i < NUM_POTS; i++) {
                rec_enabled[i] = 0;
            }
            break;
            
        case LOOP_STATE_STOPPED:
            playback_idx = beat_frame_counter;
            beat_play_idx = 0;
            loop_state = LOOP_STATE_PLAY;
            break;
            
        default:
            break;
    }
}
//----------------------------------------------------------------------------------------
//																				REC
void record() {
    rec_start_pending_for_frame = beat_frame_counter;
}
//----------------------------------------------------------------------------------------
//																				DUB
void overdub() {
    switch (loop_state) {
        case LOOP_STATE_PLAY:
            loop_state = LOOP_STATE_DUB;
            for (int i = 0; i < NUM_POTS; i++) {
                rec_start_value[i] = pot_value[i];
                rec_enabled[i] = 0;
            }
            break;
        
        default:
            break;
        
    }
}
//----------------------------------------------------------------------------------------
//																				STOP
void stop() {
    loop_state = LOOP_STATE_STOPPED;
}
//----------------------------------------------------------------------------------------
//																				CLEAR
void clear_buffer() {
    for (int p = 0; p< NUM_POTS; p++){
         for (int i = 0; i < MAX_REC_SLOTS; i++) {
            rec_buffer[p][i] = -1;
        }
    }
    loop_state = LOOP_STATE_EMPTY;
}

//---------------------------------------------------------------------------------------------
void v_sync_interrupt() {
    v_sync_interrupt_flag++;
}

void check_sync(){
    static int field;
    static long last_vsync;
    long vsync_timestamp;
    
    if (v_sync_interrupt_flag) {
        v_sync_interrupt_flag--;
        vsync_timestamp = millis();
        if (vsync_timestamp - last_vsync > 15) { // something is wrong otherwise, fields are 20ms
            field++;
            field %= 2;
        
            if (field) {
                FastLED.show();
            } else {
                set_dacs();
                check_btns();
                update_leds();
            }
        }    
        t.after(4,check_ad, (void*)0);
        last_vsync = vsync_timestamp;
    } else {
        if (millis() - last_vsync > 30) {  // we've lost sync
            error = ERROR_NO_SYNC;
 	        fill_solid(pixels, NUM_PIXELS, CRGB::Red);     
            FastLED.show(); 
        }
    }
}

//---------------------------------------------------------------------------------------------
void beat_interrupt() {
    beat_interrupt_flag++;
}

//----------------------------------------------------------------------------------------
//																				BEAT     
void beat(){
    frames_per_beat = beat_frame_counter;
    beat_frame_counter = 0;

    // not recording yet, but store one beat length in case we'll start recording before next beat
    if (loop_state == LOOP_STATE_EMPTY) {
        rec_idx = 0;
        for (int i = 0; i < NUM_POTS; i++) {
            rec_start_value[i] = pot_value[i];
            rec_enabled[i] = 0;
        }
    }
    
    if (loop_state == LOOP_STATE_REC) {
        loop_beat_count++;
    }
    
    if (loop_state == LOOP_STATE_PLAY || loop_state == LOOP_STATE_DUB ) {
        beat_play_idx++;
        if (beat_play_idx >= loop_beat_count) {
            beat_play_idx = 0;
            playback_idx = 0;
        }
    }
    
    if (rec_start_pending_for_frame >= 0) {
        loop_state = LOOP_STATE_REC;
        
        if (rec_start_pending_for_frame > frames_per_beat / 2) { 
                                                    // start recording on this beat
            rec_idx = 0;
            loop_beat_count = 0;
        } else {                                    // keep recording for first beat
            loop_beat_count = 1;
        }

        rec_start_pending_for_frame = -1;
    }
    
    if (rec_end_pending_for_frame >= 0) {
        playback_idx = 0;
        beat_play_idx = 0;
        rec_end_pending_for_frame = -1;
        loop_state = LOOP_STATE_PLAY;
    }
}

void check_beat() {    
    static long last_beat;
    long beat_timestamp;
    
    if (!beat_interrupt_flag) { return;}
    beat_timestamp = millis();
    beat_interrupt_flag--;

    //keep between approx 60 - 250 bpm
    if (beat_timestamp - last_beat < 1000 &&  beat_timestamp - last_beat > 200) {
        if (error == ERROR_NO_BEAT) error = ERROR_NONE;
        beat();
    } else {
        error = ERROR_NO_BEAT;
    }
    
    last_beat = beat_timestamp;
}


//----------------------------------------------------------------------------------------
//																				REC-BTN

void handle_rec_click() {
    switch (loop_state) { 
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

void handle_stop_click() {
    switch (loop_state) { 
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

//----------------------------------------------------------------------------------------
//																				LEDS

void update_leds(){
    fill_solid(pixels, NUM_PIXELS, CRGB::Black);
    
    switch(error) {
        case ERROR_NO_BEAT:
            pixels[0] = CRGB::Navy;
            pixels[1] = CRGB::Navy;
            break;
            
        default:
            switch (loop_state) { 
                case LOOP_STATE_EMPTY:
                    break;
                 case LOOP_STATE_REC:
                    pixels[0] = CRGB::Red;
                    pixels[1] = CRGB::Red;
                    break;
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
    
    if (bus_c_on) {pixels[2] = CRGB::Yellow;}
    if (bus_b_on) {pixels[3] = CRGB::Green;}
    if (bus_a_on) {pixels[4] = CRGB::Red;}

    if (pfl_state) {pixels[5] = CRGB::Yellow;}
    if (inverter_on) {pixels[6] = CRGB::Yellow;}
    if (compa_on) {pixels[7] = CRGB::Yellow;}
    if (edges_on) {pixels[8] = CRGB::Yellow;}

    digitalWrite(PIN_INVERT_OUT, inverter_on);
    digitalWrite(PIN_COMPA_OUT, compa_on);
    digitalWrite(PIN_EDGES_OUT, edges_on);
    digitalWrite(PIN_PREVIEW_OUT, ~pfl_state);
}

//----------------------------------------------------------------------------------------
//																				BUTTONS

void check_btns() {
    char state;
    static char old_state[NUM_BTNS];
    
    char leds_changed = 0;
 	for (int i = 0; i < NUM_BTNS; i++) {
 	    state = digitalRead(PIN_BTN[i]);
 	    
 	    if (state != old_state[i]) {
     	    leds_changed = 1;
 	        old_state[i] = state;
 	        if (!state) {
 	            switch (i) {
 	               case 0:
 	                    handle_rec_click();
 	                    break;
     	           case 1:
     	                handle_stop_click();
     	                break;
     	           case 2:
     	                bus_c_on = ~bus_c_on;
                        EEPROM.write(EEPROM_BUS_C, bus_c_on);
     	                break;
     	           case 3:
     	                bus_b_on = ~bus_b_on;
                        EEPROM.write(EEPROM_BUS_B, bus_b_on);
     	                break;
     	           case 4:
     	                bus_a_on = ~bus_a_on;
                        EEPROM.write(EEPROM_BUS_A, bus_c_on);
     	                break;                    
                    case 5:
     	                pfl_state = ~pfl_state;
                        EEPROM.write(EEPROM_PFL, pfl_state);
                        break;
                    case 6:
     	                inverter_on = ~inverter_on;
                        EEPROM.write(EEPROM_INVERT, inverter_on);
                        break;
                    case 7:
     	                compa_on = ~compa_on;
                        EEPROM.write(EEPROM_COMPA, compa_on);
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
    
    if (leds_changed) update_leds();
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


void receiveEvent (int howMany){
  for (byte i = 0; i < howMany; i++) {
        i2c_buf[i] = Wire.read ();
    }
    i2c_new_bytes =  howMany;
}

void requestEvent ()
  {
      byte buf [6] = { 9, 12, 13, 14,31,44 };
      Wire.write (buf, sizeof buf);
  } 
  
//----------------------------------------------------------------------------------------

void check_i2c(){
 //   if (i2c_new_bytes)  Serial.printf("Received %ld bytes\n", i2c_new_bytes);
    if (i2c_new_bytes == 1) {
        switch (i2c_buf[0]) {
            case I2C_CALL_START:
                Serial.println("Received: START");
                break;
            case I2C_CALL_STOP:
                Serial.println("Received: STOP");
                break;
            default:
                Serial.print("Strange Call Received: ");
                Serial.println(i2c_buf[0], HEX);
                break;
        }
        Serial.println();
    }
    if (i2c_new_bytes == 2) {
        switch (i2c_buf[0]) {
            case I2C_CALL_STORE:
                Serial.print("Received: STORE ");
                Serial.println(i2c_buf[1], DEC);
                break;
            case I2C_CALL_RECALL:
                Serial.print("Received: RECALL ");
                Serial.println(i2c_buf[1], DEC);
                break;
            case I2C_CALL_BRIGHTNESS:
                FastLED.setBrightness(i2c_buf[1]);
                FastLED.show();
            default:
                Serial.print("Strange Call Received: ");
                Serial.println(i2c_buf[0], HEX);
                break;
        }
        Serial.println();
    }
    if (i2c_new_bytes == 6) {
        Serial.print("Received data: ");
        for (int i=0; i<6; i++) {
            Serial.print(i2c_buf[i], DEC);
            Serial.print(" ");
        }
        Serial.println();
        Serial.println();
    }
    i2c_new_bytes = 0;
}

//========================================================================================
//----------------------------------------------------------------------------------------
//																				SETUP

void setup() {
    FastLED.addLeds<SK6812, PIN_PIXELS, GRB>(pixels, NUM_PIXELS);
    FastLED.setBrightness(20);

    for (int hue = 0; hue < 360; hue++) {
    	fill_rainbow( pixels, NUM_PIXELS, hue, 7);
	    delay(3);
    	FastLED.show(); 
  	}
  	
  	for (int i = 0; i < NUM_BTNS; i++) {
  	    pinMode(PIN_BTN[i], INPUT_PULLUP);
  	}
  	
  	SPI.begin();

  	pinMode(PIN_DAC0_CS,OUTPUT);
  	pinMode(PIN_DAC1_CS,OUTPUT);
  	pinMode(PIN_INVERT_OUT, OUTPUT);
    pinMode(PIN_COMPA_OUT, OUTPUT);
    pinMode(PIN_EDGES_OUT, OUTPUT);
    pinMode(PIN_PREVIEW_OUT, OUTPUT);

	power_on_dacs();
  	
  	fill_solid(pixels, NUM_PIXELS, CRGB::Red);      // Stays red if we dont have genlock
    FastLED.show(); 
    
    bus_c_on    = EEPROM.read(EEPROM_BUS_C);
    bus_b_on    = EEPROM.read(EEPROM_BUS_B);
    bus_a_on    = EEPROM.read(EEPROM_BUS_A);           
    pfl_state   = EEPROM.read(EEPROM_PFL);
    inverter_on = EEPROM.read(EEPROM_INVERT);
    compa_on    = EEPROM.read(EEPROM_COMPA);
    edges_on    = EEPROM.read(EEPROM_EDGES);
    i2c_address = EEPROM.read(EEPROM_I2C_ADDRESS);
    
    Wire.begin ();
    
    TWAR = (i2c_address << 1) | 1;  // enable broadcasts to be received
    Wire.onReceive (receiveEvent); 
    Wire.onRequest (requestEvent); 

    attachInterrupt(digitalPinToInterrupt(PIN_VSYNC), v_sync_interrupt, FALLING);
    attachInterrupt(digitalPinToInterrupt(PIN_BEAT), beat_interrupt, RISING);
}

//========================================================================================
//----------------------------------------------------------------------------------------
//																				LOOP

void loop() {
    t.update();
    check_sync();
    check_beat();
    check_i2c();
}