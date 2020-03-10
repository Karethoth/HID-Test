#include <avr/io.h>
#include <avr/interrupt.h>
#include <util/delay.h>

#include "libs/ILI9163_driver/ILI9163.h"
#include "libs/ILI9163_driver/font_screen_ascii_5x8v2_hor.h"


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


template<int T_DDR, int T_PORT, int T_PIN, int T_PD>
struct IO_Pin
{
  static constexpr auto ddr()
  {
    return (volatile uint8_t*)T_DDR;
  }

  static constexpr auto port()
  {
    return (volatile uint8_t*)T_PORT;
  }

  static constexpr auto pin()
  {
    return (volatile uint8_t*)T_PIN;
  }

  static constexpr auto pd()
  {
    return T_PD;
  }

  static void setup(PinDir new_dir)
  {
    if (new_dir == PIN_IN) {
        *ddr() &= ~(1<<pd());
    }
    else {
        *ddr() |= (1<<pd());
    }
  }

  static void set()
  {
    *port() |= (1 << T_PD);
  }

  static void unset()
  {
    *port() &= ~(1 << T_PD);
  }

  volatile static bool read()
  {
    volatile uint8_t tmp = (*pin());
    return (tmp >> pd()) & 1;
    return tmp & pd();
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

    FeedbackPin1::set();
    FeedbackPin2::set();

    set_row(0);
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

  uint8_t read_row()
  {
    volatile uint8_t row = 0x00;
    row |= FeedbackPin1::read();
    row |= FeedbackPin2::read() << 1;
    volatile uint8_t new_row = PINC & 0b111111;
    return row;
    return new_row;
  }

};


using DecoderPin1 = IO_Pin<REG_TO_INT(DDRD), REG_TO_INT(PORTD), REG_TO_INT(PIND), PD0>;
using DecoderPin2 = IO_Pin<REG_TO_INT(DDRD), REG_TO_INT(PORTD), REG_TO_INT(PIND), PD1>;
using DecoderPin3 = IO_Pin<REG_TO_INT(DDRD), REG_TO_INT(PORTD), REG_TO_INT(PIND), PD2>;

using FeedbackPin1 = IO_Pin<REG_TO_INT(DDRC), REG_TO_INT(PORTC), REG_TO_INT(PINC), PC0>;
using FeedbackPin2 = IO_Pin<REG_TO_INT(DDRC), REG_TO_INT(PORTC), REG_TO_INT(PINC), PC1>;

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
  DDRC = 0x00;
  DDRD = 0xFF;

  PORTA = 0x00;
  PORTB = 0x00;
  PORTC = 0xFF;
  PORTD = 0x00;

  keypad.init();

  LCD_init();
  LCD_Orientation(LCD_ROT_90);
  LCD_FillScreen( LCD_RGB(255,0,0) );
}

int main()
{
  init();
  volatile uint8_t last_row = 0;

  for(;;) {
    sleep_ms(10);
    volatile uint8_t new_row = keypad.read_row();

    uint8_t active_row = (keypad.current_row) % 3;

    if(new_row & 0b01) {
      LCD_PutsF("0", 128 - 3*5, 128 - 5 * 8 + (1+active_row)*8, LCD_BLUE, LCD_WHITE, &font_5_8);
    }
    else
    {
      LCD_PutsF("1", 128 - 3*5, 128 - 5 * 8 + (1+active_row)*8, LCD_BLUE, LCD_WHITE, &font_5_8);
    }

    if(new_row & 0b10) {
      LCD_PutsF("0", 128 - 2*5, 128 - 5 * 8 + (1+active_row)*8, LCD_BLUE, LCD_WHITE, &font_5_8);
    }
    else
    {
      LCD_PutsF("1", 128 - 2*5, 128 - 5 * 8 + (1+active_row)*8, LCD_BLUE, LCD_WHITE, &font_5_8);
    }

    sleep_ms(10);
    keypad.next_row();
  }
}

