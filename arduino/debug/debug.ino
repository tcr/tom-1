const byte ledPin = 13;
const byte interruptPin = 2;
volatile byte state = LOW;

void setup() {
  // LED
  pinMode(ledPin, OUTPUT);

  // clk input
  pinMode(interruptPin, INPUT_PULLUP);
  attachInterrupt(digitalPinToInterrupt(interruptPin), blink, RISING);

  // TOS=0 input
  pinMode(interruptPin, INPUT_PULLUP);

  // hi 8-bit
  pinMode(12, OUTPUT);
  pinMode(11, OUTPUT);
  pinMode(10, OUTPUT);
  pinMode(9, OUTPUT);
  pinMode(8, OUTPUT);
  pinMode(7, OUTPUT);
  pinMode(6, OUTPUT);
  pinMode(5, OUTPUT);

  // low 8-bit
  pinMode(4, OUTPUT);
  pinMode(3, OUTPUT);
  pinMode(19, OUTPUT);
  pinMode(18, OUTPUT);
  pinMode(17, OUTPUT);
  pinMode(16, OUTPUT);
  pinMode(15, OUTPUT);
  pinMode(14, OUTPUT);
}

void loop() {
  digitalWrite(ledPin, state);

  digitalWrite(12, state);
  digitalWrite(11, !state);
  digitalWrite(10, !state);
  digitalWrite(9, state);
  digitalWrite(8, state);
  digitalWrite(7, !state);
  digitalWrite(6, !state);
  digitalWrite(5, !state);
}

void blink() {
  state = !state;
}
