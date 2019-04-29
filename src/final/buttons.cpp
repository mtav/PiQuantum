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
