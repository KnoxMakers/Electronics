#include <Arduino.h>

const int BUTTON_PIN = 15;

volatile uint32_t pressCount = 0;
volatile bool updated = false;

// ISR
void handleButtonPress() {
    pressCount++;
    updated = true;
}

void setup() {
    Serial.begin(115200);
    delay(1000);

    pinMode(BUTTON_PIN, INPUT_PULLUP);

    // Attach interrupt to FALLING edge (Button to GND)
    attachInterrupt(digitalPinToInterrupt(BUTTON_PIN), handleButtonPress, FALLING);

    Serial.println("Counter ready, connect button between D15 and GND.");
}

void loop() {
    if (updated) {
        updated = false; 
        Serial.print("Button Press Count: ");
        Serial.println(pressCount);
    }
}
