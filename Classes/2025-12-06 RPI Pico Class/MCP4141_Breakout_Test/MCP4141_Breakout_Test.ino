#include "pico/stdlib.h"
#include <stdio.h>
#include <iostream>
#include <string.h>
#include "hardware/spi.h"
#include "MCP4141.h"

void SPIInit(); // function is in this file, initializes the SPI port
float ReadADC(uint8_t averages);

// These 4 lines define the SPI port pins and the chip select pin used for communications to the MCP4141
const uint8_t pinMOSI  = 7;
const uint8_t pinMISO  = 8;
const uint8_t pinSCK   = 6;
const uint8_t pinCSMCP4141 = 9;

// The Pi Pico has 2 SPI ports, SPI0 is used in this example
static spi_inst_t *SPI_PORT = spi0;

MCP4141 pot(pinCSMCP4141, SPI_PORT); // instantiation of the potentiometer class

// setup() is run one time after power up or reset
void setup() {
  Serial.begin(9600); // Initialize serial port communications
  delay(1000);
  SPIInit(); // calls function that handles initialization of the SPI port.
  analogReadResolution(10); // set ADC read resolution to 10 bits. The ADC is 12 bits but effective bits is closer to 8.
  pinMode(LED_BUILTIN, OUTPUT); // set pin connected to on-board LED as an output
}

// loop() is run repeatedly forever
void loop() {
  char message[128];

  pot.SetResistance(0); // set resistance to 0 ohms

  // Increment POT > 127 times to max out the value
  for (int i = 0 ; i <= 128 ; i++) {
    digitalWrite(LED_BUILTIN, HIGH); // turn LED on
    Serial.print("Incrementing " + String(i) + "/128, ");
    pot.Increment(); // increase resistance value 1 unit
    delay(50); // wait 50ms. This is just to avoid crazy fast scrolling in the Serial monitor
    digitalWrite(LED_BUILTIN, LOW); // turn LED off
    sprintf(message, "ADC = %.3fV ", ReadADC(10));
    Serial.println(message);
    delay(50); // wait 50ms. This is just to avoid crazy fast scrolling in the Serial monitor
  }

  // Decrement POT > 127 times to min out the value
  for (int i = 0 ; i <= 128 ; i++) {
    digitalWrite(LED_BUILTIN, HIGH);
    Serial.print("Decrementing " + String(i) + "/128, ");
    pot.Decrement();
    delay(50);
    digitalWrite(LED_BUILTIN, LOW);
    sprintf(message, "ADC = %.3fV ", ReadADC(10));
    Serial.println(message);
    delay(50);
  }

  // Set POT to specific values and measure the voltage
  uint16_t resistances[5] = {0, 2500, 5000, 7500, 10000};
  for (uint16_t rValue : resistances) {
    pot.SetResistance(rValue);
    delay(50);
    sprintf(message, "Resistance = %i, ADC = %.3fV ", rValue, ReadADC(10));
    Serial.println(message);
  }

  Serial.println("\n\n");
  delay(5000);
}

void SPIInit()
{
  gpio_init(pinCSMCP4141);
  gpio_set_dir(pinCSMCP4141, GPIO_OUT);
  gpio_init(pinMOSI);
  gpio_set_dir(pinMOSI, GPIO_OUT);
  gpio_init(pinMISO);
  gpio_set_dir(pinMISO, GPIO_OUT);
  gpio_init(pinSCK);
  gpio_set_dir(pinSCK, GPIO_OUT);

  digitalWrite(pinCSMCP4141, HIGH);

  spi_init(SPI_PORT, 1000 * 1000);

  gpio_set_function(pinMOSI, GPIO_FUNC_SPI);
  gpio_set_function(pinMISO, GPIO_FUNC_SPI);
  gpio_set_function(pinSCK, GPIO_FUNC_SPI);
}

float ReadADC(uint8_t averages)
{
  uint16_t sum = 0;
  for (int i = 0 ; i < averages ; i++) {
    sum += analogRead(A0);
  }

  return ((3.3 * sum) / averages / 1024); // 3.3V is the approximate Vref of the ADC, 4096 is 12 bits.
}