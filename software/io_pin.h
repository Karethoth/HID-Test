#pragma once

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
