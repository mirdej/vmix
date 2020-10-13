//----------------------------------------------------------------------------------------
//
//	vm010  Firmware		
//						
//		Target MCU: ATMEGA88
//		Copyright:	2020 Michael Egger, me@anyma.ch
//		License: 	This is FREE software (as in free speech, not necessarily free beer)
//					published under gnu GPL v.3
//

// add || defined(__AVR_ATmega88__) to line 198 of fasled/platforms/avr/fastpin_avr.h

// ATTENTION the MAX5741 needs analog supply +5V which is seperate from VCC
// As it is connected to SPI programming the Atmega88 will fail if the MAX is not powered.



//----------------------------------------------------------------------------------------
#include <Timer.h>
#include <SPI.h>

#include "FastLED.h"


const char	NUM_PIXELS				= 9;
const char	NUM_BTNS				= 2;
const char  NUM_POTS                = 5;

#define PIN_PIXELS      7
#define PIN_EDGES       8
#define PIN_COMPA       9
#define PIN_INVERT    17

#define PIN_PREVIEW     10
#define PIN_DAC0_CS     0
#define PIN_DAC1_CS     1
#define PIN_BTN_LATCH   4
#define PIN_SCK 13
#define PIN_MISO 12
#define PIN_MOSI 11

const char PIN_POT[] = {A6, A7, A0, A1, A2};
const char PIN_BTN[NUM_BTNS] = {5,6};



#define LOOP_STATE_EMPTY 0
#define LOOP_STATE_REC  1
#define LOOP_STATE_DUB  2
#define LOOP_STATE_PLAY     3
#define LOOP_STATE_STOPPED 4


Timer t;
CRGB		pixels[NUM_PIXELS];
char        old_state[NUM_BTNS];
char        loop_state;
char        pfl_state;
char        inverter_on;
char        compa_on;
char        edges_on;
char        bus_a_on,bus_b_on,bus_c_on;

int         pot_values[NUM_POTS];

//----------------------------------------------------------------------------------------
//																				REC

void handle_rec_click() {
    switch (loop_state) { 
        case LOOP_STATE_EMPTY:
            loop_state = LOOP_STATE_REC;
            break;
         case LOOP_STATE_REC:
            loop_state = LOOP_STATE_PLAY;
            break;
         case LOOP_STATE_PLAY:
            loop_state = LOOP_STATE_DUB;
            break;
         case LOOP_STATE_DUB:
            loop_state = LOOP_STATE_PLAY;
            break;      
         case LOOP_STATE_STOPPED:
            loop_state = LOOP_STATE_PLAY;
            break;      
    }
}

//----------------------------------------------------------------------------------------
//																				STOP

void handle_stop_click() {
    switch (loop_state) { 
        case LOOP_STATE_EMPTY:
            loop_state = LOOP_STATE_EMPTY;
            break;
         case LOOP_STATE_REC:
            loop_state = LOOP_STATE_EMPTY;
            break;
         case LOOP_STATE_PLAY:
            loop_state = LOOP_STATE_STOPPED;
            break;
         case LOOP_STATE_DUB:
            loop_state = LOOP_STATE_STOPPED;
            break;
         case LOOP_STATE_STOPPED:
            loop_state = LOOP_STATE_EMPTY;
            break;      
    }
}

//----------------------------------------------------------------------------------------
//																				LEDS

void update_leds(){
  	fill_solid(pixels, NUM_PIXELS, CRGB::Black);
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

    if (bus_c_on) {pixels[2] = CRGB::Yellow;}
    if (bus_b_on) {pixels[3] = CRGB::Green;}
    if (bus_a_on) {pixels[4] = CRGB::Red;}
    
    if (pfl_state) {pixels[5] = CRGB::Yellow;}
    if (inverter_on) {pixels[6] = CRGB::Yellow;}
    if (compa_on) {pixels[7] = CRGB::Yellow;}
    if (edges_on) {pixels[8] = CRGB::Yellow;}
    
    digitalWrite(PIN_INVERT, inverter_on);
    digitalWrite(PIN_COMPA, compa_on);
    digitalWrite(PIN_EDGES, edges_on);
    FastLED.show(); 
}

//----------------------------------------------------------------------------------------
//																				BUTTONS

void check_btns() {
    char state;
    static char old_buttons;
    char buttons_raw;
    
    char leds_changed = 0;
 	for (int i = 0; i < NUM_BTNS; i++) {
 	    state = digitalRead(PIN_BTN[i]);
 	    
 	    if (state != old_state[i]) {
 	        old_state[i] = state;
 	        if (!state) {
 	            switch (i) {
 	               case 0:
 	                    handle_rec_click();
 	                    break;
     	           case 1:
     	                handle_stop_click();
     	                break;
     	        }
     	       leds_changed = 1;
            }
        }
     }   
        
    SPI.beginTransaction(SPISettings(80000, MSBFIRST, SPI_MODE1));
    digitalWrite(PIN_BTN_LATCH,LOW);
    delay(1);
    digitalWrite(PIN_BTN_LATCH,HIGH);
    buttons_raw = SPI.transfer(0x00);
    SPI.endTransaction();

    for (int i = 0; i < 8; i++) {
        if (~buttons_raw & (1 << i)) {
            if (old_buttons & (i << i)) {
                leds_changed = 1;
                char bit = i -1 ;
                switch (bit) {
                    case 0:
     	                pfl_state = ~pfl_state;
                        break;
                    case 1:
     	                inverter_on = ~inverter_on;
                        break;
                    case 2:
     	                compa_on = ~compa_on;
     	                break;
     	           case 3:
     	                edges_on = ~edges_on;
     	                break;
     	           case 4:
     	                bus_c_on = ~bus_c_on;
     	                break;
     	           case 5:
     	                bus_b_on = ~bus_b_on;
     	                break;
     	           case 6:
     	                bus_a_on = ~bus_a_on;
     	                break;
     	           default:
     	                break;
                }
            }
        }
    }
    
    old_buttons = buttons_raw; 	            
    if (leds_changed) update_leds();
}


//----------------------------------------------------------------------------------------
//																				AD

void check_ad() {
    for (int i = 0; i < NUM_POTS; i++) {
        pot_values[i] = (3 * pot_values[i] + analogRead(PIN_POT[i])) / 4;
    }
    set_dac();
}


void set_dac() {
    int sendval;

	SPI.beginTransaction(SPISettings(1000000, MSBFIRST, SPI_MODE2));
    for (int i = 0; i < 4; i++) 	{
        digitalWrite(PIN_DAC0_CS,LOW);
        if (i < 3) {
            sendval = pot_values[i] << 2;
        } else {
            sendval = (1023 - pot_values[i]) << 2;
        }
        sendval &= 1023 << 2;
        sendval |= i << 12;

        SPI.transfer16(sendval);
        digitalWrite(PIN_DAC0_CS,HIGH);
	}
    SPI.endTransaction();
}

//---------------------------------------------------------------------------------------------
void power_on_dacs() {
	static int sendval;
	int cs_pin;
	SPI.beginTransaction(SPISettings(1000000, MSBFIRST, SPI_MODE2));

	sendval = 0xf010;	
	
	for (cs_pin=0; cs_pin < 2 ; cs_pin++) {
		digitalWrite(cs_pin,LOW);
		delay(1);
		SPI.transfer16(sendval);
		digitalWrite(cs_pin,HIGH);
	} 
	delay(100);
	
	for (cs_pin=0; cs_pin < 2 ; cs_pin++) {
		digitalWrite(cs_pin,LOW);
		delay(1);
		SPI.transfer16(sendval);
		digitalWrite(cs_pin,HIGH);
	}
	SPI.endTransaction();
}

//========================================================================================
//----------------------------------------------------------------------------------------
//																				SETUP

void setup() {
	FastLED.addLeds<SK6812, PIN_PIXELS, GRB>(pixels, NUM_PIXELS);
 //   FastLED.setBrightness(50);

    for (int hue = 0; hue < 360; hue++) {
    	fill_rainbow( pixels, NUM_PIXELS, hue, 7);
	    delay(3);
    	FastLED.show(); 
  	}
  	
  	for (int i = 0; i < NUM_BTNS; i++) {
  	    pinMode(PIN_BTN[i], INPUT_PULLUP);
  	}
  	
  	SPI.begin();

  	pinMode(PIN_BTN_LATCH,OUTPUT);
  	pinMode(PIN_DAC0_CS,OUTPUT);
  	pinMode(PIN_DAC1_CS,OUTPUT);
  	pinMode(PIN_INVERT, OUTPUT);
    pinMode(PIN_COMPA, OUTPUT);
    pinMode(PIN_EDGES, OUTPUT);

	power_on_dacs();
  	
  	fill_solid(pixels, NUM_PIXELS, CRGB::Black);
    FastLED.show(); 
    t.every(5,check_btns);
    t.every(25,check_ad);

}

//========================================================================================
//----------------------------------------------------------------------------------------
//																				LOOP

void loop() {
    t.update();
}