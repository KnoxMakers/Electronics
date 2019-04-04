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
  mx.control(MD_MAX72XX::INTENSITY, 2);
  mx.clear();
}

  // This function is run repeatedly forever after setup() completes
  void loop()
  {
    // Scroll the defined text, delay 100 milliseconds, clear the screen
    scrollText((char *) "KnoxMakers.org     "); // the extra 5 spaces on the end make sure the text scrolls off the display
    delay(100); // this isn't enough time to matter, it's included here in case you want to insert a delay
    mx.clear();
  }

// This function scrolls the message passed to it across the led displays
/****************************************************/
void scrollText(char *p)
/****************************************************/
{
  uint8_t charWidth;  // used to store the width of the character in pixels
  uint8_t cBuf[8];    // this should be ok for all built-in fonts

  const int maxC = mx.getColumnCount()-1;

  while (*p != '\0')
  {
    // get the width of the character in columns of LEDs
    charWidth = mx.getChar(*p++, sizeof(cBuf) / sizeof(cBuf[0]), cBuf);

    // loop through the columns of pixels/LEDs in the character
    // the +1 adds one column of space between characters
    for (uint8_t i=0; i<charWidth+1; i++)
    {
      mx.transform(MD_MAX72XX::TSR); // shift all of the columns right (scroll text right one column)

      // if the current column is one that contains pixels, reverse them using rbits() and display them
      if (i < charWidth)
      {
        mx.setColumn(maxC, rbits(cBuf[i]));
      }
      delay(100);
    }
  }
}

// This function reverses the bits to turn the text upside down
// If the LED displays were oriented 180 degrees from how they are, this would be omitted.
/****************************************************/
unsigned char rbits(unsigned char b) {
/****************************************************/
   b = (b & 0xF0) >> 4 | (b & 0x0F) << 4;
   b = (b & 0xCC) >> 2 | (b & 0x33) << 2;
   b = (b & 0xAA) >> 1 | (b & 0x55) << 1;
   return b;
}
