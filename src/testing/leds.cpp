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
  : driver(getInputOutput()), positions({r,g,b}), rgb_values(3,0) {
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
void Led::rgb(double red, double green, double blue) {
  rgb_values[0] = red;
  rgb_values[1] = green;
  rgb_values[2] = blue;
}
