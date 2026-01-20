/*
  KnoxMakers Badge Test Functions
  Test Code By Ray Crampton
  22-Mar-2019

  This code works with the Microchip 24XX04B
  Note that this IC doesn't use the solder bridge jumpers on the PCB
  It didn't need the I2C pull-up resistors
  The data sheet says that R5 does need to be in place. A 10k resistor would be fine,
  the value isn't critical.

  Note that the Arduino has a 1k on-chip EEPROM as well so this additional EEPROM IC is
  only needed in case additional memory is required.

  When run, the Serial monitos should report the following:

  Writing to EEPROM:
  Address, data, bytes written
  0,0,0
  1,4,0
  2,8,0
  3,12,0
  4,16,0
  5,20,0
  6,24,0
  7,28,0
  
  Reading from EEPROM:
  Address, data
  0,0
  1,4
  2,8
  3,12
  4,16
  5,20
  6,24
  7,28

*/

#include<Wire.h>

// address of EEPROM IC
// Check the data sheet for your IC
// If you bridged any of the solder jumpers on the PCB, next to the EEPROM IC, they might affect the address
const int EEPROM_IC_ADDRESS = 0x50;

// This functions is run one time each time the Arduino is powered up
void setup()
{
  // Start serial port comms so we can report results to the Arduino IDE serial monitor
  Serial.begin(115200);

  // Initialize the I2C bus
  Wire.begin();
}

// This function is run repeatedly forever after setup() completes
void loop()
{
  Serial.println("Writing to EEPROM:");
  Serial.println("Address, data, bytes written");

  // iterate through EEPROM memory addresses 0 through 7
  for (byte memoryAddress = 0 ; memoryAddress < 8 ; memoryAddress++) {

    // make up fake data
    byte data = 4 * memoryAddress;
    
    // write data to eeprom
    byte status = writeEEPROM(EEPROM_IC_ADDRESS, memoryAddress, data);

    // report to serial port
    Serial.print(memoryAddress, DEC);
    Serial.print(",");
    Serial.print(data, DEC);
    Serial.print(",");
    Serial.println(status, DEC);
  }

  Serial.println("\nReading from EEPROM:");
  Serial.println("Address, data");

  // iterate through EEPROM addresses 0 through 7
  for (uint8_t memoryAddress = 0 ; memoryAddress < 8 ; memoryAddress++) {

    // read data from specified address
    uint8_t data = readEEPROM(EEPROM_IC_ADDRESS, memoryAddress);

    // report to serial port
    Serial.print(memoryAddress, DEC);
    Serial.print(",");
    Serial.println(data, DEC);
  }

  // pause forever
  while (true) {}
}

/*
 * Writes one byte of data to the EEPROM
 * 
 * deviceAddress: the I2C address of the EEPROM IC
 * memoryAddress: the address in the memory of the EEPROM in which to store data
 * data: the byte of data to be written
 * 
 * return value: the status of Wire.endTransmission(true). See Arduino documentation for more information
 * 
 * Note that this only writes to the lower block of the 24XX04B. To write to the upper block
 * requires adding 1 to the deviceAddress being written
 */
uint8_t writeEEPROM(uint8_t deviceAddress, uint8_t memoryAddress, uint8_t data )
{
  // we'll be sending the address of the eeprom IC so it knows to respond to what we send
  Wire.beginTransmission(deviceAddress);
  Wire.write(memoryAddress);
  Wire.write(data);
  uint8_t status = Wire.endTransmission(true);

  delay(5);

  return status;
}

/*
 * Reads one byte of data from the EEPROM
 * 
 * deviceaddress: the I2C address of the EEPROM IC
 * memoryAddress: the address in the memory of the EEPROM in which to store data
 * 
 * return value: the byte read from the EEPROM
 * 
*/
uint8_t readEEPROM(uint8_t deviceAddress, uint8_t memoryAddress )
{
  uint8_t rdata = 0xFF;

  Wire.beginTransmission(deviceAddress);
  Wire.write(memoryAddress);
  Wire.endTransmission(true);

  Wire.requestFrom(deviceAddress, (uint8_t) 1);

  if (Wire.available()) rdata = Wire.read();

  return rdata;
}
