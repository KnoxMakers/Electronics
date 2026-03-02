#include <Arduino.h>

const int BUTTON_PIN = 15;
const int LED_PIN = 25; 

volatile uint32_t pressCount = 0;
volatile bool updated = false;

// Debounce variables
volatile uint32_t lastInterruptTime = 0;
const uint32_t debounceDelay = 100;

// The ISR
void handleButtonPress() {
    uint32_t interruptTime = millis();

    // If interrupts come faster than 200ms, assume it's a bounce and ignore
    if (interruptTime - lastInterruptTime > debounceDelay) {
        pressCount++;
        updated = true;
        digitalWrite(LED_PIN, !digitalRead(LED_PIN));
        
        lastInterruptTime = interruptTime;
    }
}

void setup() {
    Serial.begin(115200);
    pinMode(LED_PIN, OUTPUT);
    pinMode(BUTTON_PIN, INPUT_PULLUP);

    // Attach interrupt to FALLING edge (Button to GND)
    attachInterrupt(digitalPinToInterrupt(BUTTON_PIN), handleButtonPress, FALLING);

    Serial.println("Debounced counter ready, connect button between D15 and GND.");
}

void loop() {
    if (updated) {
        updated = false; 
        Serial.print("Clean Press Count: ");
        Serial.println(pressCount);
    }
}
