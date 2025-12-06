#include <Arduino.h>
#include "hardware/spi.h"
#include "MCP4141.h"

const uint8_t WIPER_VOLATILE = 0x00;
const uint8_t WIPER_NONVOLATILE = 0x02;
const uint8_t TCON = 0x04;
const uint8_t STATUS = 0x05;

// Compares current SPI mode to desired mode
// If they match, return without doing anything
// If they don't match, change the SPI mode
void MCP4141::SetSPIMode() {
  // These are the desired settings (SPI mode 0 (0,0))
  spi_cpol_t cpol = SPI_CPOL_0;
  spi_cpha_t cpha = SPI_CPHA_0;

  // Extract existing SPI settings
  uint32_t cr0 = spi_get_hw(spiPort)->cr0;
  uint32_t cr1 = spi_get_hw(spiPort)->cr1;

  uint numBitsCurrent = ((cr0 & SPI_SSPCR0_DSS_BITS) >> SPI_SSPCR0_DSS_LSB) + 1;
  uint cpolCurrent = (cr0 & SPI_SSPCR0_SPO_BITS) ? 1 : 0;
  uint cphaCurrent = (cr0 & SPI_SSPCR0_SPH_BITS) ? 1 : 0;

  // If existing settings match desired, return. The Pico SDK only supports 8 bits so that's a redundant check
  if ((cpolCurrent == cpol) && (cphaCurrent = cpha) && (numBitsCurrent == 8)) {
    return;
  }

  // Existing settings don't match requested settings, make change
  spi_set_format(
    spiPort,
    8,
    cpol,
    cpha,
    SPI_MSB_FIRST);
}

// Class constructor
// Power-on default for resistance is mid-range, don't change this
// pin is the pin # of the chip select pin. portNum is the SPI port used
// There isn't any need to adjust register settings for initialization
//    non-volatile settings can be stored in the MCP4141, we don't want to supercede those
MCP4141::MCP4141(uint8_t pin, spi_inst_t *portNum) {
  csPin = pin;
  spiPort = portNum;
}

// Increment the resistor value by 1 unit
void MCP4141::Increment() {
  SetSPIMode();
  uint8_t msg = 0b00000100;  // AAAACCXX -> AAAA is the address (00 is register for the resistance value), CC is 01 (increment command), XX doesn't matter

  digitalWrite(csPin, LOW);
  spi_write_blocking(spiPort, &msg, 1);
  digitalWrite(csPin, HIGH);
}

// Decrement the resistor value by 1 unit
void MCP4141::Decrement() {
  SetSPIMode();
  uint8_t msg = 0b00001000;  // AAAACCXX -> AAAA is the address (00 is register for the resistance value), CC is 10 (write data), XX doesn't matter

  digitalWrite(csPin, LOW);
  spi_write_blocking(spiPort, &msg, 1);
  digitalWrite(csPin, HIGH);
}

// Change the resistor value to 'resistance' value in ohms
void MCP4141::SetResistance(uint16_t resistance) {
  SetSPIMode();
  float resistorStepSize = 10000 / 128;
  uint8_t resistorCode = resistance / resistorStepSize - 1;
  uint8_t msg[2];
  msg[0] = 0b00000000;  // AAAACCXX -> AAAA is the address (00 is register for the resistance value), CC is 10 (write data), XX doesn't matter
  msg[1] = resistorCode;
  Serial.println("resistor Code = " + String(resistorCode));
  digitalWrite(csPin, LOW);
  spi_write_blocking(spiPort, msg, 2);
  digitalWrite(csPin, HIGH);
}