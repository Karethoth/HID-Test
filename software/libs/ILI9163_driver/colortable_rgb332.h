/* color table                       */
/* (c) Henryk Richter                */

/* RGB332, just like the LPH8731 display from old siemens phones uses in 8 Bit mode */
const color_t colortable_rgb332[256] PROGMEM = {
  LCD_RGB(0,0,0), LCD_RGB(0,0,85), LCD_RGB(0,0,170), LCD_RGB(0,0,255), 
  LCD_RGB(0,36,0), LCD_RGB(0,36,85), LCD_RGB(0,36,170), LCD_RGB(0,36,255), 
  LCD_RGB(0,72,0), LCD_RGB(0,72,85), LCD_RGB(0,72,170), LCD_RGB(0,72,255), 
  LCD_RGB(0,109,0), LCD_RGB(0,109,85), LCD_RGB(0,109,170), LCD_RGB(0,109,255), 
  LCD_RGB(0,145,0), LCD_RGB(0,145,85), LCD_RGB(0,145,170), LCD_RGB(0,145,255), 
  LCD_RGB(0,182,0), LCD_RGB(0,182,85), LCD_RGB(0,182,170), LCD_RGB(0,182,255), 
  LCD_RGB(0,218,0), LCD_RGB(0,218,85), LCD_RGB(0,218,170), LCD_RGB(0,218,255), 
  LCD_RGB(0,255,0), LCD_RGB(0,255,85), LCD_RGB(0,255,170), LCD_RGB(0,255,255), 
  LCD_RGB(36,0,0), LCD_RGB(36,0,85), LCD_RGB(36,0,170), LCD_RGB(36,0,255), 
  LCD_RGB(36,36,0), LCD_RGB(36,36,85), LCD_RGB(36,36,170), LCD_RGB(36,36,255), 
  LCD_RGB(36,72,0), LCD_RGB(36,72,85), LCD_RGB(36,72,170), LCD_RGB(36,72,255), 
  LCD_RGB(36,109,0), LCD_RGB(36,109,85), LCD_RGB(36,109,170), LCD_RGB(36,109,255), 
  LCD_RGB(36,145,0), LCD_RGB(36,145,85), LCD_RGB(36,145,170), LCD_RGB(36,145,255), 
  LCD_RGB(36,182,0), LCD_RGB(36,182,85), LCD_RGB(36,182,170), LCD_RGB(36,182,255), 
  LCD_RGB(36,218,0), LCD_RGB(36,218,85), LCD_RGB(36,218,170), LCD_RGB(36,218,255), 
  LCD_RGB(36,255,0), LCD_RGB(36,255,85), LCD_RGB(36,255,170), LCD_RGB(36,255,255), 
  LCD_RGB(72,0,0), LCD_RGB(72,0,85), LCD_RGB(72,0,170), LCD_RGB(72,0,255), 
  LCD_RGB(72,36,0), LCD_RGB(72,36,85), LCD_RGB(72,36,170), LCD_RGB(72,36,255), 
  LCD_RGB(72,72,0), LCD_RGB(72,72,85), LCD_RGB(72,72,170), LCD_RGB(72,72,255), 
  LCD_RGB(72,109,0), LCD_RGB(72,109,85), LCD_RGB(72,109,170), LCD_RGB(72,109,255), 
  LCD_RGB(72,145,0), LCD_RGB(72,145,85), LCD_RGB(72,145,170), LCD_RGB(72,145,255), 
  LCD_RGB(72,182,0), LCD_RGB(72,182,85), LCD_RGB(72,182,170), LCD_RGB(72,182,255), 
  LCD_RGB(72,218,0), LCD_RGB(72,218,85), LCD_RGB(72,218,170), LCD_RGB(72,218,255), 
  LCD_RGB(72,255,0), LCD_RGB(72,255,85), LCD_RGB(72,255,170), LCD_RGB(72,255,255), 
  LCD_RGB(109,0,0), LCD_RGB(109,0,85), LCD_RGB(109,0,170), LCD_RGB(109,0,255), 
  LCD_RGB(109,36,0), LCD_RGB(109,36,85), LCD_RGB(109,36,170), LCD_RGB(109,36,255), 
  LCD_RGB(109,72,0), LCD_RGB(109,72,85), LCD_RGB(109,72,170), LCD_RGB(109,72,255), 
  LCD_RGB(109,109,0), LCD_RGB(109,109,85), LCD_RGB(109,109,170), LCD_RGB(109,109,255), 
  LCD_RGB(109,145,0), LCD_RGB(109,145,85), LCD_RGB(109,145,170), LCD_RGB(109,145,255), 
  LCD_RGB(109,182,0), LCD_RGB(109,182,85), LCD_RGB(109,182,170), LCD_RGB(109,182,255), 
  LCD_RGB(109,218,0), LCD_RGB(109,218,85), LCD_RGB(109,218,170), LCD_RGB(109,218,255), 
  LCD_RGB(109,255,0), LCD_RGB(109,255,85), LCD_RGB(109,255,170), LCD_RGB(109,255,255), 
  LCD_RGB(145,0,0), LCD_RGB(145,0,85), LCD_RGB(145,0,170), LCD_RGB(145,0,255), 
  LCD_RGB(145,36,0), LCD_RGB(145,36,85), LCD_RGB(145,36,170), LCD_RGB(145,36,255), 
  LCD_RGB(145,72,0), LCD_RGB(145,72,85), LCD_RGB(145,72,170), LCD_RGB(145,72,255), 
  LCD_RGB(145,109,0), LCD_RGB(145,109,85), LCD_RGB(145,109,170), LCD_RGB(145,109,255), 
  LCD_RGB(145,145,0), LCD_RGB(145,145,85), LCD_RGB(145,145,170), LCD_RGB(145,145,255), 
  LCD_RGB(145,182,0), LCD_RGB(145,182,85), LCD_RGB(145,182,170), LCD_RGB(145,182,255), 
  LCD_RGB(145,218,0), LCD_RGB(145,218,85), LCD_RGB(145,218,170), LCD_RGB(145,218,255), 
  LCD_RGB(145,255,0), LCD_RGB(145,255,85), LCD_RGB(145,255,170), LCD_RGB(145,255,255), 
  LCD_RGB(182,0,0), LCD_RGB(182,0,85), LCD_RGB(182,0,170), LCD_RGB(182,0,255), 
  LCD_RGB(182,36,0), LCD_RGB(182,36,85), LCD_RGB(182,36,170), LCD_RGB(182,36,255), 
  LCD_RGB(182,72,0), LCD_RGB(182,72,85), LCD_RGB(182,72,170), LCD_RGB(182,72,255), 
  LCD_RGB(182,109,0), LCD_RGB(182,109,85), LCD_RGB(182,109,170), LCD_RGB(182,109,255), 
  LCD_RGB(182,145,0), LCD_RGB(182,145,85), LCD_RGB(182,145,170), LCD_RGB(182,145,255), 
  LCD_RGB(182,182,0), LCD_RGB(182,182,85), LCD_RGB(182,182,170), LCD_RGB(182,182,255), 
  LCD_RGB(182,218,0), LCD_RGB(182,218,85), LCD_RGB(182,218,170), LCD_RGB(182,218,255), 
  LCD_RGB(182,255,0), LCD_RGB(182,255,85), LCD_RGB(182,255,170), LCD_RGB(182,255,255), 
  LCD_RGB(218,0,0), LCD_RGB(218,0,85), LCD_RGB(218,0,170), LCD_RGB(218,0,255), 
  LCD_RGB(218,36,0), LCD_RGB(218,36,85), LCD_RGB(218,36,170), LCD_RGB(218,36,255), 
  LCD_RGB(218,72,0), LCD_RGB(218,72,85), LCD_RGB(218,72,170), LCD_RGB(218,72,255), 
  LCD_RGB(218,109,0), LCD_RGB(218,109,85), LCD_RGB(218,109,170), LCD_RGB(218,109,255), 
  LCD_RGB(218,145,0), LCD_RGB(218,145,85), LCD_RGB(218,145,170), LCD_RGB(218,145,255), 
  LCD_RGB(218,182,0), LCD_RGB(218,182,85), LCD_RGB(218,182,170), LCD_RGB(218,182,255), 
  LCD_RGB(218,218,0), LCD_RGB(218,218,85), LCD_RGB(218,218,170), LCD_RGB(218,218,255), 
  LCD_RGB(218,255,0), LCD_RGB(218,255,85), LCD_RGB(218,255,170), LCD_RGB(218,255,255), 
  LCD_RGB(255,0,0), LCD_RGB(255,0,85), LCD_RGB(255,0,170), LCD_RGB(255,0,255), 
  LCD_RGB(255,36,0), LCD_RGB(255,36,85), LCD_RGB(255,36,170), LCD_RGB(255,36,255), 
  LCD_RGB(255,72,0), LCD_RGB(255,72,85), LCD_RGB(255,72,170), LCD_RGB(255,72,255), 
  LCD_RGB(255,109,0), LCD_RGB(255,109,85), LCD_RGB(255,109,170), LCD_RGB(255,109,255), 
  LCD_RGB(255,145,0), LCD_RGB(255,145,85), LCD_RGB(255,145,170), LCD_RGB(255,145,255), 
  LCD_RGB(255,182,0), LCD_RGB(255,182,85), LCD_RGB(255,182,170), LCD_RGB(255,182,255), 
  LCD_RGB(255,218,0), LCD_RGB(255,218,85), LCD_RGB(255,218,170), LCD_RGB(255,218,255), 
  LCD_RGB(255,255,0), LCD_RGB(255,255,85), LCD_RGB(255,255,170), LCD_RGB(255,255,255), 
};
