/** 
 * @file buttons.cpp
 * @authors J Scott, O Thomas
 * @date Feb 2019 
 *
 * @detail LED control. 
 *
 */

#include "buttons.hpp"

// Initialise with zero RGB values
Button::Button(Lines lines)
  : driver(getInputOutput()), lines(lines) {
  // Register the Button object with the driver
  driver -> register_button(this); 
}

Button::~Button() {
  // De register the Led object from the driver
  // Something like this. Don't really want a
  // memory leak, but in practice it'll be fine for now.
  //driver -> deregister_led(id);
}

// Read the button
int Button::state() {
  return btn_state;
}
