#pragma once

#include "libs/ILI9163_driver/ILI9163.h"
#include "io_pin.h"


/*
 * Some of the cheap TFT displays have unusual visible areas.
 * For example, mine have the first visible top-left pixel at (2,1)
 */
template<
  unsigned char _offset_x = 2,
  unsigned char _offset_y = 1,
  unsigned char _width    = 128,
  unsigned char _height   = 128,
  unsigned char _stride_x = 2,
  unsigned char _stride_y = 3
>
struct DisplayPanelArea
{
  static const unsigned char panel_offset_x = _offset_x;
  static const unsigned char panel_offset_y = _offset_y;
  static const unsigned char panel_width    = _width;
  static const unsigned char panel_height   = _height;

  constexpr static unsigned char fix_offset_x(
    const unsigned char x,
    const unsigned char panel_orientation
  )
  { 
    switch (panel_orientation)
    {
      case LCD_ROT_90:
        return x + _offset_y;

      case LCD_ROT_180:
        return x + _stride_x;

      case LCD_ROT_270:
        return x + _stride_y;

      case LCD_ROT_0:
      default:
        return x + _offset_x;
    }
  }

  constexpr static unsigned char fix_offset_y(
    const unsigned char y,
    const unsigned char panel_orientation
  )
  {
    switch (panel_orientation)
    {
      case LCD_ROT_90:
        return y + _stride_x;

      case LCD_ROT_180:
        return y + _stride_y;

      case LCD_ROT_270:
        return y + _offset_x;

      case LCD_ROT_0:
      default:
        return y + _offset_y;
    }
  }
};


template<
  typename PinSelectPanel,
  typename PanelArea = DisplayPanelArea<>,
  unsigned char DefaultOrientation = LCD_ROT_0
>
struct Panel
{
  static const unsigned int panel_width  = PanelArea::panel_width;
  static const unsigned int panel_height = PanelArea::panel_height;

  unsigned char panel_orientation = DefaultOrientation;

  void init_pin()
  {
    PinSelectPanel::setup(PinDir::PIN_OUT);
  }

  void init()
  {
    // LCD_init is called in Display::init, because
    // LCD_init uses the reset pin, it has to be done to all
    // panels at once
    set_orientation(panel_orientation);

    toggle(true);
    LCD_FillRect(fix_x(0), fix_y(0), panel_width, panel_height, LCD_RED);
    toggle(false);
  }

  void set_orientation(unsigned char orientation)
  {
    panel_orientation = orientation;
    toggle(true);
    static const unsigned char possible_orientations[4] = { 0, 0x60, 0xC0, 0xA0 };
    LCD_CMD(ILI9163_CMD_SET_ADDRESS_MODE);
    LCD_DTA(ILI9163_RGB | possible_orientations[orientation]);
    toggle(false);
  }

  void toggle(bool enable)
  {
    if (enable)
    {
      PinSelectPanel::unset();
    }
    else
    {
      PinSelectPanel::set();
    }
  }

  unsigned char fix_x(const unsigned char x) const
  {
    return PanelArea::fix_offset_x(x, panel_orientation);
  }

  unsigned char fix_y(const unsigned char y) const
  {
    return PanelArea::fix_offset_y(y, panel_orientation);
  }

  void write(char* str, unsigned char x, unsigned char y)
  {
    toggle(true);
    LCD_Puts(str, fix_x(x), fix_y(y), LCD_WHITE, LCD_BLACK);
    toggle(false);
  }
};


template<
  typename PinReset,
  typename Panel1,
  typename Panel2,
  typename Panel3,
  typename Panel4
>
struct Display
{
  const unsigned int panel_width    = Panel1::panel_width;
  const unsigned int panel_height   = Panel1::panel_height;
  const unsigned int display_width  = Panel1::panel_width  * 2;
  const unsigned int display_height = Panel1::panel_height * 2;

  Panel1 panel_1{};
  Panel2 panel_2{};
  Panel3 panel_3{};
  Panel4 panel_4{};

  void init()
  {
    select_displays(false, false, false, false);

    panel_1.init_pin();
    panel_2.init_pin();
    panel_3.init_pin();
    panel_4.init_pin();

    select_all_displays();
    LCD_init();
    select_displays(false, false, false, false);

    panel_1.init();
    panel_2.init();
    panel_3.init();
    panel_4.init();

    panel_1.write("1", 1, 1);
    panel_2.write("2", 1, 1);
    panel_3.write("3", 1, 1);
    panel_4.write("4", 1, 1);
    select_all_displays();
  }

  void select_displays(
    const bool select1,
    const bool select2,
    const bool select3,
    const bool select4
  )
  {
    panel_1.toggle(select1);
    panel_2.toggle(select2);
    panel_3.toggle(select3);
    panel_4.toggle(select4);
  }

  void select_all_displays()
  {
    select_displays(true, true, true, true);
  }
};
