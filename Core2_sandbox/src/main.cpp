#include <Arduino.h>
#include <M5Core2.h>
#include <Wire.h>

void setup() {
  delay(2000);
  Serial.begin(115200);
  M5.begin(true, true, true, true);

  Wire.begin(42);
}

void loop() {
  Serial.println("HELLO");
  delay(1000);
}
