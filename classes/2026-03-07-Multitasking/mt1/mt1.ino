const int TICK_INTERVAL = 1000; // 1000us is our 'tick'

const int LED1_10_MS   = 10;  // toggles every 10ms
const int LED1_100_MS  = 11;  // toggles every 100ms
const int LED1_1000_MS = 12;  // toggles every 1s
const int LED1_3000_MS = 13;  // toggles every 5s

bool led_10_ms_state   = LOW;
bool led_100_ms_state  = LOW;
bool led_1000_ms_state = LOW;
bool led_3000_ms_state = LOW;

unsigned long millisecondCounter = 0; // 0.001 seconds
unsigned long centisecondCounter = 0; // 0.01  seconds
unsigned long decisecondCounter  = 0;  // 0.1   seconds
unsigned long secondCounter      = 0;  // 1.0   seconds
unsigned long threeSecondCounter = 0;  // 3.0   seconds


void setup() {
  pinMode(LED1_10_MS, OUTPUT);
  digitalWrite(LED1_10_MS, led_10_ms_state);

  pinMode(LED1_100_MS, OUTPUT);
  digitalWrite(LED1_100_MS, led_100_ms_state);

  pinMode(LED1_1000_MS, OUTPUT);
  digitalWrite(LED1_1000_MS, led_1000_ms_state);

  pinMode(LED1_3000_MS, OUTPUT);
  digitalWrite(LED1_3000_MS, led_3000_ms_state);
}

unsigned long previousMicros = micros();

void loop() {
    unsigned long currentMicros = micros();

    // this block executes every 1ms
    if (currentMicros - previousMicros >= TICK_INTERVAL) {
        previousMicros = currentMicros;
        millisecondCounter++;

        // this block executes every 10ms
        if (millisecondCounter >= 10) {
            millisecondCounter = 0;
            centisecondCounter++;

            led_10_ms_state = !led_10_ms_state;
            digitalWrite(LED1_10_MS, led_10_ms_state);
        
            // this block executes every 100ms
            if (centisecondCounter >= 10) {
                centisecondCounter = 0;
                decisecondCounter++;

                led_100_ms_state = !led_100_ms_state;
                digitalWrite(LED1_100_MS, led_100_ms_state);

                if (decisecondCounter >= 10) {
                    decisecondCounter = 0;
                    secondCounter++;

                    led_1000_ms_state = !led_1000_ms_state;
                    digitalWrite(LED1_1000_MS, led_1000_ms_state);

                    if (secondCounter >= 10) {
                        secondCounter = 0;
                    }

                    threeSecondCounter++;
                    if (threeSecondCounter == 3) {
                        threeSecondCounter = 0;
                        led_3000_ms_state = !led_3000_ms_state;
                        digitalWrite(LED1_3000_MS, led_3000_ms_state);

                    }
                }
            }
        }
    }
}