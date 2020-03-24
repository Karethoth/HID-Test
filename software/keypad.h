#pragma once

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

