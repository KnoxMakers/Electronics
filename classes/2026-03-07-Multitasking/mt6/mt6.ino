const int TICK_INTERVAL = 1000; // 1000us is our 'tick'

const int LED1 = 10;
const int LED2 = 11;
const int LED3 = 12;
const int LED4 = 13;

const int BUTTON_PIN = 17;
bool lastButtonState = HIGH; // Default HIGH for INPUT_PULLUP
bool currentButtonState;

unsigned long millisecondCounter = 0; // 0.001 seconds

int counter = 0;

void setup() {
pinMode(BUTTON_PIN, INPUT_PULLUP);

  pinMode(LED1, OUTPUT);
  digitalWrite(LED1, LOW);

  pinMode(LED2, OUTPUT);
  digitalWrite(LED2, LOW);

  pinMode(LED3, OUTPUT);
  digitalWrite(LED3, LOW);

  pinMode(LED4, OUTPUT);
  digitalWrite(LED4, LOW);
}

unsigned long previousMicros = micros();

void loop() {
    unsigned long currentMicros = micros();

    // this block executes every 1ms
    if (currentMicros - previousMicros >= TICK_INTERVAL) {
        previousMicros = currentMicros;
        millisecondCounter++;

        // this block executes every 250ms
        if (millisecondCounter >= 200) {
            millisecondCounter = 0;
            currentButtonState = digitalRead(17); // get button state
            if (currentButtonState == LOW && lastButtonState == HIGH) {
                counter++;
                if (counter > 0b1111) {
                    counter = 0;
                }

                if (counter & 0b0001) {
                    digitalWrite(LED1, HIGH);
                }
                else {
                    digitalWrite(LED1, LOW);
                }

                if (counter & 0b0010) {
                    digitalWrite(LED2, HIGH);
                }
                else {
                    digitalWrite(LED2, LOW);
                }

                if (counter & 0b0100) {
                    digitalWrite(LED3, HIGH);
                }
                else {
                    digitalWrite(LED3, LOW);
                }

                if (counter & 0b1000) {
                    digitalWrite(LED4, HIGH);
                }
                else {
                    digitalWrite(LED4, LOW);
                }

            }
        }
    }
}