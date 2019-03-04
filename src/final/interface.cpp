/** 
 * @file interface.cpp
 * @authors J Scott, O Thomas
 * @date Feb 2019 
 *
 * @detail LED control. 
 *
 */

#include "interface.hpp"

// Initialise with zero RGB values
Led::Led(Position r, Position g, Position b)
  : driver(getInputOutput()), positions({r,g,b}), rgb(3,0) {

  // Register the Led object with the driver
  id = driver -> register_led(this); 
}

Led::~Led() {
  // De register the Led object from the driver
  driver -> deregister_led(id);
}

// Read and write the RGB value
// May as well just make this public...
void Led::set_rgb(double red, double green, double blue) {
  rgb[0] = red;
  rgb[1] = green;
  rgb[2] = blue;
}

// Return the chip and line numbers
std::vector<Position> Led::get_positions()
{
  return positions;
}

// Read RGB values
std::vector<double> Led::get_rgb()
{
  return rgb;
}

// Initialise with zero RGB values
Button::Button(Position position)
  : driver(getInputOutput()), position(position) {
  // Register the Button object with the driver
  id = driver -> register_button(this); 
}

Button::~Button() {
  // De register the Button object from the driver
  driver -> deregister_led(id);
}

// Read the button
int Button::get_state() {
  return btn_state;
}
