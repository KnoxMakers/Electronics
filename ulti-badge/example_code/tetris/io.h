#ifndef _IO_H_
#define _IO_H_
#include "board.h"


/////////////////////
//
// Manages IO to display
//
class IO
{
public:
    int mNumLEDMatrices;
    enum {UP, DOWN, LEFT, RIGHT};

    IO                      ();
    IO                      (int numLEDMatrices);
     
    void ClearScreen        ();
    int GetScreenHeight     ();
    int InitGraph           ();
    int Pollkey             ();
    int Getkey              ();
    int IsKeyDown           (int pKey);
    void DrawBlock          (int x, int y);
    void UndrawBlock        (int x, int y);
    int DecodeAddress       (uint8_t y);
    void setLED             (int addr, int x, int y, bool state);

    // Prior board state is kept so we can redraw only LEDs that require it
    bool priorBoardState[NUM_LED_MATRICES][8][8];
    uint8_t address;
};
 
#endif // _IO_
