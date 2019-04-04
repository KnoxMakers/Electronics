/*
  KnoxMakers Badge Test Functions
  Test Code By Ray Crampton
  22-Mar-2019

  MD_MAX72XX library
  https://github.com/MajicDesigns/MD_MAX72XX

*/

#include <MD_MAX72xx.h>

// the following #define tells the LED matrix library how the modules are wired.
// You need to uncomment the one line that corresponds with how the module you bought is wired.
// The other lines should be commented out using '//' at the begining of the line.
// This is trial and error. The text should scroll left to right, rightside up if you position
// the board such that the arduino is on the bottom and the LEDs are on the top.

//#define HARDWARE_TYPE MD_MAX72XX::PAROLA_HW
//#define HARDWARE_TYPE MD_MAX72XX::GENERIC_HW
#define HARDWARE_TYPE MD_MAX72XX::ICSTATION_HW
//#define HARDWARE_TYPE MD_MAX72XX::FC16_HW

// define which pins on the arduino board are connected to which pins on the module
// This is hardwired on the PCB, you don't need to change these
const int MAX_DEVICES =  2;   // number of 8x8 modules being used, we have 2
const int CLK_PIN     = 13;   // or SCK
const int DIN_PIN     = 11;   // or MOSI, labeled DIN on some LED modules
const int CS_PIN      =  9;   // or SS
MD_MAX72XX led = MD_MAX72XX(HARDWARE_TYPE, CS_PIN, MAX_DEVICES);

// define to which pins the switches are attached
#define SWITCH1 A3
#define SWITCH2 A2
#define SWITCH3 A1
#define SWITCH4 A0
#define SWITCH5 2

// This functions is run one time each time the Arduino is powered up
void setup()
{
  // start the LED matrix, set intensity and clear the display
  led.begin();
  led.control(MD_MAX72XX::INTENSITY, 1);
  led.clear();

  // define pins that switches are connected to as inputs with their pullups enabled
  pinMode(SWITCH1, INPUT_PULLUP);
  pinMode(SWITCH2, INPUT_PULLUP);
  pinMode(SWITCH3, INPUT_PULLUP);
  pinMode(SWITCH4, INPUT_PULLUP);
  pinMode(SWITCH5, INPUT_PULLUP);


  // Enable serial communicatios back to the Arduino IDE
  Serial.begin(57600);
}

// These are used to track when a button is pressed and released so updates to the screen
// and serial port only occur once per event rather than a continuous string of screen updates
// and serial outputs
bool displayingChar = false;
bool switch1Pressed = false;
bool switch2Pressed = false;
bool switch3Pressed = false;
bool switch4Pressed = false;
bool switch5Pressed = false;
  
// This function is run repeatedly forever after setup() completes
void loop()
{

  // If the switch is LOW then it's being pressed by the user
  if (digitalRead(SWITCH1) == LOW) {

    // store the fact that the switch is being pressed
    switch1Pressed = true;

    // if we are displaying a character on the screen then skip this next code block
    // This avoids having the display flash due to continuous updates
    // It also avoids a continuous stream of output to the serial port
    
    if (!displayingChar) {
    
      Serial.println("Switch1 Pressed");
      
      // clear the display
      led.clear();

      // put the display in shutdown mode while we send, rotate and shift the character
      // this prevents the display from flashing the character as it's rotated and shifted
      led.control(MD_MAX72XX::SHUTDOWN, 1);

      // write a character to the display starting at column 4
      // the column will help center the number in the display visually
      led.setChar(4 ,'1');
      led.transform(MD_MAX72XX::TRC); // rotate the character clockwise
      led.transform(MD_MAX72XX::TSL); // shift the character "left" which is towareds the tactile switches

      // enable the display
      led.control(MD_MAX72XX::SHUTDOWN, 0);

      // store that we are displaying a character
      displayingChar = true;

    }
  }
  else if (switch1Pressed) {
    switch1Pressed = false;
    Serial.println("Switch1 Relessed");
  }

  if (digitalRead(SWITCH2) == LOW) {
    switch2Pressed = true;
    if (!displayingChar) {
      Serial.println("Switch2 Pressed");
      led.control(MD_MAX72XX::SHUTDOWN, 1);
      led.setChar(4,'2');
      led.transform(MD_MAX72XX::TRC);
      led.transform(MD_MAX72XX::TSU);
      led.transform(MD_MAX72XX::TSL);
      led.control(MD_MAX72XX::SHUTDOWN, 0);
      displayingChar = true;
    }
  }
  else if (switch2Pressed) {
    switch2Pressed = false;
    Serial.println("Switch2 Relessed");
  }

  if (digitalRead(SWITCH3) == LOW) {
    switch3Pressed = true;
    if (!displayingChar) {
      Serial.println("Switch3 Pressed");
      led.control(MD_MAX72XX::SHUTDOWN, 1);
      led.setChar(4,'3');
      led.transform(MD_MAX72XX::TRC);
      led.transform(MD_MAX72XX::TSU);
      led.transform(MD_MAX72XX::TSL);
      led.control(MD_MAX72XX::SHUTDOWN, 0);
      displayingChar = true;
    }
  }
    else if (switch3Pressed) {
    switch3Pressed = false;
    Serial.println("Switch3 Relessed");
  }

if (digitalRead(SWITCH4) == LOW) {
    switch4Pressed = true;
    if (!displayingChar) {
      Serial.println("Switch4 Pressed");
      led.control(MD_MAX72XX::SHUTDOWN, 1);
      led.setChar(4,'4');
      led.transform(MD_MAX72XX::TRC);
      led.transform(MD_MAX72XX::TSU);
      led.transform(MD_MAX72XX::TSL);
      led.control(MD_MAX72XX::SHUTDOWN, 0);
      displayingChar = true;
    }
  }
  else if (switch4Pressed) {
    switch4Pressed = false;
    Serial.println("Switch4 Relessed");
  }

  if (digitalRead(SWITCH5) == LOW) {
    switch5Pressed = true;
    if (!displayingChar) {
      Serial.println("Switch5 Pressed");
      led.control(MD_MAX72XX::SHUTDOWN, 1);
      led.setChar(4,'5');
      led.transform(MD_MAX72XX::TRC);
      led.transform(MD_MAX72XX::TSU);
      led.transform(MD_MAX72XX::TSL);
      led.control(MD_MAX72XX::SHUTDOWN, 0);
      displayingChar = true;
    }
  }
    else if (switch5Pressed) {
    switch5Pressed = false;
    Serial.println("Switch5 Relessed");
  }

if (!switch1Pressed && !switch2Pressed && !switch3Pressed && !switch4Pressed && !switch5Pressed && displayingChar) {
    led.clear();
    displayingChar = false;
  }
}
