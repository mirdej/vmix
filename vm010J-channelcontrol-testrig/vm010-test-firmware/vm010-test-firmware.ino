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

#include <Timer.h>
#include <SPI.h>
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

const char PIN_POT[NUM_POTS] = {PIN_AD_COMPA, PIN_AD_SCALE, PIN_AD_BIAS, PIN_AD_AUX, PIN_AD_MIX};
const char PIN_BTN[NUM_BTNS] = {PIN_BTN_REC, PIN_BTN_STOP, PIN_BTN_BUS_C, PIN_BTN_BUS_B, PIN_BTN_BUS_A, PIN_BTN_DRYWET, PIN_BTN_INVERT, PIN_BTN_COMPA, PIN_BTN_EDGES };

Timer t;
CRGB		pixels[NUM_PIXELS];

int         pot_value [NUM_POTS];
int         out_value [NUM_POTS];

//----------------------------------------------------------------------------------------
//																				AD

void check_ad(void *context) {
    Serial.print("Pots: ");
    for (int i = 0; i < NUM_POTS; i++) {
        pot_value[i] = (3 * pot_value[i] + analogRead(PIN_POT[i])) / 4;
        Serial.print(pot_value[i);
        Serial.print(" ");
    }
    Serial.println();
}


void set_dac() {
    int sendval;
    static int testval;
    
    testval ++;
    testval %= 1024;

	SPI.beginTransaction(SPISettings(1000000, MSBFIRST, SPI_MODE2));
    for (int i = 0; i < 4; i++) 	{
        digitalWrite(PIN_DAC0_CS,LOW);
        if (i % 2) {
            sendval = testval << 2;
        } else {
            sendval = (1023 - testval) << 2;
        }
        sendval &= 1023 << 2;
        sendval |= i << 12;

        SPI.transfer16(sendval);
        digitalWrite(PIN_DAC0_CS,HIGH);
	}

  for (int i = 0; i < 4; i++) 	{
        digitalWrite(PIN_DAC1_CS,LOW);
       if (i % 2) {
            sendval = testval << 2;
        } else {
            sendval = (1023 - testval) << 2;
        }
        sendval &= 1023 << 2;
        sendval |= i << 12;

        SPI.transfer16(sendval);
        digitalWrite(PIN_DAC1_CS,HIGH);
	}
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
//																				BUTTONS

void check_btns(void *context) {
    char state;
    static char old_state[NUM_BTNS];
    
    char leds_changed = 0;
 	for (int i = 0; i < NUM_BTNS; i++) {
 	    state = digitalRead(PIN_BTN[i]);
 	    
 	    if (state != old_state[i]) {
 	        old_state[i] = state;
 	        if (!state) {
                Serial.printf("Button %d state: %d\n",i,state);
                }
            }
        }
    }
}


//========================================================================================
//----------------------------------------------------------------------------------------
//																				SETUP

void setup() {
    Serial.begin(115200);
    Serial.println("------------------");
    Serial.println("BEGIN VM010 TEST");
    Serial.println(("------------------");
    
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

  	pinMode(PIN_DAC0_CS,OUTPUT);
  	pinMode(PIN_DAC1_CS,OUTPUT);
  	pinMode(PIN_INVERT_OUT, OUTPUT);
    pinMode(PIN_COMPA_OUT, OUTPUT);
    pinMode(PIN_EDGES_OUT, OUTPUT);
    pinMode(PIN_PREVIEW_OUT, OUTPUT);

	power_on_dacs();
    Serial.println("DACs ON");

  	fill_solid(pixels, NUM_PIXELS, CRGB::Green);      // Stays red if we dont have genlock
    FastLED.show();
    t.every(200, check_ad,(void*)0));
    t.every(20, check_btns,(void*)0));
}

//========================================================================================
//----------------------------------------------------------------------------------------
//																				LOOP

void loop() {
    t.update();
}