bool state = false;

void setup() {
  pinMode(13, OUTPUT);

  // as we use a 16MHZ clock the PLL input frequency has to be divided by 2
  PLLCSR |= (1<<PINDIV);
  // enable PLL
  PLLCSR |= (1<<PLLE);

  // wait until the PLL is locked
  bool locked = false;
  do {
    locked = PLLCSR & (1<<PLOCK);
  } while (!locked);

  // configure the PLL frequency
  PLLFRQ = 0;
  PLLFRQ |= (0<<PINMUX);
  // divide the PLL frequency by 2 for the USB module -> 48 MHz
  PLLFRQ |= (1<<PLLUSB);
  // divide the PLL frequency by 1.5 for the high speed timer -> 64 MHz
  PLLFRQ |= (0<<PLLTM0);
  PLLFRQ |= (1<<PLLTM1);
  // set the PLL frequency to 96MHz
  PLLFRQ |= (0<<PDIV0);
  PLLFRQ |= (1<<PDIV1);
  PLLFRQ |= (1<<PDIV2);
  PLLFRQ |= (1<<PDIV3);

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
  
  // set the prescaler of timer 4 to /1 -> 59,604 ns per count
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
