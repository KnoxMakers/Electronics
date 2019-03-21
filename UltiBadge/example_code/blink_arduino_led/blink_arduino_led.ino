void setup() { // set the LED pin as an output
  pinMode(LED_BUILTIN,OUTPUT);
}

// the loop function runs over and over forever, after setup() runs
void loop() {
  digitalWrite(LED_BUILTIN,HIGH); // turn the LED on
  delay(250); // wait for 1/4 second
  digitalWrite(LED_BUILTIN, LOW); // turn the LED off
  delay(250); // wait for 1/4 second
}
