/*
  KnoxMakers Badge Test Functions
  Test Code By PCB_Rob
  Updated by Ray Crampton
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
//#define HARDWARE_TYPE MD_MAX72XX::ICSTATION_HW
#define HARDWARE_TYPE MD_MAX72XX::FC16_HW

// define which pins on the arduino board are connected to which pins on the module
// This is hardwired on the PCB, you don't need to change these
const int MAX_DEVICES =  2;   // number of 8x8 modules being used, we have 2
const int CLK_PIN     = 13;   // or SCK
const int DIN_PIN     = 11;   // or MOSI, labeled DIN on some LED modules
const int CS_PIN      =  9;   // or SS
MD_MAX72XX mx = MD_MAX72XX(HARDWARE_TYPE, CS_PIN, MAX_DEVICES);

// This functions is run one time each time the Arduino is powered up
void setup()
{
  // start the LED matrix, set intensity and clear the display
  mx.begin();
  mx.control(MD_MAX72XX::INTENSITY, 1);
  mx.clear();
}

// This function is run repeatedly forever after setup() completes
void loop()
{
  // delay 500 milliseconds, bounce the ball for 1000 moves of the ball, delay another 500 milliseconds
  delay(500);
  bounce(10000);
  delay(500);
}

/****************************************************/
void bounce(uint16_t numBounces)   // Animation of a bouncing ball
/****************************************************/
{
  const int minC = 0;
  const int maxC = mx.getColumnCount()-1;
  const int minR = 0;
  const int maxR = ROW_SIZE-1;

  uint16_t  nCounter = 0;

  int  r = 0, c = 2;
  int8_t dR = 1, dC = 1;  // delta row and column

  Serial.println("Bouncing ball");
  mx.clear();

  while (nCounter++ < numBounces)
  {
    mx.setPoint(r, c, false);
    r += dR;
    c += dC;
    mx.setPoint(r, c, true);
    delay(50);

    if ((r == minR) || (r == maxR))
      dR = -dR;
    if ((c == minC) || (c == maxC))
      dC = -dC;
  }
}
