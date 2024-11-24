#ifndef __MAIN_INCLUDED__
#define __MAIN_INCLUDED__

#include "Arduino.h"

#define DEBUG 1

const int NUM_PIXELS = 9;
const int NUM_BTNS = 9;
const int NUM_POTS = 5;
const int NUM_CHAN = 8;

#define PIN_LED_BUILTIN 0
#define PIN_COMPA_OUT 1
#define PIN_PREVIEW_OUT 2
#define PIN_EDGES_OUT 3
#define PIN_PIXELS 4
#define PIN_MOSI 5
#define PIN_MISO 6
#define PIN_SCK 7

#define PIN_RX 8
#define PIN_TX 9
#define PIN_VSYNC 10
#define PIN_BEAT 11
#define PIN_BTN_EDGES 12
#define PIN_BTN_BUS_C 13
#define PIN_BTN_BUS_B 14
#define PIN_BTN_BUS_A 15

#define PIN_SCL 16
#define PIN_SDA 17
#define PIN_ODDEVEN 18
#define PIN_BTN_COMPA 19
#define PIN_BTN_INVERT 20
#define PIN_BTN_DRYWET 21
#define PIN_BTN_REC 22
#define PIN_BTN_STOP 23

#define PIN_AD_SCALE A0
#define PIN_AD_MIX A1
#define PIN_AD_AUX A2
#define PIN_INVERT_OUT 27
#define PIN_DAC0_CS 28
#define PIN_DAC1_CS 29
#define PIN_AD_COMPA A6
#define PIN_AD_BIAS A7

#define EEPROM_BUS_C 0
#define EEPROM_BUS_B 1
#define EEPROM_BUS_A 2
#define EEPROM_INVERT 3
#define EEPROM_COMPA 4
#define EEPROM_PFL 5
#define EEPROM_EDGES 6
#define EEPROM_I2C_ADDRESS 7


// scalke bias pots are inversed on board as of dec2020
const char PIN_POT[NUM_POTS] = {PIN_AD_BIAS, PIN_AD_COMPA, PIN_AD_SCALE, PIN_AD_AUX, PIN_AD_MIX};
const char PIN_BTN[NUM_BTNS] = {PIN_BTN_REC, PIN_BTN_STOP, PIN_BTN_BUS_C, PIN_BTN_BUS_B, PIN_BTN_BUS_A, PIN_BTN_DRYWET, PIN_BTN_INVERT, PIN_BTN_COMPA, PIN_BTN_EDGES};

#define LOOP_QUANTIZE 24 // quantize loop length to beat
                         // TODO: make this parameter selectable from vm129

#define LOOP_STATE_EMPTY 0
#define LOOP_STATE_REC 1
#define LOOP_STATE_DUB 2
#define LOOP_STATE_PLAY 3
#define LOOP_STATE_STOPPED 4
#define LOOP_STATE_REC_WAITING 5
#define LOOP_STATE_PLAY_WAITING 6

#define ERROR_NONE 0
#define ERROR_NO_BEAT 1
#define ERROR_NO_SYNC 2

#define BUTTON_COLOR CRGB(0, 5, 10)
#define SELECTION_COLOR CRGB::Gray

#define I2C_CALL_REC 0xF0
#define I2C_CALL_PLAY 0xF1
#define I2C_CALL_DUB 0xF2
#define I2C_CALL_STOP 0xF3
#define I2C_CALL_CLEAR 0xF4
#define I2C_CALL_STORE 0xB0
#define I2C_CALL_RECALL 0xB1
#define I2C_CALL_BRIGHTNESS 0xB2
#define I2C_CALL_VOLUME 0xC0

#define BUS_A 6
#define BUS_B 5
#define BUS_C 4
#define BUS_D 3
#define SCALE 2
#define COMPA 1
#define BIAS 0
#endif