#include "io.h"
#include "LedControl.h"

const uint8_t LED_CLK = 13;
const uint8_t LED_DIN = 11;
const uint8_t LED_CS  = 9;

LedControl lc=LedControl(LED_DIN,LED_CLK,LED_CS,2); //io 

IO::IO()
{
    // turn off power mode, clear displays, set intensity
    for (int i=0 ; i < NUM_LED_MATRICES ; i++) {
        lc.shutdown(i,false);
        lc.setIntensity(i,8);
    }
    ClearScreen();
}

IO::IO(int numLEDMatrices)
{
    // turn off power mode, clear displays, set intensity
    for (int i=0 ; i < numLEDMatrices ; i++) {
        lc.shutdown(i,false);
        lc.setIntensity(i,8);
    }
    mNumLEDMatrices = numLEDMatrices;
    ClearScreen();
  
}

// sets all LEDs to off state
// set prior board state to all LEDs off
void IO::ClearScreen()
{
    // turn off power mode, clear displays, set intensity
    for (int i=0 ; i < NUM_LED_MATRICES ; i++) {
        lc.clearDisplay(i);
    }

    // reset all prior led states to off
    for (int a=0 ; a < NUM_LED_MATRICES ; a++) {
        for (int x=0 ; x < 8 ; x++) {
            for (int y=0 ; y < 8 ; y++) {
                priorBoardState[a][x][y] = false;
            }
        }
    }
}

// Turns on/off specified LED at (x,y) on display address 'addr'
void IO::setLED(int addr, int x, int y, bool state)
{
  lc.setLed(addr, x, y, state);
}


void IO::DrawBlock(int x, int y)
{
    
    // determine which of the 4 LED matrix the block resides on:
    // avoid division due to performance penalty, Arduino byte division takes around 125,000 us
    y = DecodeAddress(y);

    if (address >= mNumLEDMatrices)
        return;

    if (y >=0) {
      if (priorBoardState[address][x][y] == false) {
        priorBoardState[address][x][y] = true;
        lc.setLed(address, x, y, true);
      }
    }
}

void IO::UndrawBlock(int x, int y)
{
    // determine which of the 4 LED matrix the block resides on:
    // avoid division due to performance penalty, Arduino byte division takes around 125,000 us
    y = DecodeAddress(y);

    if (address > mNumLEDMatrices)
        return;

    if (priorBoardState[address][x][y] == true) {
        priorBoardState[address][x][y] = false;
        lc.setLed(address, x, y, false);
    }
}   

int IO::DecodeAddress(uint8_t y)
{
    if (y < 8) {
        address = 0;
        return 7-y;
    }
    else if (y < 16) {
        address = 1;
        return (7-(y-8));
    }
    return(-1);
}
