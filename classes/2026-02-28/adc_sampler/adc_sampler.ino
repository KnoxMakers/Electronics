#include <Arduino.h>
#include "hardware/adc.h"
#include "hardware/timer.h"

// Constants
const uint VIN_PIN = 14;
const int ADC_CHANNEL = 0; // GPIO 26
const int SAMPLE_RATE_MS = 100; // 0.1 seconds

// Volatile variables for ISR-to-Main communication
volatile uint16_t adc_value = 0;
volatile bool data_ready = false;

// This runs in the background every 100ms
bool timer_callback(struct repeating_timer *t) {
    adc_value = adc_read();
    data_ready = true;
    
    return true; // Keep the timer running
}

struct repeating_timer timer;

void setup() {
    Serial.begin(115200);
    
    // Initialize ADC hardware
    adc_init();
    adc_gpio_init(26); // ADC0 is on GPIO 26
    adc_select_input(ADC_CHANNEL);

    gpio_init(VIN_PIN);
    gpio_set_dir(VIN_PIN, GPIO_OUT);
    gpio_put(VIN_PIN, 1);

    // 2. Start the repeating timer
    // A negative delay (-250) ensures the period is measured from 
    // the start of one callback to the start of the next.
    if (!add_repeating_timer_ms(-SAMPLE_RATE_MS, timer_callback, NULL, &timer)) {
        Serial.println("Failed to initialize timer");
    }
}

void loop() {
    // 3. Main loop handles the "slow" Serial output
    if (data_ready) {
        data_ready = false;
        
        // Output for Serial Plotter
        Serial.println(adc_value);
    }
}
