/** 
 * @file leds.cpp
 * @authors J Scott, O Thomas
 * @date Feb 2019 
 *
 * @detail LED control. 
 *
 */

#include "leds.hpp"

// Initialise with zero RGB values
Led::Led(Position r, Position g, Position b)
  : driver(getInputOutput()), positions({r,g,b}), rgb(3,0) {
  // Register the Led object with the driver
  driver -> register_led(this); 
}

Led::~Led() {
  // De register the Led object from the driver
  // Something like this. Don't really want a
  // memory leak, but in practice it'll be fine for now.
  //driver -> deregister_led(id);
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
