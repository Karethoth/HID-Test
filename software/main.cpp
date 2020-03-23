#include <avr/io.h>
#include <avr/wdt.h>
#include <avr/interrupt.h>
#include <avr/pgmspace.h>
#include <util/delay.h>

#include "libs/ILI9163_driver/ILI9163.h"
#include "libs/ILI9163_driver/font_screen_ascii_5x8v2_hor.h"

extern "C" {
  #include "usbdrv.h"
  #include "oddebug.h"
  #include "requests.h"
}

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


using DecoderPin1 = IO_Pin<REG_TO_INT(DDRB), REG_TO_INT(PORTB), REG_TO_INT(PINB), PD0>;
using DecoderPin2 = IO_Pin<REG_TO_INT(DDRB), REG_TO_INT(PORTB), REG_TO_INT(PINB), PD1>;
using DecoderPin3 = IO_Pin<REG_TO_INT(DDRB), REG_TO_INT(PORTB), REG_TO_INT(PINB), PD2>;

using FeedbackPin1 = IO_Pin<REG_TO_INT(DDRD), REG_TO_INT(PORTD), REG_TO_INT(PIND), PD3>;
using FeedbackPin2 = IO_Pin<REG_TO_INT(DDRD), REG_TO_INT(PORTD), REG_TO_INT(PIND), PD4>;

Keypad<
  DecoderPin1,
  DecoderPin2,
  DecoderPin3,
  FeedbackPin1,
  FeedbackPin2,
  3,
  2
> keypad{};


PROGMEM const char usbHidReportDescriptor[22] = {  /* USB report descriptor */
    (char)0x06, (char)0x00, (char)0xff,            // USAGE_PAGE (Generic Desktop)
    (char)0x09, (char)0x01,                        // USAGE (Vendor Usage 1)
    (char)0xa1, (char)0x01,                        // COLLECTION (Application)
    (char)0x15, (char)0x00,                        //   LOGICAL_MINIMUM (0)
    (char)0x26, (char)0xff, (char)0x00,            //   LOGICAL_MAXIMUM (255)
    (char)0x75, (char)0x08,                        //   REPORT_SIZE (8)
    (char)0x95, (char)0x01,                        //   REPORT_COUNT (1)
    (char)0x09, (char)0x00,                        //   USAGE (Undefined)
    (char)0xb2, (char)0x02, (char)0x01,            //   FEATURE (Data,Var,Abs,Buf)
    (char)0xc0                                     // END_COLLECTION
};


usbMsgLen_t usbFunctionSetup(uchar data[8])
{
usbRequest_t    *rq = (usbRequest_t*)(data);

    if ((rq->bmRequestType & USBRQ_TYPE_MASK) == USBRQ_TYPE_VENDOR)
    {
        if (rq->bRequest == CMD_DISPLAY_RESET){
          LCD_init();
          LCD_Orientation(LCD_ROT_90);
          LCD_FillScreen(LCD_RGB(255,0,0));
        }

        else if (rq->bRequest == CMD_DISPLAY_CLEAR){
            if (rq->wValue.bytes[0] & 1)
            {
              LCD_FillScreen(LCD_RGB(255,255,255));
            }
            else
            {
              LCD_FillScreen(LCD_RGB(0,0,0));
            }
        }

        else if (rq->bRequest == 3)
        {
            static uchar dataBuffer[1];     /* buffer must stay valid when usbFunctionSetup returns */
            dataBuffer[0] = 0x00;
            usbMsgPtr = (unsigned int)dataBuffer;

            // Send 1 byte
            return 1;
        }
    }
    else
    {
      /* calss requests USBRQ_HID_GET_REPORT and USBRQ_HID_SET_REPORT are
       * not implemented since we never call them. The operating system
       * won't call them either because our descriptor defines no meaning.
       */
    }

    // Return no data to host
    return 0;
}



void usb_init()
{
  wdt_enable(WDTO_1S);
  odDebugInit();
  DBG1(0x00, 0, 0);
  usbInit();
  usbDeviceDisconnect();
  sleep_ms(250);
  usbDeviceConnect();
  sei();
  DBG1(0x01, 0, 0);
}


void init()
{
  /*
  DDRA = 0x00;
  DDRB = 0xFF;
  DDRC = 0x00;
  DDRD = 0xFF;

  PORTA = 0x00;
  PORTB = 0x00;
  PORTC = 0xFF;
  PORTD = 0x00;
  */

  keypad.init();

  LCD_init();
  LCD_Orientation(LCD_ROT_90);
  LCD_FillScreen(LCD_RGB(255,0,0));

  usb_init();
}


int main()
{
  init();
  volatile uint8_t last_row = 0;

  for(;;)
  {
    volatile uint8_t new_row = keypad.read_row();

    uint8_t active_row = (keypad.current_row) % 3;

    if (new_row & 0b01)
    {
      LCD_PutsF("1", 128 - 3*5, 128 - 5 * 8 + (1+active_row)*8, LCD_BLACK, LCD_WHITE, &font_5_8);
    }
    else
    {
      LCD_PutsF("0", 128 - 3*5, 128 - 5 * 8 + (1+active_row)*8, LCD_BLACK, LCD_WHITE, &font_5_8);
    }

    if (new_row & 0b10)
    {
      LCD_PutsF("1", 128 - 2*5, 128 - 5 * 8 + (1+active_row)*8, LCD_BLACK, LCD_WHITE, &font_5_8);
    }
    else
    {
      LCD_PutsF("0", 128 - 2*5, 128 - 5 * 8 + (1+active_row)*8, LCD_BLACK, LCD_WHITE, &font_5_8);
    }

    keypad.next_row();

    wdt_reset();
    usbPoll();
  }
}

