#include "pico/stdlib.h"
#include <stdio.h>
#include <iostream>
#include <string.h>
#include "hardware/spi.h"

const uint8_t pinMOSI = 11;
const uint8_t pinMISO = 12;
const uint8_t pinSCK = 10;
const uint8_t pinCSDAC = 13;

static spi_inst_t *SPI_PORT = spi1;

void DACInit();
void DACSet(uint8_t channel, uint16_t value, uint8_t csPin = pinCSDAC);

void setup() {
  pinMode(LED_BUILTIN, OUTPUT);
  pinMode(14, OUTPUT);
  pinMode(15, OUTPUT);
  pinMode(16, OUTPUT);
  pinMode(17, OUTPUT);
  pinMode(18, OUTPUT);
  pinMode(19, OUTPUT);
  pinMode(20, OUTPUT);
  pinMode(21, OUTPUT);
  pinMode(22, OUTPUT);
  pinMode(26, OUTPUT);
  pinMode(27, OUTPUT);
  pinMode(28, OUTPUT);

  DACInit();
}

void loop() {

  DACSet(0, 0x03ff);
  DACSet(0, 0x01ff);
  DACSet(0, 0x0100);
  DACSet(0, 0x0000);

  DACSet(1, 0x03ff);
  DACSet(1, 0x01ff);
  DACSet(1, 0x0100);
  DACSet(1, 0x0000);

  digitalWrite(LED_BUILTIN, HIGH);
  digitalWrite(14, HIGH);
  digitalWrite(15, HIGH);
  digitalWrite(16, HIGH);
  digitalWrite(17, HIGH);
  digitalWrite(18, HIGH);
  digitalWrite(19, HIGH);
  digitalWrite(20, HIGH);
  digitalWrite(21, HIGH);
  digitalWrite(22, HIGH);
  digitalWrite(26, HIGH);
  digitalWrite(27, HIGH);
  digitalWrite(28, HIGH);
  delay(10);

  digitalWrite(LED_BUILTIN, LOW);
  digitalWrite(14, LOW);
  digitalWrite(15, LOW);
  digitalWrite(16, LOW);
  digitalWrite(17, LOW);
  digitalWrite(18, LOW);
  digitalWrite(19, LOW);
  digitalWrite(20, LOW);
  digitalWrite(21, LOW);
  digitalWrite(22, LOW);
  digitalWrite(26, LOW);
  digitalWrite(27, LOW);
  digitalWrite(28, LOW);
  delay(10);

}

void DACSet(uint8_t channel, uint16_t value, uint8_t csPin)
{
  uint8_t msg[3];

  if (channel == 0) {
    msg[0] = 0b1;
  }
  else if (channel == 1) {
    msg[0] = 0b1001;
  }
  else {
    return;
  }

  msg[1] = value >> 8;
  msg[2] = value & 0xff;
  digitalWrite(csPin, LOW);
  spi_write_blocking(spi1, msg, 3);
  digitalWrite(csPin, HIGH);
}

void DACInit()
{
  gpio_init(pinCSDAC);
  gpio_set_dir(pinCSDAC, GPIO_OUT);
  gpio_init(pinMOSI);
  gpio_set_dir(pinMOSI, GPIO_OUT);
  gpio_init(pinMISO);
  gpio_set_dir(pinMISO, GPIO_OUT);
  gpio_init(pinSCK);
  gpio_set_dir(pinSCK, GPIO_OUT);

  digitalWrite(pinCSDAC, HIGH);

  spi_init(SPI_PORT, 1000 * 1000);

  gpio_set_function(pinMOSI, GPIO_FUNC_SPI);
  gpio_set_function(pinMISO, GPIO_FUNC_SPI);
  gpio_set_function(pinSCK, GPIO_FUNC_SPI);

  spi_set_format( 
        spi1,
        8,
        SPI_CPOL_0,
        SPI_CPHA_0,
        SPI_MSB_FIRST);
  // Workaround: perform throw-away read to make SCK idle high
  uint8_t data = 0b10101010; // 01... alternating for easy ID in logic analyzer view
  spi_write_blocking(spi1, &data, 1);

  uint8_t msg[10];
  msg[0] = 0b01000001;
  msg[1] = 0x0;
  msg[2] = 0b1010;
  digitalWrite(pinCSDAC, LOW);
  spi_write_blocking(spi1, msg, 3);
  digitalWrite(pinCSDAC, HIGH);

}a