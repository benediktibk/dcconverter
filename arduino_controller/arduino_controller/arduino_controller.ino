enum CountLength {
  CountLengthFast, // 15ns
  CountLengthSlow // 256us
};

const CountLength countLength = CountLengthSlow;
const bool outputInverted = true;

void setup() {
  pinMode(12, OUTPUT);
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

  // set compare value A of timer 4 to 67
  OCR4A = 67;
  
  // set 671 as the maximum value of timer 4
  TC4H = 0x02;
  OCR4C = 0x9F;
  
  // set the prescaler of timer 4 to adjust the frequency, based on the input frequency of 64 MHz of the PLL
  TCCR4B = 0;

  switch (countLength) {
    case CountLengthSlow:
      TCCR4B |= (1<<CS40);
      TCCR4B |= (1<<CS41);
      TCCR4B |= (1<<CS42);
      TCCR4B |= (1<<CS43);
      break;
    case CountLengthFast:
      TCCR4B |= (1<<CS40);
      TCCR4B |= (0<<CS41);
      TCCR4B |= (0<<CS42);
      TCCR4B |= (0<<CS43);
      break;
  }

  // set the pin OC4A to high when the value in OCR4A is reached (or vice versa)
  if (outputInverted) {
    TCCR4A |= (1<<COM4A0);
    TCCR4A |= (1<<COM4A1);
  }
  else {
    TCCR4A |= (0<<COM4A0);
    TCCR4A |= (1<<COM4A1);
  }
}

void loop() { 
}
