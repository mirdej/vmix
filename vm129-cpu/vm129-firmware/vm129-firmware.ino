#define VERSION "2021-01-15"
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



const int PIN_ENCODER_A         = 36;
const int PIN_ENCODER_B         = 39;

const int PIN_MUX_3             = 32;
const int PIN_MUX_4             = 33;

const int PIN_TRIGGER_3         = 25;
const int PIN_TRIGGER_2         = 26;
const int PIN_TRIGGER_1         = 02;
const int PIN_BEATSYNC          = 27;
const int PIN_PIXELS            = 13;
const int PIN_VSYNC             = 16;
const int PIN_ODDEVEN           = 17;

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

const int NUM_PIXELS                = 24;

const int SYNC_MODE_INTERN          = 0;
const int SYNC_MODE_EXTERN_AUDIO    = 1;
const int SYNC_MODE_EXTERN_MIDI     = 2;

const int MENU_NONE			        = 0;
const int MENU_BRIGHTNESS			= 1;
const int MENU_BPM			        = 2;
const int MENU_TRIGGER_1			= 11;
const int MENU_TRIGGER_2			= 12;
const int MENU_TRIGGER_3			= 13;

const int trigger_clocks[] = {6,12,24,48,96};
char *trigger_strings[] = { "16th", "8th",  "beats","half","bar"};


const int 	UI_TIMEOUT = 5000;

#define NUM_REGISTERS   3
#define SELECTION_COLOR             CRGB::Gray
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


int                                     selected_menu;
int                                     sync_mode;
int                                     bpm;
int                                     bpm_displayed;

int                                     brightness;

long                                    last_ui_interaction;
long                                    last_beat;
long                                    last_midi_clock;

volatile int                            interruptCounter;
int                                     tickCounter;
 
const int                               beat_divider = 24;      //MIDI CLOCk Ticks per beat

int                                     beatclock_clocks = beat_divider;         // default output beat on trigger out 1 
int                                     trigger1_clocks = beat_divider * 4 ;      // default output bar on trigger out 1 
int                                     trigger2_clocks = beat_divider ;        // default output beat on trigger out 2
int                                     trigger3_clocks = beat_divider / 4;     // default output 16ths on trigger out 3
 
 
hw_timer_t *                            beatClockTimer = NULL;
portMUX_TYPE                            beatClockTimerMux = portMUX_INITIALIZER_UNLOCKED;

bool                                    display_needs_update;


long buttons_raw;

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
	for (int hue = 0; hue < 360; hue++) {
    	fill_rainbow( pixels, NUM_PIXELS, hue, 7);
	    delay(3);
    	FastLED.show(); 
  	}

	fill_solid(pixels,NUM_PIXELS,CRGB::Black);
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
    if (encoder.getCount() == 0) return;
    
    
	switch(selected_menu) {
		case MENU_NONE:
		    break;
		case MENU_BRIGHTNESS:
            brightness +=     encoder.getCount();
	    	if (brightness < 5) brightness = 5;
            if (brightness > 255)brightness = 255;
            FastLED.setBrightness(brightness);
            FastLED.show();
            display_needs_update = true;
		    break;
		case MENU_BPM:
            bpm +=     encoder.getCount();
            if (bpm < 60)   bpm = 60;
            if (bpm > 240)  bpm = 240;
            display_needs_update = true;
            change_bpm();
		    break;
		default:
		    break;
	}

    last_ui_interaction = millis();
    encoder.setCount(0);
}

//----------------------------------------------------------------------------------------
//																		Buttons
void check_buttons() {
    static long old_buttons;

    byte temp;
    buttons_raw = 0;
    
    SPI.beginTransaction(SPISettings(80000, LSBFIRST, SPI_MODE2));
    digitalWrite(PIN_BTN_LATCH,LOW);
    delayMicroseconds(100);
    digitalWrite(PIN_BTN_LATCH,HIGH);
    cli();
    for (int i = 0; i < NUM_REGISTERS; i++) {
        temp = ~SPI.transfer(0x00);
        buttons_raw |=  (temp << (i * 8)) ;//((temp << 4) & 0xF0 ) | ((temp >> 4) & 0x0F);
    }
    sei();
    SPI.endTransaction();
    
    if (old_buttons == buttons_raw) return;
    
    
    long triggers =  ~old_buttons & buttons_raw;
    
    for (int i = 0; i < NUM_PIXELS; i++) {
        if (triggers & (1 << i)) {
            switch (i){
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
                default:
                    break;
            }
        }
    }
    
    
    
    last_ui_interaction = millis();
    old_buttons = buttons_raw;
    display_needs_update = true;
    
    
  /*  if (something_happened) {
        byte triggers;
        for (int i = 0; i < NUM_REGISTERS; i++) {
           triggers =  ~old_buttons[i] & buttons_raw[i];
           if (triggers > 0) {
            if (triggers & (1 << bit)){
           }
        }
    }
    
    for (int i = 0; i < NUM_REGISTERS; i++) {
        old_buttons[i] = buttons_raw[i];
    }
*/
    
}

//----------------------------------------------------------------------------------------
//																		Leds

void update_leds() {
	fill_solid(pixels,NUM_PIXELS,CRGB(0,5,10));
	for (int i = 0; i < NUM_PIXELS; i++) {
        if (buttons_raw & (1 << i)) {
	        pixels[i] = CRGB::Yellow;
	    }
	}
	
	switch(selected_menu){
	    case MENU_BRIGHTNESS:
	        pixels[12] = SELECTION_COLOR;
	        break;
	    case MENU_BPM:
	        pixels[13] = SELECTION_COLOR;
	        break;
	    case MENU_TRIGGER_1:
	        pixels[22] = SELECTION_COLOR;
	        break;
	    case MENU_TRIGGER_2:
	        pixels[21] = SELECTION_COLOR;
	        break;
	    case MENU_TRIGGER_3:
	        pixels[20] = SELECTION_COLOR;
	        break;
	}

    if (digitalRead(PIN_TRIGGER_1)) {pixels[22] = CRGB::Blue;}
    if (digitalRead(PIN_TRIGGER_2)) {pixels[21] = CRGB::Blue;}
    if (digitalRead(PIN_TRIGGER_3)) {pixels[20] = CRGB::Blue;}

	FastLED.show(); 
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
		case MENU_BRIGHTNESS:
			display.setCursor(0,0);
	        display.print("BRIGHTNESS");

			display.setTextSize(2);				
			display.setCursor(0,14);
			display.print(brightness);
		    break;
		case MENU_BPM:
			display.setCursor(0,0);
	        display.print("BPM");

			display.setTextSize(2);				
			display.setCursor(0,14);
			display.print(bpm);
		    break;
		case MENU_TRIGGER_1:
			display.setCursor(0,0);
	        display.print("TRIGGER OUT 1");

			display.setTextSize(2);				
			display.setCursor(0,14);
			display.print(trigger1_clocks);
		    break;
		case MENU_TRIGGER_2:
			display.setCursor(0,0);
	        display.print("TRIGGER OUT 2");

			display.setTextSize(2);				
			display.setCursor(0,14);
			display.print(trigger2_clocks);
		    break;
		case MENU_TRIGGER_3:
			display.setCursor(0,0);
	        display.print("TRIGGER OUT 3");

			display.setTextSize(2);				
			display.setCursor(0,14);
			display.print(trigger3_clocks);
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

        t.after(10,release_triggers);
        update_display();           //display update needs a lot of time. do it right after clock tick
                                    // (if necessary) in order to not skew clock timing 
        update_leds();
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

    brightness = 100;

    FastLED.addLeds<NEOPIXEL, PIN_PIXELS>(pixels, NUM_PIXELS);
	FastLED.setBrightness(brightness);
	
	display.begin(SSD1306_SWITCHCAPVCC, 0x3C);
	display.setRotation(0); 
//	intro();


    
    pinMode(PIN_TRIGGER_1, OUTPUT);
    pinMode(PIN_TRIGGER_2, OUTPUT);
    pinMode(PIN_TRIGGER_3, OUTPUT);
    pinMode(PIN_BEATSYNC, OUTPUT);
    pinMode(PIN_BTN_LATCH, OUTPUT);
    pinMode(PIN_RX, INPUT_PULLUP);    
    
    SPI.begin();

    
 //   encoder.attachHalfQuad(PIN_ENCODER_B, PIN_ENCODER_A);
       encoder.attachSingleEdge(PIN_ENCODER_B, PIN_ENCODER_A);
     
    bpm = 113;
    sync_mode = SYNC_MODE_INTERN;
    
    //precision beatClockTimer for generating midi clock signal when not synched externally
    beatClockTimer = timerBegin(2, 80, true);
    timerAttachInterrupt(beatClockTimer, &onTimer, true);

    change_bpm();
    
    MIDI.begin();           // Launch MIDI, by default listening to channel 1.
    
    t.every(100,check_encoder);
    t.every(1000, check_ui_timeout);

    // do this on vertical blanking:
    t.every(20,check_buttons);
   // t.every(20,update_leds);

    
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
