#ifndef _GAME_
#define _GAME_
 
// ------ Includes -----
 
#include "Board.h"
#include "Pieces.h"
#include "IO.h"
 
// ------ Defines -----
 
const uint16_t WAIT_TIME = 300;      // Number of milliseconds that the piece remains before going 1 block down */ 
const uint16_t KEYPRESS_TIME = 100;  // milliseconds of delay between button inputs being checked. Poor man's debouncing */ 

 
//////////////////////////////////////////////
//
// Game class manages the gameplay itself
// 
class Game
{
public:
 
    bool debug = false;

    Game (Board *pBoard, Pieces *pPieces, IO *pIO);
 
    void DrawScreen ();
    void CreateNewPiece ();
    void UndrawPiece(int mPosX, int mPosY, int mPiece, int mRotation);

    int mPosX, mPosY;               // Position of the piece that is falling down
    int mPiece, mRotation;          // Kind and rotation the piece that is falling down
 
private:
 
    int mScreenHeight;              // Screen height in pixels
    int mNextPosX, mNextPosY;       // Position of the next piece
    int mNextPiece, mNextRotation;  // Kind and rotation of the next piece
 
    Board *mBoard;
    Pieces *mPieces;
    IO *mIO;
 
    void InitGame();
    void DrawPiece (int pX, int pY, int pPiece, int pRotation);
    void DrawBoard ();
};
 
#endif // _GAME_
