#include <Wire.h>

#define I2C_CALL_START          0xF0
#define I2C_CALL_STOP           0xF1
#define I2C_CALL_STORE          0xB0
#define I2C_CALL_RECALL         0xB1
#define I2C_CALL_BRIGHTNESS     0xB2

const byte SLAVE_ADDRESS = 2;


//----------------------------------------------------------------------------------------

void send_start(){
    Wire.beginTransmission (0);
    Wire.write (I2C_CALL_START);
    if (Wire.endTransmission () == 0) Serial.println("Sent Start");
    else Serial.println("Error Sending Start");
}

//----------------------------------------------------------------------------------------
void send_store(){
    Wire.beginTransmission (0);
    Wire.write (I2C_CALL_STORE);
    Wire.write (8);
    if (Wire.endTransmission () == 0) Serial.println("Sent Store 8");
    else Serial.println("Error Sending Store");
}


//----------------------------------------------------------------------------------------
void send_settings(){
    Wire.beginTransmission (SLAVE_ADDRESS);
    for (int i = 0; i < 6; i++) {
        Wire.write (i+1);
    }
    if (Wire.endTransmission () == 0) Serial.println("Sent Setting");
    else Serial.println("Error Sending Settings");
}


//========================================================================================
//----------------------------------------------------------------------------------------
//																				SETUP
void setup () {
    Serial.begin(115800);
    Wire.begin ();    
//    TWBR = 12;  // 400 kHz (maximum)
}

//========================================================================================
//----------------------------------------------------------------------------------------
//																				loop
void loop () {
    send_start();
    delay(2000);
    send_store();
    delay(2000);
    send_settings();
    delay(2000);
    int bytes_received = (Wire.requestFrom (SLAVE_ADDRESS, 6));
    if (bytes_received == 6)  {
        volatile byte buf [32];

        for (byte i = 0; i < 6; i++) {
          buf [i] = Wire.read ();
        }

        Serial.println("Received:");
        for (byte i = 0; i < 6; i++) {
          Serial.print(buf [i], DEC);
          Serial.print(" ");
        }
        
        
    } else {
        Serial.print("Error on requestFrom, received ");
        Serial.print(bytes_received);
        Serial.print(" Bytes");        
    }
    
} 