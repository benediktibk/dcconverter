int timeOn;
int timeOff;

void setup() {
  pinMode(13, OUTPUT);
  timeOn = 10;
  timeOff = 134 - timeOn;
}

void loop() {
  digitalWrite(13, HIGH);
  delayMicroseconds(timeOn);
  digitalWrite(13, LOW);
  delayMicroseconds(timeOff);
}
