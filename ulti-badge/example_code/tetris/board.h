#ifndef _BOARD_
#define _BOARD_
 
#include "Pieces.h"
 
const uint8_t  BOARD_WIDTH = 8;           // Board width in blocks 
const uint8_t  BOARD_HEIGHT = 16;         // Board height in blocks
const uint8_t  NUM_LED_MATRICES = 2;      // Number of 8x8 LED matrices that make up the board
const uint8_t  MIN_VERTICAL_MARGIN = 20;  // Minimum vertical margin for the board limit      
const uint8_t  PIECE_BLOCKS = 5;          // Number of horizontal and vertical blocks of a matrix piece
 
///////////////////
//
// Object defines and manages the playing board
//

class Board
{
public:
 
    Board                       (Pieces *pPieces);
 
    bool IsFreeBlock            (int pX, int pY);
    bool IsPossibleMovement     (int pX, int pY, int pPiece, int pRotation);
    void StorePiece             (int pX, int pY, int pPiece, int pRotation);
    bool DeletePossibleLines    ();
    bool IsGameOver             ();

private:
 
    enum { POS_FREE, POS_FILLED };          // POS_FREE = free position of the board; POS_FILLED = filled position of the board

    Pieces *mPieces;
 
    void InitBoard();
    void DeleteLine (int pY);

    int mBoard [BOARD_WIDTH][BOARD_HEIGHT]; // Board that contains the pieces 

};
 
#endif // _BOARD_
