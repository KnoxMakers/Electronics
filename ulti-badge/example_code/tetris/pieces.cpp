#include "pieces.h"

/* 
======================================                                  
Return the type of a block (0 = no-block, 1 = normal block, 2 = pivot block)
 
Parameters:
 
>> pPiece:        Piece to draw
>> pRotation: 1 of the 4 possible rotations
>> pX:            Horizontal position in blocks
>> pY:            Vertical position in blocks
====================================== 
*/
int Pieces::GetBlockType (int pPiece, int pRotation, int pX, int pY)
{
    return pgm_read_word(&mPieces [pPiece][pRotation][pX][pY]);
}
 
 
/* 
======================================                                  
Returns the horizontal displacement of the piece that has to be applied in order to create it in the
correct position.
 
Parameters:
 
>> pPiece:    Piece to draw
>> pRotation: 1 of the 4 possible rotations
====================================== 
*/
int Pieces::GetXInitialPosition (int pPiece, int pRotation)
{
    return pgm_read_word(&mPiecesInitialPosition [pPiece][pRotation][0]);
}
 
 
/* 
======================================                                  
Returns the vertical displacement of the piece that has to be applied in order to create it in the
correct position.
 
Parameters:
 
>> pPiece:    Piece to draw
>> pRotation: 1 of the 4 possible rotations
====================================== 
*/
int Pieces::GetYInitialPosition (int pPiece, int pRotation)
{
    return pgm_read_word(&mPiecesInitialPosition [pPiece][pRotation][1]);
}
