#include<avr/io.h>
#include<avr/interrupt.h>
#include<util/delay.h>


#define REG_TO_INT(p) (int)&p


void sleep_ms(uint8_t millisec)
{
  while(millisec)
  {
    _delay_ms(1);
    millisec--;
  }
}


enum PinDir {
  PIN_IN  = 0,
  PIN_OUT = 1
};


template<int T_Port, int T_Pin>
struct IO_Pin
{
  static constexpr auto ddr()
  {
    switch(T_Port)
    {
      case REG_TO_INT(DDRA):
        return (volatile uint8_t*)DDRA;

      case REG_TO_INT(DDRB):
        return (volatile uint8_t*)DDRB;

      case REG_TO_INT(DDRC):
        return (volatile uint8_t*)DDRC;

      case REG_TO_INT(DDRD):
      default:
        return (volatile uint8_t*)DDRD;
    }
    return (volatile uint8_t*)DDRD;
  }

  static constexpr auto port()
  {
    return (volatile uint8_t*)T_Port;
  }

  static constexpr auto pin()
  {
    return T_Pin;
  }

  static void setup(PinDir dir)
  {
    if (dir == PIN_IN) {
        *ddr() &= ~(1<<pin());
    }
    else {
        *ddr() |= (1<<pin());
    }
  }

  static void set()
  {
    *port() |= (1<<pin());
  }

  static void unset()
  {
    *port() &= ~(1<<pin());
  }
};


template<
  typename DecoderPin1,
  typename DecoderPin2,
  typename DecoderPin3,
  typename FeedbackPin1,
  typename FeedbackPin2,
  uint8_t rows=3,
  uint8_t cols=2
>
struct Keypad
{
  uint8_t current_row = 0;
  uint8_t key_matrix[rows] = {};

  void init()
  {
    DecoderPin1::setup(PIN_OUT);
    DecoderPin2::setup(PIN_OUT);
    DecoderPin3::setup(PIN_OUT);

    FeedbackPin1::setup(PIN_IN);
    FeedbackPin2::setup(PIN_IN);
  }

  void set_row(uint8_t row)
  {
    if (row & 1)
    {
      DecoderPin1::set();
    }
    else
    {
      DecoderPin1::unset();
    }

    if (row & 0b10)
    {
      DecoderPin2::set();
    }
    else
    {
      DecoderPin2::unset();
    }

    if (row & 0b100)
    {
      DecoderPin3::set();
    }
    else
    {
      DecoderPin3::unset();
    }

    current_row = row;
  }

  void next_row()
  {
    uint8_t next_row = current_row + 1;
    if (next_row >= rows)
    {
      next_row = 0;
    }

    set_row(next_row);
  }

};


using DecoderPin1 = IO_Pin<REG_TO_INT(PORTD), PD2>;
using DecoderPin2 = IO_Pin<REG_TO_INT(PORTD), PD3>;
using DecoderPin3 = IO_Pin<REG_TO_INT(PORTD), PD4>;

using FeedbackPin1 = IO_Pin<REG_TO_INT(PORTD), PD5>;
using FeedbackPin2 = IO_Pin<REG_TO_INT(PORTD), PD6>;

Keypad<
  DecoderPin1,
  DecoderPin2,
  DecoderPin3,
  FeedbackPin1,
  FeedbackPin2,
  3,
  2
> keypad{};


void init()
{
  DDRA = 0x00;
  DDRB = 0xFF;
  DDRC = 0xFF;
  DDRD = 0xFF;

  PORTB = 0x00;
  PORTC = 0x00;
  PORTD = 0x00;

  keypad.init();
}

int main()
{
  init();
  for(;;) {
    sleep_ms(1);
    keypad.next_row();
    sleep_ms(1);
  }
}

