//----------------------------------------------------------------------------------------
//
//	vm013  Levelmeter Firmware		
//						
//		Target MCU: ATTINY85
//		Copyright:	2020 Michael Egger, me@anyma.ch
//		License: 	This is FREE software (as in free speech, not necessarily free beer)
//					published under gnu GPL v.3
//
//----------------------------------------------------------------------------------------

#include "FastLED.h"
#include <Timer.h>
#define PIN_PIXELS     0
#define PIN_VSYNC      2

#define NUM_PIXELS      2


Timer t;
CRGB		pixels[NUM_PIXELS];
float volts_pos,volts_neg;
volatile int    v_sync_interrupt_flag;


void update_leds () {
	float power;
  	fill_solid(pixels, NUM_PIXELS, CRGB::Black);      // Stays red if we dont have genlock

	if (volts_pos < 0.7) {
		power = volts_pos / 0.7;
		power = sqrt(power);
		power *= 255.;
		pixels[1].green = power;
	} else if (volts_pos < 1.4) {
		power = (volts_pos-0.7) / 0.7;
		power = sqrt(power);
		power *= 255.;
		pixels[1].green = 255;
		pixels[1].red = power;
	} else {
		pixels[1].red = 255;
	}
	
	if (volts_neg < 0.7) {
		power = sqrt(volts_neg / 0.7);
		power *= 255.;
		pixels[0].blue = power;
	} else if (volts_neg < 1.4) {
		power = sqrt((volts_neg-0.7) / 0.7);
		power *= 255.;
		pixels[0].red = power;
		pixels[0].blue = 255;
	} else {
		pixels[0].red = 255;
	}
	
	volts_pos = 0.;
	volts_neg = 0.;

    FastLED.show(); 
}


//---------------------------------------------------------------------------------------------
void v_sync_interrupt() {
    v_sync_interrupt_flag++;
}

//---------------------------------------------------------------------------------------------


void check_sync(){
    static int field;
    static long last_vsync;
    long vsync_timestamp;
    
    if (v_sync_interrupt_flag) {
        v_sync_interrupt_flag--;
        vsync_timestamp = millis();
        if (vsync_timestamp - last_vsync > 15) { // something is wrong otherwise, fields are 20ms
            update_leds();
        }    
        last_vsync = vsync_timestamp;
    } else {
        if (millis() - last_vsync > 30) {  // we've lost sync
 	        fill_solid(pixels, NUM_PIXELS, CRGB::Red);     
            FastLED.show(); 
        }
    }
}

//---------------------------------------------------------------------------------------------


//========================================================================================
//----------------------------------------------------------------------------------------
//																				SETUP

void setup() {
    FastLED.addLeds<SK6812, PIN_PIXELS, GRB>(pixels, NUM_PIXELS);
    FastLED.setBrightness(50);

    for (int hue = 0; hue < 360; hue++) {
    	fill_rainbow( pixels, NUM_PIXELS, hue, 7);
	    delay(3);
    	FastLED.show(); 
  	}
  	
    fill_solid(pixels, NUM_PIXELS, CRGB::Red);      // Stays red if we dont have genlock
    FastLED.show(); 

    attachInterrupt(digitalPinToInterrupt(PIN_VSYNC), v_sync_interrupt, FALLING);

//  	t.every(50,update);

}

//========================================================================================
//----------------------------------------------------------------------------------------
//																				LOOP

void loop() {
	float temp = analogRead(A2);
	temp = temp / 205.;
	if (temp > volts_pos) volts_pos = temp;
	temp = analogRead(A3);
	temp = temp / 205.;
	if (temp > volts_neg) volts_neg = temp;
    check_sync();
}