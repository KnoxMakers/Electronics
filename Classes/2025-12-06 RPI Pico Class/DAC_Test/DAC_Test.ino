#include "pico/stdlib.h"
#include <stdio.h>
#include <iostream>
#include <string.h>
#include "hardware/spi.h"

// These 4 lines define the SPI port pins and the chip select pin used for communications to the DAC
const uint8_t pinMOSI = 11;
const uint8_t pinMISO = 12;
const uint8_t pinSCK = 10;
const uint8_t pinCSDAC = 13;

// The Pi Pico has 2 SPI ports, SPI1 is connected to the DAC on the PCB
static spi_inst_t *SPI_PORT = spi1;

// These are helper functions for the DAC
void DACInit();
void DACSet(uint8_t channel, uint16_t value, uint8_t csPin = pinCSDAC);

// The DAC is 10 bits (89 or 12 bit DACs can be purchased in this pinout as well)
// 0b0000000000 (0x000) is 0V
// 0b1111111111 (0x3ff) is 3.3V
// 0b1000000000 (0x200) is 1,65V

// Setup() is run one time after power up or reset
void setup() {
  Serial.begin(9600); // Initialize serial port communications
  analogReadResolution(12); // set read resolution to 12 bits, to match ADC
  pinMode(LED_BUILTIN, OUTPUT); // set pin connected to on-board LED as an output

  DACInit(); // initialize digital to analog converter
}

void loop() {
  digitalWrite(LED_BUILTIN, HIGH); // turn LED on
  
  uint16_t sensorValue;

  DACSet(0, 0x3ff); // set DAC to highest value (~3.3V)
  delay(1); // delay a bit to allow DAC and ADC both to settle
  sensorValue = analogRead(A0); // read ADC input
  Serial.print("DAC = 0x03ff, ADC = ");
  Serial.print(3.3 * sensorValue / 4096, 3); // 3.3V is the approximate Vref of the ADC, 4096 is 12 bits. Print to 3 decimal places.
  Serial.println("V");

  delay(250); // delay so serial monitor doesn't scroll like crazy, and so LED blink can be seen

  digitalWrite(LED_BUILTIN, LOW); // turn LED off
  DACSet(0, 0x0200); // set DAC to mid scake (~1.65V)
  delay(1);
  sensorValue = analogRead(A0);
  Serial.print("DAC = 0x0200, ADC = ");
  Serial.print(3.3 * sensorValue / 4096, 3);
  Serial.println("V");

  delay(250); // delay so serial monitor doesn't scroll like crazy, and so LED blink can be seen

  digitalWrite(LED_BUILTIN, HIGH); // turn LED off
  DACSet(0, 0x0000); // set DAC to minimum value (~0V)
  delay(100);
  sensorValue = analogRead(A0);
  Serial.print("DAC = 0x0000, ADC = ");
  Serial.print(3.3 * sensorValue / 4096, 3);
  Serial.println("V");

  delay(250); // delay so serial monitor doesn't scroll like crazy, and so LED blink can be seen
  digitalWrite(LED_BUILTIN, LOW); // turn LED off
  Serial.println("");
  delay(250); // delay so serial monitor doesn't scroll like crazy, and so LED blink can be seen

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

}