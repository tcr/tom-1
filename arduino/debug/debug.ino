#include "./arduino-timer.h"

auto timer = timer_create_default(); // create a timer with default settings

const byte ledPin = 13;
const byte interruptPin = 2;
volatile byte state = 0;


volatile byte frame = 0;

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

  pinMode(0, OUTPUT);
  pinMode(1, OUTPUT);

  state = 0x0;
  blink();
  
  // call the toggle_led function every 1000 millis (1 second)
  timer.every(100, blink_timer);
}

void loop() {
  timer.tick(); // tick the timer
}

void step(byte left, byte right) {
  digitalWrite(12, (left & 0x80) != 0);
  digitalWrite(11, (left & 0x40) != 0);
  digitalWrite(10, (left & 0x20) != 0);
  digitalWrite(9, (left & 0x10) != 0);
  digitalWrite(8, (left & 0x08) != 0);
  digitalWrite(7, (left & 0x04) != 0);
  digitalWrite(6, (left & 0x02) != 0);
  digitalWrite(5, (left & 0x01) != 0);

  digitalWrite(4, (right & 0x80) != 0);
  digitalWrite(3, (right & 0x40) != 0);
  digitalWrite(19, (right & 0x20) != 0);
  digitalWrite(18, (right & 0x10) != 0);
  digitalWrite(17, (right & 0x08) != 0);
  digitalWrite(16, (right & 0x04) != 0);
  digitalWrite(15, (right & 0x02) != 0);
  digitalWrite(14, (right & 0x01) != 0);
}

bool blink_timer(void *) {
  blink();
  return true;
}

void blink() {
  digitalWrite(ledPin, state & 1);
  digitalWrite(0, !(state & 1));
  digitalWrite(1, (state & 1));

//  delay(1);
  if (state == 0) {
    step(0x2, 0x0);
  } else if (state == 1) {
    step(0x0, 0x01);
  } else if (state == 2) {
    step(0x0, 0x0);
  } else if (state == 3) {
    step(0x3, 0x0);
  }
  
  state = state + 1;
  if (state == 4) {
    state = 2;
  }
  
  frame = frame + 1;
  if (frame == 20) {
    state = 0;
    frame = 0;
  }
}
