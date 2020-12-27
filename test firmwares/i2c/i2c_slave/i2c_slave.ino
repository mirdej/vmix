#include <Wire.h>

#define I2C_CALL_START          0xF0
#define I2C_CALL_STOP           0xF1
#define I2C_CALL_STORE          0xB0
#define I2C_CALL_RECALL         0xB1
#define I2C_CALL_BRIGHTNESS     0xB2


const byte MY_ADDRESS = 2;

volatile char i2c_new_bytes;
volatile char i2c_buf[32];
/*



//----------------------------------------------------------------------------------------

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
    if (i2c_new_bytes)  Serial.printf("Received %ld bytes\n", i2c_new_bytes);
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


void setup () {
    Serial.begin(115800);
    Wire.begin ();
    TWAR = (MY_ADDRESS << 1) | 1;  // enable broadcasts to be received
    Wire.onReceive (receiveEvent); 
    Wire.onRequest (requestEvent); 
}




//========================================================================================
//----------------------------------------------------------------------------------------
//																				loop

void loop () {
    check_i2c();
} 