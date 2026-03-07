// Structure to define our LED tasks
struct LedTask {
  int pin;
  unsigned long interval;    // Interval in microseconds
  unsigned long lastToggle;  // Last time the LED was flipped
  bool state;                // Current ON/OFF state
};

LedTask tasks[] = {
  {10, 100000, 0, LOW},  // LED 0: 10Hz (fast)
  {11, 250000, 0, LOW},  // LED 1: 4Hz
  {12, 500000, 0, LOW},  // LED 2: 2Hz
  {13, 1000000, 0, LOW}  // LED 3: 1Hz (slow)
};

const int numTasks = sizeof(tasks) / sizeof(tasks[0]);

void setup() {
  for (int i = 0; i < numTasks; i++) {
    pinMode(tasks[i].pin, OUTPUT);
    digitalWrite(tasks[i].pin, tasks[i].state);
  }
}

void loop() {
  // Capture current time once per loop for consistency
  unsigned long currentMicros = micros();

  for (int i = 0; i < numTasks; i++) {
    if (currentMicros - tasks[i].lastToggle >= tasks[i].interval) {
      tasks[i].lastToggle = currentMicros;
      tasks[i].state = !tasks[i].state;
      digitalWrite(tasks[i].pin, tasks[i].state);
    }
  }
}