/** 
 * @file buttons.hpp
 * @authors J Scott, O Thomas
 * @date Feb 2019
 *
 * @detail Header file for Rasp Pi button I/O using SPI.
 *
 */

#ifndef BUTTONS_HPP
#define BUTTONS_HPP

#include "io.hpp"

class Button {
private:
  // A pointer to the LED driver which writes
  // data to the hardware. Each Led object
  // needs to register itself with the
  // driver. The driver then polls the
  // Led objects to read their color and
  // write it to the hardware device
  std::shared_ptr<InputOutput> driver;
    
  // Chip and line numbers 
  const Position position;

  // RGB values (between zero and one)
  std::vector<double> rgb_values; // In order [0]=r, [1]=g, [2]=b

  // Button state
  int btn_state;

  // So that InputOutput can set the btn_state. I'd prefer it to
  // only be able to access the btn_state variable but haven't
  // figured out a good way to do it yet
  friend class InputOutput;
  
public:
  
  // Constructor and destructor
  Button(Position position);
  ~Button();
  
  // Read the button state
  int get_state();
  std::vector<double> rgb() { return rgb_values; }

  // Return the chip and line numbers
  Position get_position() { return position; }

};

#endif
