const int ledPins[] = {10, 11, 12, 13};
unsigned long lastToggles[] = {0, 0, 0, 0};
bool ledStates[] = {LOW, LOW, LOW, LOW};
const int numLeds = 4;

const int BUTTON_PIN = 17;
bool lastButtonState = HIGH;
unsigned long lastButtonCheck = 0;

// State Machine Modes
enum SystemMode { ALL_OFF, INDEPENDENT_BLINK, CHASER, ALL_LIT };
SystemMode currentMode = ALL_OFF;

void setup() {
  for (int i = 0; i < numLeds; i++) {
    pinMode(ledPins[i], OUTPUT);
  }
  pinMode(BUTTON_PIN, INPUT_PULLUP);
  pinMode(LED_BUILTIN, OUTPUT);
  Serial.begin(115200);
}

void loop() {
  unsigned long now = micros();

  // Button Polling & State Switching (Every 1ms)
  if (now - lastButtonCheck >= 1000) {
    lastButtonCheck = now;
    bool currentButtonState = digitalRead(BUTTON_PIN);

    // Detect Press (Falling Edge)
    if (currentButtonState == LOW && lastButtonState == HIGH) {
      // Cycle through states: 0 -> 1 -> 2 -> 0...
      currentMode = (SystemMode)((currentMode + 1) % 4);
      
      // Reset all LEDs when changing modes for a clean start
      for(int i=0; i<numLeds; i++) digitalWrite(ledPins[i], LOW);
      
      Serial.print("Mode Switched to: ");
      Serial.println(currentMode);
    }
    lastButtonState = currentButtonState;
  }

  // Execute Logic based on the State Machine
  switch (currentMode) {
    
    case ALL_OFF:
      // LEDs stay off, nothing to do here
      break;

    case INDEPENDENT_BLINK:
      // Each LED blinks at a different rate (100ms, 200ms, 300ms, 400ms)
      for (int i = 0; i < numLeds; i++) {
        unsigned long interval = (i + 1) * 100000; 
        if (now - lastToggles[i] >= interval) {
          lastToggles[i] = now;
          ledStates[i] = !ledStates[i];
          digitalWrite(ledPins[i], ledStates[i]);
        }
      }
      break;

    case CHASER:
      // A simple sequence: one LED turns on every 150ms
      static int currentLed = 0;
      static unsigned long lastChase = 0;
      if (now - lastChase >= 150000) {
        lastChase = now;
        digitalWrite(ledPins[currentLed], LOW); // Turn off old
        currentLed = (currentLed + 1) % numLeds; // Move to next
        digitalWrite(ledPins[currentLed], HIGH); // Turn on new
      }
      break;
    case ALL_LIT:
      for (int i = 0; i < numLeds; i++) {
        digitalWrite(ledPins[i], HIGH);
      }
      break;
  }
}
