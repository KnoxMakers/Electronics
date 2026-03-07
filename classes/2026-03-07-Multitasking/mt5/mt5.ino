const int ledPins[] = {10, 11, 12, 13};
unsigned long lastToggles[] = {0, 0, 0, 0};
bool ledStates[] = {LOW, LOW, LOW, LOW};
const int numLeds = 4;

const int BUTTON_PIN = 17;
bool lastButtonState = HIGH;
unsigned long lastButtonCheck = 0;

// Global Variables for Ping-Pong
int pingPongLed = 0;
int pingPongDir = 1; // 1 for forward, -1 for backward
unsigned long lastPingPong = 0;
const unsigned long pingPongInterval = 100000; // 100ms in micros

void task_SerialCommand(unsigned long now);
char commandUndo[32]; // Buffer to store incoming characters
int bufferIndex = 0;
bool commandReady = false;

// State Machine Modes
enum SystemMode { ALL_OFF, INDEPENDENT_BLINK, CHASER, PING_PONG };
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

    task_SerialCommand(now);

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
      for (int i = 0; i < numLeds; i++) {
        digitalWrite(ledPins[i], LOW);
      }
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
    case PING_PONG:
      if (now - lastPingPong >= pingPongInterval) {
        lastPingPong = now;

        // Turn off the current LED before moving
        digitalWrite(ledPins[pingPongLed], LOW);

        // Move to the next index
        pingPongLed += pingPongDir;

        // Bounce! If we hit the ends, reverse the direction
        if (pingPongLed >= numLeds - 1 || pingPongLed <= 0) {
          pingPongDir *= -1;
        }

        // Turn on the new LED
        digitalWrite(ledPins[pingPongLed], HIGH);
      }
      break;
  }
}

void task_SerialCommand(unsigned long now) {
  // Check if there is data, but DON'T wait for it
  while (Serial.available() > 0) {
    char inChar = (char)Serial.read();
    
    // If it's a newline, the command is complete
    if (inChar == '\n') {
      commandUndo[bufferIndex] = '\0'; // Null-terminate the string
      commandReady = true;
      bufferIndex = 0;
    } else {
      // Add character to buffer if there's room
      if (bufferIndex < 31) {
        commandUndo[bufferIndex++] = inChar;
      }
    }
  }

  // If a command was finished, act on it
  if (commandReady) {
    if (strcasecmp(commandUndo, "OFF") == 0) currentMode = ALL_OFF;
    if (strcasecmp(commandUndo, "BLINK") == 0) currentMode = INDEPENDENT_BLINK;
    if (strcasecmp(commandUndo, "CHASE") == 0) currentMode = CHASER;
    if (strcasecmp(commandUndo, "PING_PONG") == 0) currentMode = PING_PONG;
    
    Serial.print("Executing: ");
    Serial.println(commandUndo);
    commandReady = false; 
  }
}

