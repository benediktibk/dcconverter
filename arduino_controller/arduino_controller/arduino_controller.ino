void setup() {
  pinMode(13, OUTPUT);
}

void loop() {
  int delayValue = 0;
  digitalWrite(13, HIGH);
  delay(delayValue);
  digitalWrite(13, LOW);
  delay(delayValue);
}
