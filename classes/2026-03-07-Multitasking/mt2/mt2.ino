const int ledPins[] = {10, 11, 12, 13};
const unsigned long intervals[] = {100000, 250000, 400000, 500000}; // in microseconds

// State variables
unsigned long lastToggles[] = {0, 0, 0, 0};
bool ledStates[] = {LOW, LOW, LOW, LOW};

const int numLeds = 4;

void setup() {
  // Initialize all pins as outputs
  for (int i = 0; i < numLeds; i++) {
    pinMode(ledPins[i], OUTPUT);
    digitalWrite(ledPins[i], ledStates[i]);
  }
}

void loop() {
  unsigned long currentMicros = micros();

  // Task: Process LED 0
  if (currentMicros - lastToggles[0] >= intervals[0]) {
    lastToggles[0] = currentMicros;
    ledStates[0] = !ledStates[0];
    digitalWrite(ledPins[0], ledStates[0]);
  }

  // Task: Process LED 1
  if (currentMicros - lastToggles[1] >= intervals[1]) {
    lastToggles[1] = currentMicros;
    ledStates[1] = !ledStates[1];
    digitalWrite(ledPins[1], ledStates[1]);
  }

  // Task: Process LED 2
  if (currentMicros - lastToggles[2] >= intervals[2]) {
    lastToggles[2] = currentMicros;
    ledStates[2] = !ledStates[2];
    digitalWrite(ledPins[2], ledStates[2]);
  }

  // Task: Process LED 3
  if (currentMicros - lastToggles[3] >= intervals[3]) {
    lastToggles[3] = currentMicros;
    ledStates[3] = !ledStates[3];
    digitalWrite(ledPins[3], ledStates[3]);
  }

  // The CPU is now free to check buttons or sensors here...
}