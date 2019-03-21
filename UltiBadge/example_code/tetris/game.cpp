#include "Arduino.h"
#include "game.h"


Game::Game(Board *pBoard, Pieces *pPieces, IO *pIO) 
{
	// Get the pointer to the Board and Pieces classes
	mBoard = pBoard;
	mPieces = pPieces;
	mIO = pIO;

	// Game initialization
	InitGame ();
}

/* 
======================================                                  
Initial parameters of the game
====================================== 
*/
void Game::InitGame()
{
 
    // First piece
//    mPiece          = random (0, 7); // get random number from 0-6 inclusive
    mPiece = 0;
//    mRotation       = random (0, 4); // get random number from 0-3 inclusive
    mRotation = 0;
    mPosX           = (BOARD_WIDTH / 2) + mPieces->GetXInitialPosition (mPiece, mRotation);
    mPosY           = mPieces->GetYInitialPosition (mPiece, mRotation);
 
    //  Next piece
    mNextPiece      = random (0,7);
    mNextRotation   = random (0,4);
    mNextPosX       = BOARD_WIDTH + 5;
    mNextPosY       = 5;    
}

/* 
======================================                                  
Create a random piece
====================================== 
*/
void Game::CreateNewPiece()
{
    // The new piece
    mPiece          = mNextPiece;
    mRotation       = mNextRotation;
    mPosX           = (BOARD_WIDTH / 2) + mPieces->GetXInitialPosition (mPiece, mRotation);
    mPosY           = mPieces->GetYInitialPosition (mPiece, mRotation);
 
    // Random next piece
    mNextPiece      = random (0, 7);
    mNextRotation   = random (0, 4);
}

/* 
======================================                                  
Draw piece
 
Parameters:
 
>> pX:        Horizontal position in blocks
>> pY:        Vertical position in blocks
>> pPiece:    Piece to draw
>> pRotation: 1 of the 4 possible rotations
====================================== 
*/
void Game::DrawPiece (int pX, int pY, int pPiece, int pRotation)
{

    // Travel the matrix of blocks of the piece and draw the blocks that are filled
    for (int i = 0; i < PIECE_BLOCKS; i++)
    {
        for (int j = 0; j < PIECE_BLOCKS; j++)
        {
            if (mPieces->GetBlockType (pPiece, pRotation, j, i) != 0) {
              mIO->DrawBlock   (pX+i, pY+j);
            }
        }
    }
}

/* 
======================================                                  
Draw board
 
Draw the two lines that delimit the board
====================================== 
*/
void Game::DrawBoard ()
{
    // Drawing the blocks that are already stored in the board
    for (int i = 0; i < BOARD_WIDTH; i++)
    {
        for (int j = 0; j < BOARD_HEIGHT; j++)
        {   
            // Check if the block is filled, if so, draw it
            if (!mBoard->IsFreeBlock(i, j))  
                mIO->DrawBlock (i, j);
        }
    }   
}

/* 
======================================                                  
Draw scene
 
Draw all the objects of the scene
====================================== 
*/
void Game::DrawScreen ()
{
    DrawBoard ();                                                   // Draw the delimitation lines and blocks stored in the board
    DrawPiece (mPosX, mPosY, mPiece, mRotation);                    // Draw the playing piece
}


void Game::UndrawPiece(int pX, int pY, int pPiece, int pRotation)
{

    // Travel the matrix of blocks of the piece and draw the blocks that are filled
    for (int i = 0; i < PIECE_BLOCKS; i++)
    {
        for (int j = 0; j < PIECE_BLOCKS; j++)
        {

            if (mPieces->GetBlockType (pPiece, pRotation, j, i) != 0)
                mIO->UndrawBlock   (pX+i, pY+j);
        }
    }
}
