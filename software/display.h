#pragma once

#include "libs/ILI9163_driver/ILI9163.h"
#include "io_pin.h"

template<
  typename PinReset,
  typename PinSelectDisplay1,
  typename PinSelectDisplay2,
  typename PinSelectDisplay3,
  typename PinSelectDisplay4,

  // The size of the small displays that are combined
  unsigned int display_sub_width=128,
  unsigned int display_sub_height=128
>
struct Display
{
  const unsigned int display_width  = display_width  * 2;
  const unsigned int display_height = display_height * 2;

  Display()
  {
  }

  void init()
  {
    PinSelectDisplay1::setup(PinDir::PIN_OUT);
    PinSelectDisplay2::setup(PinDir::PIN_OUT);
    PinSelectDisplay3::setup(PinDir::PIN_OUT);
    PinSelectDisplay4::setup(PinDir::PIN_OUT);

    select_all_displays();
    LCD_init();
    LCD_Orientation(LCD_ROT_90);
    LCD_FillRect(0, 0, 130, 130, LCD_RED);
    LCD_FillRect(1, 1, 128, 128, LCD_GREEN);
  }

  void select_all_displays()
  {
    select_displays(true, true, true, true);
  }

  void select_displays(
    const bool select1,
    const bool select2,
    const bool select3,
    const bool select4
  )
  {
    if (select1)
      PinSelectDisplay1::unset();
    else
      PinSelectDisplay1::set();

    if(select2)
      PinSelectDisplay2::unset();
    else
      PinSelectDisplay2::set();

    if(select3)
      PinSelectDisplay3::unset();
    else
      PinSelectDisplay3::set();

    if(select4)
      PinSelectDisplay4::unset();
    else
      PinSelectDisplay4::set();
  }
};
