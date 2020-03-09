#include<avr/io.h>
#include<avr/interrupt.h>
#include<util/delay.h>


void sleep_ms(uint8_t millisec)
{
  while(millisec)
  {
    _delay_ms(1);
    millisec--;
  }
}

void init()
{
  DDRA = 0xFF;
  DDRB = 0xFF;
  DDRC = 0xFF;
  DDRD = 0xFF;
}

int main()
{
  init();
  for(;;) {
    sleep_ms(100);
  }
}

