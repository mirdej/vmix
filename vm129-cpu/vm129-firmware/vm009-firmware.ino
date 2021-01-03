#define VERSION "2020-11-24"
//----------------------------------------------------------------------------------------
//
//  vMix CPU Firmware
//  Part of the vmix20 analog video mixer by [ a n y m a ]
//  Based on the Synkie, analog modular video processor, www.synkie.net
//                                          
//          Target MCU: DOIT ESP32 DEVKIT V1
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


#include <Preferences.h>
#include "Timer.h"
#include <Adafruit_GFX.h>
#include <Adafruit_SSD1306.h>
#include <FastLED.h>
#include <ESP32Encoder.h>
#include <MIDI.h>

// Create and bind the MIDI interface to the default hardware Serial port
//MIDI_CREATE_DEFAULT_INSTANCE();
MIDI_CREATE_INSTANCE(HardwareSerial, Serial,     MIDI);

// ..................................................................................... PIN mapping


const int PIN_POT_1             = 36;
const int PIN_POT_2             = 39;
const int PIN_AUDIO             = 34;
const int PIN_ENCODER_PUSH      = 35;
const int PIN_ENCODER_A         = 32;
const int PIN_ENCODER_B         = 33;
const int PIN_TRIGGER_1         = 25;
const int PIN_TRIGGER_2         = 26;
const int PIN_TRIGGER_3         = 02;
const int PIN_BEATSYNC          = 27;
const int PIN_PIXELS            = 13;
//const int PIN_VSYNC             = 16;
//const int PIN_ODDEVEN           = 17;
const int PIN_BTN_LATCH         = 05;
const int PIN_BTN_CLK           = 18;
const int PIN_BTN_DATA          = 19;
const int PIN_SDA               = 21;
const int PIN_RX                = 03;
const int PIN_TX                = 01;
const int PIN_SCL               = 22;
const int PIN_MUX_1             = 04;
const int PIN_MUX_2             = 23;

// ..................................................................................... Constants

const int NUM_PIXELS                = 1;

const int SYNC_MODE_INTERN          = 0;
const int SYNC_MODE_EXTERN_AUDIO    = 1;
const int SYNC_MODE_EXTERN_MIDI     = 2;

const int MENU_NONE			        = 0;


const int 	UI_TIMEOUT = 5000;


// ..................................................................................... SCREEN


#define SCREEN_WIDTH 128 
#define SCREEN_HEIGHT 32 
#define OLED_RESET		 -1
Adafruit_SSD1306 		display(SCREEN_WIDTH, SCREEN_HEIGHT, &Wire, OLED_RESET);


//========================================================================================
//----------------------------------------------------------------------------------------
//																				GLOBALS
Preferences                             preferences;
Timer                                   t;
ESP32Encoder                            encoder;
CRGB                                    pixels[NUM_PIXELS];

int                                     buttons_raw;
int                                     selected_menu;
int                                     sync_mode;
int                                     bpm;
int                                     bpm_displayed;


long                                    last_ui_interaction;
long                                    last_beat;
long                                    last_midi_clock;

volatile int                            interruptCounter;
int                                     tickCounter;
 
const int                               beat_divider = 24;      //MIDI CLOCk Ticks per beat
int                                     beatclock_clocks = beat_divider;         // default output beat on trigger out 1 
int                                     trigger1_clocks = beat_divider;         // default output beat on trigger out 1 
int                                     trigger2_clocks = beat_divider * 4;     // default output bar on trigger out 2 
int                                     trigger3_clocks = beat_divider / 4;     // default output 16ths on trigger out 3
 
 
hw_timer_t *                            beatClockTimer = NULL;
portMUX_TYPE                            beatClockTimerMux = portMUX_INITIALIZER_UNLOCKED;

bool                                    display_needs_update;

int                                     pot[2];
//----------------------------------------------------------------------------------------
//																		Intro
void intro() {
	display.clearDisplay();
	display.setTextSize(1);				
	display.setTextColor(WHITE);
	display.setCursor(26,6);		
	display.println(F("[ a n y m a ]"));
	display.setCursor(24,16);		
	display.setTextSize(2);				
	display.println(F("vMIX-20"));
	display.display();
	delay(1000);

	display.clearDisplay();
	display.setTextSize(1);		
	display.setCursor(40,0);		
	display.println(F("version"));
	display.setCursor(34,12);		
	display.println(F(VERSION));
	display.display();
	delay(1000);
}
//----------------------------------------------------------------------------------------
//																		set all trigger pins to low
void release_triggers() {
    digitalWrite(PIN_BEATSYNC, LOW);
    digitalWrite(PIN_TRIGGER_1, LOW);
    digitalWrite(PIN_TRIGGER_2, LOW);
    digitalWrite(PIN_TRIGGER_3, LOW);
}

//----------------------------------------------------------------------------------------
//																		UI Timeout

void check_ui_timeout() {
	if (millis() - last_ui_interaction > UI_TIMEOUT) {
		selected_menu = 0;
		display_needs_update = true;
	}
	
	if (sync_mode == SYNC_MODE_EXTERN_MIDI){
		if (millis() - last_midi_clock > 1000) {
		    Serial.println("Lost MIDI");
		    sync_mode = SYNC_MODE_INTERN;
            display_needs_update = true;
		    change_bpm();           //restart timer
		}
	}

}

//----------------------------------------------------------------------------------------
//																		Encoder
void check_encoder(){
    encoder.getCount();
    
    encoder.setCount(0);
}

//----------------------------------------------------------------------------------------
//																		Potentiometers
void check_ad() {
    pot[0] = analogRead(PIN_POT1);
    pot[1] = analogRead(PIN_POT2);
}
//----------------------------------------------------------------------------------------
//																		Audio SYNC In
void check_audio_in() {
    static int last_audio_level;
    static long last_audio_trigger;
    static long mean_interval;
    
    if (sync_mode == SYNC_MODE_EXTERN_MIDI) return;
    
    long interval = millis() - last_audio_trigger;
    
    
    int audio_level = analogRead(PIN_AUDIO);
    if (audio_level > pot[0] + 20) {
        if (last_audio_level < pot[0]) {
            
            last_audio_trigger = millis();
            
            mean_interval = (7 * mean_interval + interval) / 8;
            
            // 240bpm max = 60000 / 240 = 250ms
            // 60 bpm min = 1000ms
            if ((mean_interval >= 249) && (mean_interval <= 1000)){
                bpm = 60000 / mean_interval;
                change_bpm();
                sync_mode = SYNC_MODE_EXTERN_AUDIO;
//  ???? interruptCounter = 1;       //force tick
            } else {
                if (sync_mode == SYNC_MODE_EXTERN_AUDIO) {
                    sync_mode = SYNC_MODE_INTERN;
                    display_needs_update = true;
                }
            }
        }
    }
    
    if (interval > 2000) {
        if (sync_mode == SYNC_MODE_EXTERN_AUDIO) {
            sync_mode = SYNC_MODE_INTERN;
            display_needs_update = true;
        }
    }
    last_audio_level = audio;
}


//----------------------------------------------------------------------------------------
//																		MIDI
void check_midi(){
    static int clock_count;
    
    if (MIDI.read()){
        switch(MIDI.getType()){
            case midi::Clock:
                last_midi_clock = millis();
                if (sync_mode != SYNC_MODE_EXTERN_MIDI) {
                    sync_mode = SYNC_MODE_EXTERN_MIDI;
                    display_needs_update = true;
                    
                    timerAlarmDisable(beatClockTimer);
                    interruptCounter = 0;
                    tickCounter = 0;
                }

                interruptCounter++;
                break;

            default:
                break;
        }
    }
}
//----------------------------------------------------------------------------------------
//																		Display
void update_display() {
    if (!display_needs_update) return;
	display.clearDisplay();
	display.setTextSize(1);				
	display.setTextColor(WHITE);
    
    bpm_displayed = bpm;

	switch(selected_menu) {
		case MENU_NONE:
			display.setCursor(0,0);
			if (sync_mode == SYNC_MODE_EXTERN_AUDIO) display.print("EXT SYNC: AUDIO");
			else if (sync_mode == SYNC_MODE_EXTERN_MIDI) display.print("EXT SYNC: MIDI");
			else display.print("INTERNAL SYNC");

			display.setTextSize(2);				
			display.setCursor(0,14);
			display.print(bpm);
			display.print(" bpm");

		    break;
		default:
		    break;
	}
	
	display.drawLine(0,8,128,8,WHITE);
	display.display();
	display_needs_update = false;
}

//----------------------------------------------------------------------------------------
//                                                              MIDI Clock Timer
void check_clock(){
   if (interruptCounter > 0) {
 
        portENTER_CRITICAL(&beatClockTimerMux);
        interruptCounter = 0;
        portEXIT_CRITICAL(&beatClockTimerMux);
 
        tickCounter++;
        
        if (sync_mode == SYNC_MODE_EXTERN_MIDI) {
            if (tickCounter % 24 == 0) {
                long this_beat = millis();
                bpm = 60000 / (this_beat - last_beat);
                last_beat = this_beat;
                if (bpm_displayed != bpm) display_needs_update = true;
            }
        }
        
        MIDI.sendRealTime(midi::Clock);

        if (tickCounter % beatclock_clocks == 0 ) digitalWrite(PIN_BEATSYNC, HIGH);
        if (tickCounter % trigger1_clocks == 0 ) digitalWrite(PIN_TRIGGER_1, HIGH);
        if (tickCounter % trigger2_clocks == 0 ) digitalWrite(PIN_TRIGGER_2, HIGH);
        if (tickCounter % trigger3_clocks == 0 ) digitalWrite(PIN_TRIGGER_3, HIGH);

        t.after(5,release_triggers);
        update_display();           //display update needs a lot of time. do it right after clock tick
                                    // (if necessary) in order to not skew clock timing 
    }
}

void IRAM_ATTR onTimer() {
  portENTER_CRITICAL_ISR(&beatClockTimerMux);
  interruptCounter++;
  portEXIT_CRITICAL_ISR(&beatClockTimerMux);
 
}


void change_bpm(){
    portENTER_CRITICAL(&beatClockTimerMux);
    interruptCounter = 0;
    portEXIT_CRITICAL(&beatClockTimerMux);
    
    timerAlarmWrite(beatClockTimer, 2500000 / bpm , true); // 60 000 000 microseconds / bpm / 24 (clocks per beat)
    timerAlarmEnable(beatClockTimer);
}



//========================================================================================
//----------------------------------------------------------------------------------------
//																				SETUP

void setup(){
    Serial.begin(115200);
    Serial.println("vMIX20 - SETUP start");

	display.begin(SSD1306_SWITCHCAPVCC, 0x3C);
	display.setRotation(2); 
	intro();

//    FastLED.addLeds<NEOPIXEL, PIN_PIXELS>(pixels, NUM_PIXELS);
    pinMode(PIN_ENCODER_A, INPUT_PULLUP);
    pinMode(PIN_ENCODER_B, INPUT_PULLUP);
    pinMode(PIN_TRIGGER_1, OUTPUT);
    pinMode(PIN_TRIGGER_2, OUTPUT);
    pinMode(PIN_TRIGGER_3, OUTPUT);
    pinMode(PIN_BEATSYNC, OUTPUT);
    pinMode(PIN_BTN_LATCH, OUTPUT);
    pinMode(PIN_RX, INPUT_PULLUP);    
    
    encoder.attachHalfQuad(PIN_ENCODER_A, PIN_ENCODER_B);
    
     
    bpm = 113;
    sync_mode = SYNC_MODE_INTERN;
    
    //precision beatClockTimer for generating midi clock signal when not synched externally
    beatClockTimer = timerBegin(2, 80, true);
    timerAttachInterrupt(beatClockTimer, &onTimer, true);

    change_bpm();
    
    MIDI.begin();           // Launch MIDI, by default listening to channel 1.

    t.every(4,check_audio_in);    
 //   t.every(100,check_encoder);
    t.every(20, check_ad);
    t.every(1000, check_ui_timeout);
    
    Serial.println("SETUP done");
}

//========================================================================================
//----------------------------------------------------------------------------------------
//																				loop
 
void loop(){
    t.update();
    check_midi();
    check_clock();
}
