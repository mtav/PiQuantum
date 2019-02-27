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
  const Lines lines;

  // RGB values (between zero and one)
  std::vector<double> rgb_values; // In order [0]=r, [1]=g, [2]=b

  // Button state
  int btn_state;
  
public:
  
  // Constructor and destructor
  Button(Lines lines);
  ~Button();
  
  // Read the button state
  int state();
  std::vector<double> rgb() { return rgb_values; }

  // Return the chip and line numbers
  Lines get_lines() { return lines; }

};

#endif
