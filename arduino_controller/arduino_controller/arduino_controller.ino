#define SETBIT(TARGET, TARGETBIT) TARGET |= (1<<TARGETBIT)
#define UNSETBIT(TARGET, TARGETBIT) TARGET &= ~(1<<TARGETBIT)

void setup() {
  pinMode(12, OUTPUT);
  pinMode(13, OUTPUT);
  digitalWrite(12, false);

  // as we use a 16MHZ clock the PLL input frequency has to be divided by 2
  PLLCSR |= (1<<PINDIV);
  // enable PLL
  PLLCSR |= (1<<PLLE);

  // wait until the PLL is locked
  bool locked = false;
  do {
    locked = PLLCSR & (1<<PLOCK);
    digitalWrite(12, true);
  } while (!locked);

  // configure the PLL frequency
  PLLFRQ |= (0<<PINMUX);
  // divide the PLL frequency by 2 for the USB module -> 48 MHz
  PLLFRQ |= (1<<PLLUSB);
  // divide the PLL frequency by 1.5 for the high speed timer -> 64 MHz
  PLLFRQ |= (0<<PLLTM0);
  PLLFRQ |= (1<<PLLTM1);
  // set the PLL frequency to 96MHz
  PLLFRQ |= (0<<PDIV0);
  PLLFRQ |= (1<<PDIV1);
  PLLFRQ |= (0<<PDIV2);
  PLLFRQ |= (1<<PDIV3);

  // count up to the value of OCR4C
  TCCR4D = 0;

  // set compare value A of timer 4 t0 100
  OCR4A = 67;
  
  // set 671 as the maximum value of timer 4
  TC4H = 0x02;
  OCR4C = 0x9F;

  TIMSK4 = 0;
  // activate timer 4 interrupt when it the value reaches OCR4A
  TIMSK4 |= (1<<OCIE4A);
  // activate timer 4 interrupt when it returns to 0
  TIMSK4 |= (1<<TOIE4);
  
  // set the prescaler of timer 4 to /1 at an input frequency (set further above via PLL to 64 MHz) -> 14,901 ns per count
  TCCR4B = 0;
  TCCR4B |= (1<<CS40);
  TCCR4B |= (0<<CS41);
  TCCR4B |= (0<<CS42);
  TCCR4B |= (0<<CS43);
  
  // allow interrupts
  sei();
}

void loop() { 
}

ISR(TIMER4_OVF_vect){
  SETBIT(PORTC, PORTC7);
}

ISR(TIMER4_COMPA_vect){
  UNSETBIT(PORTC, PORTC7);
}
