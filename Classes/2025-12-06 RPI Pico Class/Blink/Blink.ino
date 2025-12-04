// Blink
// Turns an LED on for 0.1 second, then off for 0.1 second, repeatedly.

  
// the setup() function runs one time at power-up or reset
void setup() {
  pinMode(LED_BUILTIN, OUTPUT); // initialize the pin assigned to the on-board LED as an output
}

// the loop() function runs repeatedly forever
void loop() {
  digitalWrite(LED_BUILTIN, HIGH); // Drive the output HIGH, turning the LED on
  delay(100);                      // wait for 100ms
  digitalWrite(LED_BUILTIN, LOW);  // Drive the output LOW, turning the LED on
  delay(100);                      // wait for 100ms
}
