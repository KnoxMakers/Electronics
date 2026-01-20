#include <stdio.h>
#include "pico/stdlib.h"
#include "pico/binary_info.h"
#include "hardware/i2c.h"

float TemperatureRead();

// define which hardware pins are being used
// These must be assigned to SDA/SCL pins defined in the Pico pinout
// static here makes the variabe not visible outside of this file
// const tells the compiler that the variable will never change, allowing code size/speed optimization
static const uint8_t pinSDA = 2;
static const uint8_t pinSCL = 3;

// Define i2c0 or i2c1 depending on which pins are used for pinSDA and pinSCL
static i2c_inst_t *I2C_PORT = i2c1;

// I2C address of IC. This can be changed using the jumpers on the back of the PCB
static const uint8_t I2C_ADDRESS = 0x48;

// setup() is run once each time the Pi pico is powered up
void setup() {
  // Enable serial port communications
  // Wait 5 seconds for chip and terminal to be ready
  Serial.begin(115200);
  delay(5000);

  void SetupI2C();

  // Initialize I2C pins
  gpio_init(pinSDA);
  gpio_set_dir(pinSDA, GPIO_OUT);
  gpio_init(pinSCL);
  gpio_set_dir(pinSCL, GPIO_OUT);

  // Initialize I2C port
  i2c_init(I2C_PORT, 100000); // 100kHz clock rate

  gpio_set_function(pinSDA, GPIO_FUNC_I2C);
  gpio_set_function(pinSCL, GPIO_FUNC_I2C);

  // Make the I2C pins available to picotool
  bi_decl(bi_2pins_with_func(pinSDA, pinSCL, GPIO_FUNC_I2C));

  // check that IC is present on bus
  Serial.print("\nLooking for TMP1075... ");
  bool temperaturePresent = TemperatureDetect(I2C_ADDRESS);
  if (temperaturePresent) {
    Serial.print("found\n");
  }
  else {
    Serial.print("*** ERROR, not found\n");
  }
}

// loop() repeats forever after setup() is complete
void loop() {
  char report[18];
  float temperature = TemperatureRead(I2C_ADDRESS);
  sprintf(report, "%.1fC, %.1fF\n", temperature, (9/5)*temperature + 32);
  Serial.print(report);
  delay(1000);
}

// Reads temperature of sensor at specified i2c address
// Returns -9999 if read is unsuccessful (no device response)
// Returns temperature read from sensor otherwise, in degrees C
float TemperatureRead(uint8_t address)
{
  int retval;
  uint8_t rxdata[2];
  uint8_t txdata = 0x0;
  uint16_t intTemp;

  i2c_write_blocking(I2C_PORT, address, &txdata, 1, false);
  retval = i2c_read_blocking(I2C_PORT, address, rxdata, 2, false);

  if (retval == PICO_ERROR_GENERIC) {
    return -9999;
  }

  intTemp = (rxdata[0] << 8) + rxdata[1];
  intTemp = intTemp >> 4;
  float temperature = intTemp * 0.0625;
  return temperature;
}

// Attempts to read the DEVICE_ID register at 0x0f
// Returns true if read successfully returns 0x7500
// Returns false otherwise
bool TemperatureDetect(uint8_t address)
{
  int retval;
  uint8_t rxdata[2];
  uint8_t txdata = 0x0f;

  i2c_write_blocking(i2c1, address, &txdata, 1, false);
  retval = i2c_read_blocking(i2c1, address, rxdata, 2, false);

  if (retval == PICO_ERROR_GENERIC) {
    return false;
  }

  if ((rxdata[0] == 0x75) && (rxdata[1] == 0x00)) {
    return true;
  }

  return false;
}