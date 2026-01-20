/*
  KnoxMakers Badge Test Functions
  Test Code By Ray Crampton
  22-Mar-2019

  This code simply scans the I2C bus to see if it can detect any devices
  Any that are found are reported via the Arduino IDE serial monitor
*/

#include<Wire.h>

// this function is called once each time the Arduino is powered up
void setup() {
  // start the serial monitor
  Serial.begin (115200);

  Serial.println ("Scanning I2C bus...");

  // used to count how many devices were found
  uint8_t deviceCount = 0;

  // initilaize I2C bus
  Wire.begin();
  
  for (uint8_t address = 0; address < 128; address++)
  {
    // start bus transmission to this address
    Wire.beginTransmission (address);

    // end transmission. Any I2C device should provide an acknowledgment
    // signaling it's present
    if (Wire.endTransmission () == 0)
    {

      // report device to serial monitor
      Serial.print ("Foud device at address decimal (hex): ");
      Serial.print (address, DEC);
      Serial.print (" (0x");
      Serial.print (address, HEX);
      Serial.println (")");

      deviceCount++;

      delay (5);  // probably not required
    }
  }

  Serial.println ("Done!\n");
  Serial.print ("Found ");
  Serial.print (deviceCount, DEC);
  Serial.println (" device(s).");
}

// nothing will happen in this loop, the arduino will just hang loose forever
void loop() 
{
}
