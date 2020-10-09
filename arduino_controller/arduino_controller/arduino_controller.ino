bool state = false;

void setup() {
  pinMode(13, OUTPUT);

  // count up to the value of OCR4C
  TCCR4D = 0;

  // set compare value A of timer 4 t0 100
  OCR4A = 100;
  
  // set 1000 as the maximum value of timer 4
  TC4H = 0x03;
  OCR4C = 0xE8;

  TIMSK4 = 0;
  // activate timer 4 interrupt when it the value reaches OCR4A
  TIMSK4 |= (1<<OCIE4A);
  // activate timer 4 interrupt when it returns to 0
  TIMSK4 |= (1<<TOIE4);
  
  // set the prescaler of timer 4 to /1 -> 0,977 ms per count
  TCCR4B = 0;
  TCCR4B |= (1<<CS40);
  TCCR4B |= (0<<CS41);
  TCCR4B |= (0<<CS42);
  TCCR4B |= (0<<CS43);
  
  // allow interrupts
  sei();
}

void loop() { 
  digitalWrite(13, state);
}

ISR(TIMER4_OVF_vect){
  state = true;
}

ISR(TIMER4_COMPA_vect){
  state = false;
}
