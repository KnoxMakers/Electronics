// Generates a 38.5kHz PWM signal with duty cycles of 4%, 50%, 97%, repeating indefinitely
//
// written by Ray Crampton
//
// based on https://gist.github.com/chendy/69454f6ec77b54f9a710
//
//

byte oscOut = 3 ;  // output pin

void setup(){
 
  pinMode(oscOut, OUTPUT);

  OCR2A = 51;     // defines the frequency 51 = 38.4 KHz, 54 = 36.2 KHz, 58 = 34 KHz, 62 = 32 KHz
  TCCR2A = _BV(COM2B1) | _BV(WGM21) | _BV(WGM20);   // COM2B1 (output to OC2B) ; WGMode 7 Fast PWM (part 1)
  TCCR2B = _BV(WGM22)  | _BV(CS21);                 // prescalere x8 ;  WGMode 7 Fast PWM (part 1)
}

void loop(){

    OCR2B = 1; // ~4% duty cycle
    delayMicroseconds(1000);
    OCR2B = 25; // ~50% duty cycle
    delayMicroseconds(1000);
    OCR2B = 50; // ~97% duty cycle
    delayMicroseconds(1000);
}
