//////////////////////////
//
// Ray Crampton
// ray@teamhokies.com
//
// Copied/stole/got inspiration from other code
//
// Free to use, GNU GPL
//

#include <Arduino.h>
#include "pieces.h"
#include "board.h"
#include "game.h"

// uncomment this line to enable serial debugging
#define RJC_DEBUG_MODE

// Arduino Nano pin numbers connected to tactile switches
const uint8_t BTN_LEFT = 16;
const uint8_t BTN_RIGHT = 14;
const uint8_t BTN_UP = 17;
const uint8_t BTN_DOWN = 15;
const uint8_t BTN_A = 2;

// When the up or A buttons are pressed, these variables are used to make sure those buttons are
// released before the action can be called again
bool btnUpReset = true;
bool btnAReset = true;

IO *io; // class that manages IO to the display
Pieces *pieces; // class that manages the pieces that are placed on the board
Board *board; // class that manages the board itself
Game *game; // class that handles game play

// These are used to track when the next game pulse (move the piece down) occurs or how long
// to wait before checking for the next switch press
long gamePulseCounter, keyPressCounter;

// Standard Arduino setup() function 
void setup()
{
  // create classes that make up the game
  io = new IO(NUM_LED_MATRICES);
  pieces = new Pieces();
  board = new Board(pieces);
  game = new Game(board, pieces, io);

  // set tactile switch pins to inputs and enable pull-up resistors
  pinMode(BTN_LEFT, INPUT_PULLUP);
  pinMode(BTN_RIGHT, INPUT_PULLUP);
  pinMode(BTN_UP, INPUT_PULLUP);
  pinMode(BTN_DOWN, INPUT_PULLUP);
  pinMode(BTN_A, INPUT_PULLUP);

  #ifdef RJC_DEBUG_MODE
  // Serial port debugging
  Serial.begin(9600);
  #endif
  // initialize counters to current time
  gamePulseCounter = millis();
  keyPressCounter = millis();
}

// Standard Arduino loop
void loop()
{
  // if enough time has passed to ensure debounce, check for keypress
  if ((millis() - keyPressCounter) > KEYPRESS_TIME) {
    
    // check each key for press
    if (!digitalRead(BTN_UP)) {

      // when button is pressed, it needs to be released before we recognize another press
      if (btnUpReset) {

        // Check for collision row by row until lowest allowed position is identified
        int oldY = game->mPosY++;
          while (board->IsPossibleMovement(game->mPosX, game->mPosY, game->mPiece, game->mRotation)) {
          game->mPosY++;
        }

        // remove piece from display at current position
        game->UndrawPiece(game->mPosX, oldY, game->mPiece, game->mRotation);

        // merge piece into board
        board->StorePiece (game->mPosX, game->mPosY - 1, game->mPiece, game->mRotation);

        // try to delete lines, if any are deleted, clear the screen for redraw
        if (board->DeletePossibleLines ()) {
          io->ClearScreen();
        }
 
        if (board->IsGameOver())
        {
          exit(0);
        }

        // set flag that makes sure we wait for button to be released before we take this action again
        btnUpReset = false;

        // create a new piece to place on the board
        game->CreateNewPiece();

        // resent counter for next key press check
        keyPressCounter = millis();
      }
    }
    else {
      btnUpReset = true;
    }
    if (!digitalRead(BTN_LEFT)) {
      if (board->IsPossibleMovement (game->mPosX - 1, game->mPosY, game->mPiece, game->mRotation)) {
          game->UndrawPiece(game->mPosX, game->mPosY, game->mPiece, game->mRotation);
          game->mPosX--;
      }
      keyPressCounter = millis();
    }
    if (!digitalRead(BTN_RIGHT)) {
      if (board->IsPossibleMovement (game->mPosX + 1, game->mPosY, game->mPiece, game->mRotation)) {
          game->UndrawPiece(game->mPosX, game->mPosY, game->mPiece, game->mRotation);
          game->mPosX++;
      }
      keyPressCounter = millis();
    }
    if (!digitalRead(BTN_DOWN)) {
      AdvanceOnePulse();
      keyPressCounter = millis();
    }
    if (!digitalRead(BTN_A)) {
      if (btnAReset) {
        if (board->IsPossibleMovement (game->mPosX, game->mPosY, game->mPiece, (game->mRotation + 1) % 4)) {
          game->UndrawPiece(game->mPosX, game->mPosY, game->mPiece, game->mRotation);
          game->mRotation = (game->mRotation + 1) % 4;
        }
        btnAReset = false;
        keyPressCounter = millis();
      }
    }
    else {
      btnAReset = true;
    }
  }

  // check to see if it's time for a new game pulse (move piece down one row)
  if (millis() - gamePulseCounter > WAIT_TIME) {
    AdvanceOnePulse();
  }

  game->DrawScreen();
}

///////////////
//
// Each time the game pulses, the current piece is moved down one row
// Check to see if a collision occurse (piece reached it lowest allowed position)
// Clear screen and redraw as needed
// Check for end of game
//
void AdvanceOnePulse()
{

  // if move is possible (nothing is in the way of the piece moving down another row
  if (board->IsPossibleMovement (game->mPosX, game->mPosY + 1, game->mPiece, game->mRotation))
    {
      game->UndrawPiece(game->mPosX, game->mPosY, game->mPiece, game->mRotation);
      game->mPosY++;
    }

  // else this piece has moved down as far as possible, merge with the board, delete lines and start a new piece
  else
  {
    board->StorePiece (game->mPosX, game->mPosY, game->mPiece, game->mRotation);

    if (board->DeletePossibleLines ()) {
      io->ClearScreen();
    }

    if (board->IsGameOver())
    {
      exit(0);
    }
    
    game->CreateNewPiece();
  }

  // reset pulse counter
  gamePulseCounter = millis();    
}  
