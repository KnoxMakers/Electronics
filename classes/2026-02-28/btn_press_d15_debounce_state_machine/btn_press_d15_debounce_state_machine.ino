#include <Arduino.h>
#include "hardware/timer.h"

const int BUTTON_PIN = 15;
const int LED_PIN = 25;

volatile uint32_t pressCount = 0;
volatile bool needsReport = false;
volatile bool lastStableState = HIGH;

volatile alarm_id_t debounce_alarm_id = 0;

// ISR Callback
int64_t alarm_callback(alarm_id_t id, void *user_data) {
    bool currentState = digitalRead(BUTTON_PIN);
    
    if (currentState != lastStableState) {
        if (currentState == LOW) { // Valid Press
            pressCount++;
            needsReport = true;
            sio_hw->gpio_togl = (1 << LED_PIN); 
        }
        lastStableState = currentState;
    }
    
    debounce_alarm_id = 0; // Reset ID so we know no alarm is pending
    return 0; 
}

// The GPIO ISR
void handle_gpio_event() {
    // If an alarm is already pending, cancel it so we can "restart" the clock
    if (debounce_alarm_id > 0) {
        cancel_alarm(debounce_alarm_id);
    }
    
    // Schedule the check for 50ms from now
    debounce_alarm_id = add_alarm_in_ms(50, alarm_callback, NULL, false);
}

void setup() {
    Serial.begin(115200);
    sleep_ms(2000);
    pinMode(LED_PIN, OUTPUT);
    pinMode(BUTTON_PIN, INPUT_PULLUP);
    
    sio_hw->gpio_clr = (1 << LED_PIN);

    attachInterrupt(digitalPinToInterrupt(BUTTON_PIN), handle_gpio_event, CHANGE);

    Serial.println("State machine counter ready, connect button between D15 and GND.");
}

void loop() {
    if (needsReport) {
        needsReport = false;
        Serial.print("Stable Count: ");
        Serial.println(pressCount);
    }
}
