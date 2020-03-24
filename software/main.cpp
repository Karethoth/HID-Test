#include "libs/ILI9163_driver/ILI9163.h"
#include "libs/ILI9163_driver/font_screen_ascii_5x8v2_hor.h"

extern "C" {
  #include "usbdrv.h"
  #include "oddebug.h"
  #include "requests.h"
}

#include "io_pin.h"
#include "keypad.h"
#include "display.h"

#include <avr/io.h>
#include <avr/wdt.h>
#include <avr/interrupt.h>
#include <avr/pgmspace.h>
#include <util/delay.h>

#define REG_TO_INT(p) (int)&p

void sleep_ms(uint8_t millisec)
{
  while(millisec)
  {
    _delay_ms(1);
    millisec--;
  }
}

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


using DisplayResetPin   = IO_Pin<REG_TO_INT(DDRC), REG_TO_INT(PORTC), REG_TO_INT(PINC), PC3>;
using DisplaySelectPin1 = IO_Pin<REG_TO_INT(DDRC), REG_TO_INT(PORTC), REG_TO_INT(PINC), PC4>;
using DisplaySelectPin2 = IO_Pin<REG_TO_INT(DDRC), REG_TO_INT(PORTC), REG_TO_INT(PINC), PC5>;
using DisplaySelectPin3 = IO_Pin<REG_TO_INT(DDRC), REG_TO_INT(PORTC), REG_TO_INT(PINC), PC6>;
using DisplaySelectPin4 = IO_Pin<REG_TO_INT(DDRC), REG_TO_INT(PORTC), REG_TO_INT(PINC), PC7>;

Display<
DisplayResetPin,
DisplaySelectPin1,
DisplaySelectPin2,
DisplaySelectPin3,
DisplaySelectPin4,
128,
128
> display{};



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
        if (rq->bRequest == CMD_DISPLAY_RESET)
        {
          display.init();
        }

        else if (rq->bRequest == CMD_DISPLAY_CLEAR)
        {
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
  keypad.init();
  usb_init();
  display.init();
}


int main()
{
  init();
  volatile uint8_t last_row = 0;

  for(;;)
  {
    uint8_t new_row_presses = keypad.read_row();
    uint8_t active_row_num  = (keypad.current_row) % 3;

    if (new_row_presses & 0b01)
    {
      LCD_PutsF("1", 128 - 3*5, 128 - 5 * 8 + (1+active_row_num)*8, LCD_BLACK, LCD_WHITE, &font_5_8);
    }
    else
    {
      LCD_PutsF("0", 128 - 3*5, 128 - 5 * 8 + (1+active_row_num)*8, LCD_BLACK, LCD_WHITE, &font_5_8);
    }

    if (new_row_presses & 0b10)
    {
      LCD_PutsF("1", 128 - 2*5, 128 - 5 * 8 + (1+active_row_num)*8, LCD_BLACK, LCD_WHITE, &font_5_8);
    }
    else
    {
      LCD_PutsF("0", 128 - 2*5, 128 - 5 * 8 + (1+active_row_num)*8, LCD_BLACK, LCD_WHITE, &font_5_8);
    }

    keypad.next_row();

    wdt_reset();
    usbPoll();
  }
}

