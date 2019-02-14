/** 
 * @file leds.cpp
 * @authors J Scott, O Thomas
 * @date Feb 2019 
 *
 * @detail LED control. 
 *
 */

#include <wiringPi.h>
#include "leds.hpp"

Alarm * Alarm::alrm = nullptr; // A pointer to an alarm class

void LedDriver::func() {    
  // Increment counter
  counter++;
  // Check for counter reset
  if(counter == period) {
    counter = 0; // Reset counter
    
    // Loop over all the pointers in the leds vector, writing
    // their state to the hardware.
    // Start with an empty std::vector to populate with LED state
    // data (length = chips, value = 0)
    std::vector<unsigned char> write(chips, 0);    
    for(Led * i : leds) {
      // Need to ensure i still exists here
      int chip = i -> get_chip();
      std::vector<int> rgb_lines = i -> get_rgb_lines();
      std::vector<double> rgb_values = i -> get_rgb();
      // Loop over RGB setting corresponding bits
      for(int k = 0; k < 3; k++) {
	if((counter/period) < rgb_values[k])
	  write[chip] |= (1 << rgb_lines[k]); // Write a 1 in correct position
      }
    } // Turn on LED
  }
  // Turn off LED if counter is high enough



  if((counter/period) >= test_led.red) set({0,0});
} // end of func
