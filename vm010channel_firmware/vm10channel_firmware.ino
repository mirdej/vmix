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

//----------------------------------------------------------------------------------------
#include <Timer.h>


#include "FastLED.h"

#define PIN_PIXELS PIN_PD7
#define PIN_EDGES   8
#define PIN_COMPA   9
#define PIN_INVERT  16

#define LOOP_STATE_EMPTY 0
#define LOOP_STATE_REC  1
#define LOOP_STATE_DUB  2
#define LOOP_STATE_PLAY     3
#define LOOP_STATE_STOPPED 4


const char	NUM_PIXELS				= 6;
const char	NUM_BTNS				= 6;

Timer t;
CRGB			pixels[NUM_PIXELS];
const char btn[NUM_BTNS] = {5,6,4,3,0,1};
char old_state[NUM_BTNS];
char loop_state;
char    pfl_state;
char    inverter_on;
char    compa_on;
char    edges_on;



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
    if (pfl_state) {pixels[2] = CRGB::Yellow;}
    if (inverter_on) {pixels[3] = CRGB::Yellow;}
    if (compa_on) {pixels[4] = CRGB::Yellow;}
    if (edges_on) {pixels[5] = CRGB::Yellow;}
    
    digitalWrite(PIN_INVERT, inverter_on);
    digitalWrite(PIN_COMPA, compa_on);
    digitalWrite(PIN_EDGES, edges_on);
    FastLED.show(); 
}

void check_btns() {
    char state;
 	for (int i = 0; i < NUM_BTNS; i++) {
 	    state = digitalRead(btn[i]);
 	    
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
     	           case 2:
     	                pfl_state = ~pfl_state;
     	                break;
     	           case 3:
     	                inverter_on = ~inverter_on;
     	                break;
     	           case 4:
     	                compa_on = ~compa_on;
     	                break;
     	           case 5:
     	                edges_on = ~edges_on;
     	                break;
 	            }
 	            
 	            update_leds();
 	        }
 	    }
  	}
}

void setup() {
	FastLED.addLeds<SK6812, PIN_PIXELS, GRB>(pixels, NUM_PIXELS);
	  FastLED.setBrightness(50);

    for (int hue = 0; hue < 360; hue++) {
    	fill_rainbow( pixels, NUM_PIXELS, hue, 7);
	    delay(3);
    	FastLED.show(); 
  	}
  	
  	for (int i = 0; i < NUM_BTNS; i++) {
  	    pinMode(btn[i], INPUT_PULLUP);
  	}
  	
  	pinMode(PIN_INVERT, OUTPUT);
    pinMode(PIN_COMPA, OUTPUT);
    pinMode(PIN_EDGES, OUTPUT);

  	
  	fill_solid(pixels, NUM_PIXELS, CRGB::Black);
    FastLED.show(); 
    t.every(5,check_btns);

}

void loop() {
    t.update();
}