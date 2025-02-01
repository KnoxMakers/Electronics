/* 
KnoxMakers Macro Keyboard Class Firmware v1.2

If you are reading this you are probably configuring a macro keyboard
in a class or possibly... hopefully... re-configuring many years later 
because it was so fulfilling it gave you a lifetime of use. If you 
are looking at the firmware at all the assumption is that you have
a basic to intermediate knowledge of programming or are sitting near
someone who does. This is intended to supplement the assembly guide
or classroom content regarding placement and wiring of components.

You should already have the macro keyboard kit with all the electrical
components at least mostly assembled. If you are using the KnoxMakers
kit, the Pro Micro may already be flashed with the test firmware.

Regardless, the test firmware should be flashed prior to final assembly 
as it is useful to verify the various components such as LEDs and diodes 
are wired correctly and functioning. It is easier to remove them from the 
board before the switches and controller are soldered into place.

You will notice this program is written like a book and not like a 
program. Coding and layout conventions aside, it should compile just fine.
For instance, you don't *have* to put all your includes on the first few 
lines, its just considered poor form by most to do otherwise.

  Table of Contents:
    Chapter 1: Chips and such
    Chapter 2: Configuring Input
    Chapter 3: Configuring LEDs
    Chapter 4: Polling and Pressing
    Chapter 5: Final assembly

*/


/* 
Chapter 1: Chips and such

   This firmware is not meant to be the best firmware, it is meant
   to be an easily configurable teaching tool for someone to 
   learn how a keyboard functions. If you need more fulfilling firmware, 
   please seek out QMK or other mature projects.

   Hopefully the microcontroller you selected is one with built in 
   USB Human Interface Device (HID) support. The USB HID specification is 
   a generally agreed upon standard that says plugging a random USB device 
   into another random USB port should basically do what you intend it to 
   do without having to install drivers. Anyone old enough to remember 
   Windows 98 USB support can attest to it's convenience. If you were making
   a new USB device, you had to write drivers for it and package those
   drivers with your device. This was annoying and USB was not great. Then
   they made the USB HID standard and USB became a lot less annoying.
   
   With HID, those drivers can be loaded at the hardware level. The standard
   defines a handshake between the USB client device and the USB host device 
   which defines the capabilities of that device. This is done through a 
   standardized table of scancode such as all the alphanumeric characters, 
   modifier keys such as CTRL and SHIFT, and some special keys like Sleep. 
   Joysticks and Mice get codes as well. The codes tables and interoperability 
   have grown to the point where you can plug a USB keyboard into a televison 
   and it will probably work.

   At the time of this authoring some suitable controllers for USB HID out of 
   the box are: 
    * ATMEGA32U4 (Pro-micro Family from ATMEL/Microhip Technology)
    * AT90USB    (Teensy, ATMEL/Microchip Technology)
    * RP2040     (Rasbperry Pi Ltd.)
    * ESP32      (Espressif. Some models can do USB HID as well as Bluetooth)
    + many many more

   This firmware is specifically designed for the ATMEGA32U4 that was included
   with the kit. It has also been tested to work with some modifications on 
   an RP2040. 
  */


  /*
  Chapter 2: Klack klack klack
  
  Even though there have been thousands of different models, all keyboards
  do essentially the same thing. It is terribly inefficient to monitor
  input from 150 discrete buttons, so keyboards are configured by wiring
  those switches into a matrix of rows and columns. Instead of monitoring 
  each key individually; a row is selected, each column is polled, then
  the next until all the keys have been polled. Any key that is pressed
  during the polling interval is detected by the completion of the circuit
  connecting the row and the column via the keyswich.
  
  With our keyboard, we have wired the keys in an active low configuration.
  That means if a keyswitch is open during a polling interval there will be  
  5V present on the circuit, if it is closed (active), there will be 
  0V on the circuit.  
  
  This polling of individual switches can be happening thousands upon thousands 
  of times per second. The odds are pretty high that your firmware will capture 
  the opening and closing of the keyswitch. In fact, it can sample so
  quickly we will find ourselves in the position of having to filter extra
  signals out.

  All of the input has to be processed and then sent via the USB port to the
  computer. The USB port being universal, serialized, and a bus, is
  precofigured to have any number of keyboards plugged in simultaneously
  as long as the connected devices respect the HID conventions.

  We will use the HID-Project library for this. It offers a few more 
  opportunities than the standard Arduino HID and keyboard libraries.

  */

    #include <HID-Project.h>

  /*

  By now your keyboard should be fully assembled and function tested
  with the test firmware. It is time to configure this firmware to
  run on it. To start with we need to begin defining which physical
  pins map to which location in memory. We need to define some physical
  dimensions. We also need to configure all of the other hardware.
  We can go ahead and define how many rows and columns are present. It is 
  entirely possible to do 1 long row with 6 columns or 2 rows with 4 columns. 
  The structure doesn't matter so long as each leg of each key switch is wired
  to a different pin on the controller. The physical rows and columns are
  mostly to save your sanity. We have 7 buttons we need to poll on our
  keyboard. They are arranged in two rows of keys plus the encoder button.

  */

    #define KEYROWS 2
    #define KEYCOLS 4

  /*

  Then we associate the pin numbers with the rows and columns. These
  will be endlessly iterated over throughout countless polling intervals
  as long as the keyboard is powered and there are no errors in the code.

  */

    static uint8_t colPins[KEYCOLS] = {4, 5, 6, 7}; //Last column is encoder button
    static uint8_t rowPins[KEYROWS] = {8, 9};

  /*

  The tricky part is making sure all of the states are maintained between
  polling intervals. We will want a couple of arrays to maintain the 
  current reported state of each key as well as the last reported state
  of each key

  */
      
    static bool  keyStatus[KEYROWS][KEYCOLS];
    static bool lastStatus[KEYROWS][KEYCOLS];
    
  /*   
   
  Mechanical switches also have this propensity for what we call "bouncing".
  Bouncing is when the mechanical contacts inside of a switch momentarily 
  open and close causing the voltage to jump above and below the logic 
  voltage for the circuit. This all occurs in a fraction of a second. 

  There are many different ways to deal with bouncing in a circuit 
  from adding additional analog components or handling it digitally
  in firmware. The most economical option is to filter the bouncing 
  out in firmware.

  There are many debouncing libraries available. Since this is a class 
  about making and wiring a keyboard, we are going to debounce it ourselves 
  in firmware. This is should be easy enough to do in our polling loop
  and we will discuss it more later when we get to that point. For now its 
  fine to say:

    "In order for a key's state to change, it must be held 
    for at least this many ms."

  This number may not actually be 5ms for you. This number may be 10ms for 
  some reason. We will set this delay in a compiler directive just
  so it is easy to change later. Ideally you want as low of a debounce
  interval as possible. Waiting around for switches to debounce can
  ultimately accumulate into input lag, resulting in a poor user experience.

  */

    #define BOUNCE_DELAY 5

  /*

   Rotary encoders aren't anything new, but for some reason they are still 
   insidious little devices that could potentially bring an otherwise well 
   adjusted person to commit crimes. Naturally we have included an encoder
   with a button in the kit. Encoders use what is known as Quadrature Encoding
   to electronically convey their movement. They do this through two pins on
   the encoder are either 1 or 0 depending on the angle of the shaft. Turning
   the knob results in the pattern changing. With a finite number of possible
   combinations, we can deduce whether the knob was turned left or right and 
   how far. More on that later. 

  */

    //Encoder pins
    #define ENC_A 19
    #define ENC_B 21

  /*
  
  We now have a list of physical devices mapped to a list of memory 
  addresses that we can access digitally in the firmware.

  The next step is determining what do to with it. A typical keyboard
  would wait for a key press and then send the bytes for that keycode.
  Our keyboard is a macro-keyboard. That means it can run macros, not
  that it is big. The big keyboard class is a different class.
      
  It can even be a super keyboard with multiple key mappings in one.
  For instance, you could have the encoder button change the key mappings
  every time you pressed it while the LEDs changed to a different color 
  to reflect which is the current selected mapping.

  Other firmwares like QMK call this layering. In an attempt to keep
  the code here as simple as possible, we are only going to be maintaining
  one set of actions.

  Since our buttons need to call a variety of different arbitrary actions
  depending on what you want it to do, we will be keeping these actions
  mapped that way; as anonymous functions calls.

  In order to execute these actions, we will use the lambda syntax to
  tie the code execution to the key press event. These events are stored 
  in an array of the same dimensions as our key switch mappings plus an 
  extra dimension for Keyboard.press vs Keyboard.release handling. 

  The pattern we will use to call these actions is 
  
    []{ <do something> }

  Our first action will log the user out if they are on a windows
  system by sending the Win+L combination. This action will 
    press the left OS key
    wait 5ms
    send an L
    wait 5 more ms 
    release all the held keys
    
  This series of key strokes is defined as a void function and can then 
  be added to our array of actions.

 */
      void logout()
    {
      Keyboard.press(KEY_LEFT_WINDOWS);
      delay(5);
      Keyboard.press(KEY_L);
      delay(5);
      Keyboard.releaseAll();
    }

  /*

  It it is important to point out that the use of delay() in a macro is
  strongly discouraged unless it is really... really... short. When the
  delay function runs, all processing is halted. This will result in
  LED animations freezing or behaving erratically as well as the potential
  to cause the device to disconnect from its host.

  A similar action can be defined that calls the snipping tool in windows.

  */


    void screenRegionCapture()
    {
      Keyboard.press(KEY_LEFT_SHIFT);
      delay(5);  
      Keyboard.press(KEY_LEFT_WINDOWS);
      delay(5);
      Keyboard.press(KEY_S);
      delay(5);
      Keyboard.releaseAll();
    }

  /*
  
  We have defined the actions but we have not associated them with key presses.
  We need to define a type that can contain them and load it up. You will remember
  earlier the HID-Project library is being used for a reason. That reason is the HID
  Consumer Control device codes. Those codes are an extended set beyond letters, numbers,
  and the standard keys. Media controls, for example, can be sent through the "Consumer"
  instead of the "Keyboard" object.
  
  Our new data structure here allows each button to have a key press or key release.
  Note the keyMapping type is the same dimensions as the key layout with the addition of a
  third dimension to contain separate key press and key release events.

    Standard keycodes can be found here:
    https://github.com/NicoHood/HID/blob/master/src/KeyboardLayouts/ImprovedKeylayouts.h#L61

    A full list of consumer keycodes can be found at:
    https://github.com/NicoHood/HID/blob/master/src/HID-APIs/ConsumerAPI.h

  */

    typedef void (*keyMapping[KEYROWS][KEYCOLS][2])();

    keyMapping keyMap =
      {{{ []{ Consumer.press(MEDIA_PREV );         }, []{ Consumer.release(MEDIA_PREV );        } },  //Row 0, Button 0
        { []{ Consumer.press(MEDIA_PLAY_PAUSE);    }, []{ Consumer.release(MEDIA_PLAY_PAUSE);   } },  //Row 0, Button 1
        { []{ Consumer.press(MEDIA_NEXT );         }, []{ Consumer.release(MEDIA_NEXT);         } },  //Row 0, Button 2
        { []{ Consumer.press(MEDIA_VOLUME_MUTE);   }, []{ Consumer.release(MEDIA_VOLUME_MUTE);  } }}, //Encoder Button
      {{  []{ Consumer.press(MEDIA_STOP);          }, []{ Consumer.release(MEDIA_STOP);         } },  //Row 1, Button 0
        { []{ screenRegionCapture();               }, []{                                       } },  //Row 1, Button 1
        { []{ logout();                            }, []{                                       } },  //Row 1, Button 2
        { []{       /* No key attached */          }, []{       /* No key attached */           } }}}; //No Key
    

  /*

  The last thing to do with our inputs is to initialize the pins. This function
  is called at startup and sets the mode of the pins. We are driving our columns
  as OUTPUT on HIGH and reading them as INPUT when they go LOW. This means we also
  need to configure our rows as input pins with the builtin pullup resistor. Finally
  the same settings are applied to the encoder pins.

  */


  void configureKeys()
  {

    //Initialize the columns to output 5V
    for(uint8_t c = 0; c < KEYCOLS; c++) 
    {
      pinMode(colPins[c], OUTPUT);
      digitalWrite(colPins[c], HIGH);
    }

    //Initialize the rows to input with internal pullup
    for(uint8_t r = 0; r < KEYROWS; r++) 
    {
      pinMode(rowPins[r], INPUT_PULLUP);
    }

    //Initialize the encoder pins to input with internal pullup
    pinMode(ENC_A, INPUT_PULLUP);
    pinMode(ENC_B, INPUT_PULLUP);

  }

/*
Chapter 3: Sparkling Unicorn Poop

   Addressable LEDs are now ubiquitous in computer accessories and components.
   Known as neopixels, dotstars, or simply by their model numbers, they are being
   used everywhere you would normally use a regular LED. Why bother having 
   a boring power light when you can have one that breathes and changes color? 

   Of course we can't have a cool transparent mechanical keyboard without 
   also having a bunch of addressable LEDs. Not to be confused with RGB LEDs,
   which are tri-color LED elements; addressable LEDs are actually a discrete, 
   integrated circuit with three or more colored LEDs situated in a tiny 2-5mm 
   emitter. They typically have between three and four pins for power and 
   communication.

   To address an LED, one must send a specifically timed sequence of pulses 
   down the data line (DIN). The IC in the LED decodes those pulses into color
   level values. When sending a pulse train with multiple LEDs, the first LED in
   the chain strips off the first set of color data and then passes the
   subsequent color sets to the remaining LEDs. Each strips off one pixel's worth
   of data and waits. There is then some sort of activation signal, usually
   pulling DIN low for a certain number of milliseconds, and the chips all
   turn on their color in unison. 

   Addressable LEDs come in both clocked and clockless varieties. The clocked
   varieties require external timing on one of their pins in addition to bytes
   of color data being transmitted. They can typically be driven very fast with 
   very high framerate over the clockless variety which require data be sent
   at a specific frequency.
   
   But are not learning how to drive addressable LEDs, that is a different class. 
   We are going to use FastLED because as the name implies it is very fast. 

  */

    #include <FastLED.h>

  /*

  FastLED has a pretty good repository of documentation 
  available on the github page. 

  https://github.com/FastLED/FastLED

  We have two types of LEDs included in this project. Due to how keyswitches 
  are shaped, we have some weird little reverse mount SK6812 LEDs that shine 
  through holes positioned under them. We also have some surface mount
  WS2812B that are oriented to shine out through the bottom of the acrylic.

  Each LED is individually controllable once we get them configured. To start 
  configuring them, we must refer back to our schematic and wiring. The
  DIN pin of the first LED in a chain is connected to the microcontroller
  and the DOUT is connected to the DIN of the next LED. Since the entire D 
  line is serialized, we only have to reference the pin it is connected to
  on the controller. As we have both top and bottom LEDs of two different
  types, we are using two different data pins. As such we need to reference 
  each set sparately. We also need to reference the total number of LEDs 
  in each chain.  

  Even between manufacturers of LED strips, there is no guarantee they will
  connect the individual LED elements in the same way. For this reason we 
  must also know the color ordering of the LEDs. This specifies the order in
  which colors are output on the serial line. There are RGB, GRB, RGBW, BRGW.. etc

  If you find yourself in a position where you don't have the color order
  documented for your specific LEDs, it is easy enough to determine what it is.
  Simply set the color order to RGB and then set the lights to RED. If the 
  lights are green, the Green is the first color. Do the same for Green and Blue.

  */

    //Top LEDs
    #define TLED_TYPE   SK6812    //Chip type (for controlling timing)
    #define TLED_DATA   3         //DIN
    #define NUMTLED     8         //Number of LEDs
    #define TCOLORORDER GRB       //Color order of LEDs
    static CRGB tled[8];

    //Bottom LEDs
    #define BLED_TYPE   WS2812
    #define BLED_DATA   18
    #define NUMBLED     5
    #define BCOLORORDER GRB  
    static CRGB bled[5];

  /* 

  We set some arrays up to contain the keymappings earlier. We will
  set another up now to contain the association of which LED lives
  under which key. FastLED also has its own CRGB object that we
  are going to be using to manage our colors.

  */

    static uint8_t ledKeys[KEYROWS][KEYCOLS] = {{0, 1, 2, 6},
                                                {3, 4, 5, 7}};

  /*

  Putting all of that together we can now call the 
  FastLED setup methods during keyboard startup.

  */

    void configureLEDs()
    {
      FastLED.addLeds<TLED_TYPE, TLED_DATA, TCOLORORDER>(tled, NUMTLED);
      FastLED.addLeds<BLED_TYPE, BLED_DATA, BCOLORORDER>(bled, NUMBLED);
    }

  /* 

  Setting the colors of an LED is as simple as assigning it that color. 
  Choose the CRGB array, specify the index of the LED you wish to set,
  and assign it a value.
  
  The encoder knob needs actions as well. It will be a volume knob for us.
  Turning the knob will send a volume control key code as well as a brief 
  flash of aqua through the LED underneath the knob. The CHSV() function
  is used to achieve this, though it could also be the RGB values directly
  assigned.
    
  */

    void encoderRightAction()
    {
      tled[7] = CHSV(150, 255, 255);
      Consumer.write(MEDIA_VOLUME_UP);
    }

    void encoderLeftAction()
    {
      tled[7] = CHSV(150, 255, 255);
      Consumer.write(MEDIA_VOLUME_DOWN);
    }


  /*
  We are halfway to the "brief flash" part. Right now we have
  turned the LED on to full brightness but we still need to turn it 
  off.
  
  Since it is addressable, it is easy to turn it off in a controlled
  and predictable manner. We just need to make a function that dims
  whatever color is currently assigned to the LED.

  FastLED has a function called fadeToBlackBy() that does a pretty
  good job of dimming lights. We are going to dim the keys by by 25%
  over the course of however many frames it takes to make them black.

  */
    void fadeKeys()
    {
      fadeToBlackBy(tled, NUMTLED, 64);
    }

  /* 
  
  In addition to the blink that is going to occur when a key is pressed,
  we will add an effect for the underglow LEDs that runs independently.

  Due to the looping nature of our program, we don't want to spend a
  lot of time on the animations. For this reason we will process one
  frame per execution of the function. 

  In order to maintain states in between function calls, we will
  keep some static counters around. This effect is the Fire2012 sketch
  that is included with FastLED. The only alterations made were renaming
  the led variable to match ours.

  https://github.com/FastLED/FastLED/blob/master/examples/Fire2012/Fire2012.ino

  The FastLED example sketches are great jumping off points to creat some
  really amazing looking effects with just a little bit of effort.

  */

    #define COOLING   5
    #define SPARKING 64

    CRGBPalette16 gPal = HeatColors_p;
    const bool gReverseDirection = false;

    void Fire2012WithPalette()
    {

      // Array of temperature readings at each simulation cell
      static uint8_t heat[NUMBLED];

        // Step 1.  Cool down every cell a little
        for( int i = 0; i < NUMBLED; i++) {
          heat[i] = qsub8( heat[i],  random8(0, ((COOLING * 10) / NUMBLED) + 2));
        }
      
        // Step 2.  Heat from each cell drifts 'up' and diffuses a little
        for( int k= NUMBLED - 1; k >= 2; k--) {
          heat[k] = (heat[k - 1] + heat[k - 2] + heat[k - 2] ) / 3;
        }
        
        // Step 3.  Randomly ignite new 'sparks' of heat near the bottom
        if( random8() < SPARKING ) {
          int y = random8(7);
          heat[y] = qadd8( heat[y], random8(160,255) );
        }

        // Step 4.  Map from heat cells to LED colors
        for( int j = 0; j < NUMBLED; j++) {
          // Scale the heat value from 0-255 down to 0-240
          // for best results with color palettes.
          uint8_t colorindex = scale8( heat[j], 240);
          CRGB color = ColorFromPalette( gPal, colorindex);
          int pixelnumber;
          if( gReverseDirection ) {
            pixelnumber = (NUMBLED-1) - j;
          } else {
            pixelnumber = j;
          }
          bled[pixelnumber] = color;
        }

    }

  /*

  That particular animation is a bit too busy so we will
  write a simpler one for demonstration purposes.  

  This function is a basic breathing animation. It uses a counter 
  as input to a sin function that makes a nice smooth wave.

  Eventually the int will overflow back to zero. When this happens
  there is a momentary blip in the animation due to sin(0) being
  out of phase with sin(254). To correct this we want to effectively
  put the loop point of the animation somewhere in phase or really 
  close to it. We can take our breathing speed and multiply that 
  by 2pi to figure out where we need to stop. Since it doesn't need
  as spectacular level of precision, multiplying by 6 will suffice.
  
  */

    const float breathingSpeed = 25;

    void breathing()
    {
      static uint16_t frame = 0;

      if(frame > breathingSpeed * 6) frame = 0;

      for(int i = 0; i < NUMBLED; i++) {
        bled[i] = CHSV(150, 255, 128.0 + (sin(frame / breathingSpeed) * 128.0));
      }      

      frame++;
    }

  /*

  At some point we are going to need some way to update all of the LEDs at 
  once. This is especially true if an idle animation is defined to run. 
  Remember before we set the LED underneath the encoder to bright aqua every 
  time the knob is turned. You can look at the led[] array variables as frame
  buffers. The colors for all of the pixels are stored until the show() function
  is called. When show() is called, it sends the current buffer to the LEDs to
  be rendered. The buffer remains unchanged so subsequent calls to show() will
  just refresh the same colors.

  So what we need to do is to make a function that we can repeatedly call
  that does all of our show() calls and updates all of the LEDs. Swapping from
  the breathing effect to the fire effect is done by uncommenting one and 
  commenting the other.

  */
 
    void updateLEDs()
    {   
      fadeKeys();
      breathing();
      //Fire2012WithPalette();  

      FastLED.show();
    }

  /*
  Chapter 4: Polling

  We are now at a point where we can actually poll that keys to
  see if any are pressed. To do that we need to select a column,
  pull it to ground, then read each key. Since all of the rows
  and columns are being held high when the switches are open,
  a pressed key will read low on the row pin for it's connected
  column. This is because when a keyswitch is pressed, it creates 
  a path connecting the INPUT_PULLUP row to the LOW (GND) column. 
  The diodes on each key prevent current from backing up the other 
  rows and columns and registering those keys as pressed.
  
  We spoke of debouncing earlier. This is where we are going to do it.
  Our key switches should not really need much debouncing. In order 
  for a bounce to cause a problem, the bouncing must coincide
  with the 50 microsecond interval give or take that it takes to 
  sample a pin... the second time a pin as been sampled.
  
  The heldCount[][] array maintains a count of how many successive 
  milliseconds a switch has been held. Each time a row has a key press
  read, a counter for that key is incremented in the heldCount[][]
  table. If the held count exceeds the BOUNCE_DELAY, it changes the
  key's state to Pressed in the keyStatus[][] table. If the switch
  bounces back to HIGH, then the count resets. 

  Similar to the encoder action, we are going to stick the same LED
  code here so when a key is pressed it creates a flash.

  */

    void pollKeys()
    {
      static uint8_t heldCount[KEYROWS][KEYCOLS] = {};

      for(uint8_t c = 0; c < KEYCOLS; c++) 
      {
        digitalWrite(colPins[c], LOW);

        for(uint8_t r = 0; r < KEYROWS; r++) 
        {

          if(!digitalRead(rowPins[r]))
          {

            tled[ledKeys[r][c]] = CHSV(150, 255, 255);

            heldCount[r][c]++;

            if(heldCount[r][c] >= BOUNCE_DELAY)
            {
              keyStatus[r][c] = true;
            }
          } else {
            heldCount[r][c] = 0;
            keyStatus[r][c] = false;
          }         
        }

        digitalWrite(colPins[c], HIGH);
      }
    }

/*

Our firmware is not going to press the key as soon as it detects
a key press. Even though we could technically reduce latency,
it takes very little time to check states to make sure the 
key presses are being detected and sent accurately.

During the polling period, all of the key states were
stored in a table. We now need to go through each of 
those keys and run each action... or don't.

Our lambda syntax allows those arbitrary functions to be
called without a lot of fuss by the syntax:

	  keyMap[row][column][press/release]();

So when iterating through the key status array, if a pressed state
is encountered, the action for that row and column is executed. If a 
key was previously pressed and it has now been released, the release
action is executed.
  
*/

  void pressKeys()
  {
    //Loop through columns and rows 
    for(uint8_t c = 0; c < KEYCOLS; c++) 
    {
      for(uint8_t r = 0; r < KEYROWS; r++) 
      {
        if(keyStatus[r][c])
        {        
          if(keyStatus[r][c] != lastStatus[r][c])
          {         
            lastStatus[r][c] = true; 
            keyMap[r][c][0]();
          }
        } else {
          if(keyStatus[r][c] != lastStatus[r][c])
          {
            lastStatus[r][c] = false; 
            keyMap[r][c][1]();
          }
        }
      }
    }
  }

/*
  The encoder needs to be polled in a special way. Rotary encoders
  utilize two pins that share a common ground. It is what is 
  connecting those pins to ground that is the tricky bit: 
  Two traces on a quadrature wheel that are 90 degrees out of phase with
  one another. If you turn the encoder knob you will feel a bump.
  As the shaft rotated into that bump, it briefly flicked a brush across 
  a contact for PIN A and then another for PIN B. This sequence of A => B
  or B => A can be expressed mathematically with a truth table.

       A  B
    1  0  0
    2  0  1
    3  1  1
    4  1  0

  One of the most efficient ways to read an encoder you will likely ever
  encounter is one using a lookup table and some clever bit shifting.

  This works a lot better on an interrupt pin, but we can make do 
  when polling by storing the last state of the encoder and only 
  changing it when there is a change.

  The truth table above, when applied to the encoder knob's output, 
  results in a finite number of combinations that the two encoder
  pins will generate. These seqences, when paired with a direction of 
  1, 0, or -1, allow us to determine whether the knob moved clockwise,
  counter clockwise, or is sitting still. 

  The two postions in the encoder lookup table correspond to the final 
  two states of the encoder pins after moving one complete detent. 

  This writeup explains it all pretty well in a lot more detail. It also
  explains how to utilize it with an ISR (interrupt service routine).

  https://makeatronics.blogspot.com/2013/02/efficiently-reading-quadrature-with.html

*/

void pollEncoder()
{
  static int8_t lookup[] = {0,0,0,0,1,0,0,0,-1,0,0,0,0,0,0,0};
  static uint8_t lastEncoder = 0;

  bool enca = !(bool)digitalRead(ENC_A);
  bool encb = !(bool)digitalRead(ENC_B);

  uint8_t thisEncoder = (lastEncoder << 2) | enca | encb << 1;

  if((0x03 & lastEncoder) != (0x03 & thisEncoder))
  {
    if(lookup[thisEncoder & 0xF] ==  1) encoderRightAction();
    if(lookup[thisEncoder & 0xF] == -1) encoderLeftAction();
    lastEncoder = thisEncoder;
  }
 
}

/*

Chapter 5: Putting it all together

  We have a bunch of different functions set up but nothing is doing anything 
  with them yet. You will recall that we will be polling pins at a very high rate. 
  In addition to the polling, we have LEDs to manage. In addition to the
  LEDs, there are other housekeeping things happening behind the scenes
  to manage the serial communications with the USB Host device.

  Keeping with the general design of an Arduino sketch, we are going
  to use the Setup() function to configure everything that needs configuring
  at startup. First we configure the keys and LEDs before finally initializing
  the USB HID communication channels.
   
  */

    void setup() 
    {
      configureKeys();
      configureLEDs();

      Keyboard.begin(); 
      Consumer.begin();  
    }

  /*
  
  After the setup() routine runs, the firmware will automatically start running
  loop() ad infinitum until an error condition is reached or the power is lost.

  In the loop, we need to poll the keys, poll the encoder pins, and update the LEDs.
  The keys don't really need to be polled every time through the loop, so we can
  keep track of how often we are updating the keys and LEDs with a couple of variables.

  The keys themselves will be polled every millisecond. The LEDs will be updated
  every 33 milliseconds. Updating the LEDs at this rate maintains a frame rate
  of about 30 frames per second.

  The current timestamp of the loop is stored as well. This allows time to be more 
  accurately kept in case a task is taking longer than it should. We will poll the
  encoder early. We will poll the encoder often. After the encoder is polled. If it
  is time to poll the keys or update the LEDs, do that.

  Finally, do it all again. 

  */

  void loop() 
  {


    long cur = millis();
    static long lastKeyUpdate = cur;
    static long lastLEDUpdate = cur;

    pollEncoder();

    if(millis() - lastKeyUpdate >= 1)
    {
      pollKeys();
      pressKeys();  
      lastKeyUpdate = cur;
    } 

    if(millis() - lastLEDUpdate >= 33)
    {
      updateLEDs();
      lastLEDUpdate = cur;   
    }

  }




