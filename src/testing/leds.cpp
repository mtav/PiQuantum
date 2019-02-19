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

// Print the registered LEDs
void LedDriver::print() {
  int count = 0; // Index the LEDs
  for(Led * i : leds) {
    std::cout << "-------" << std::endl;
    std::cout << "LED " << count << ": "<< std::endl;
    std::cout << "Lines: "
	      << "R: "<< i -> get_rgb_lines()[0] << ", " 
	      << "G: "<< i -> get_rgb_lines()[1] << ", "
	      << "B: "<< i -> get_rgb_lines()[2] << ", "
	      << std::endl
	      << "Levels: "
	      << "R: "<< i -> get_rgb()[0] << ", " 
	      << "G: "<< i -> get_rgb()[1] << ", "
	      << "B: "<< i -> get_rgb()[2] << ", "
	      << std::endl;
    count ++;
  }
}

void LedDriver::func() {    

  // Initiliase data to write to chips
  write = std::vector<unsigned char>(chips, 0);    

  // Increment counter
  counter++;
  // Check for counter reset
  if(counter == period) {
    counter = 0; // Reset counter
    set(write); // Set all to zero
  }

  // Loop over all the pointers in the leds vector, turning
  // the LEDs off if counter is high enough
  // Start with an empty std::vector to populate with LED state
  // data (length = chips, value = 0)
  for(Led * i : leds) {
    // Need to ensure i still exists here
    int chip = i -> get_chip();
    std::vector<int> rgb_lines = i -> get_rgb_lines();
    std::vector<double> rgb_values = i -> get_rgb();
    // Loop over RGB setting corresponding bits
    for(int k = 0; k < 3; k++) {
      if((counter/period) > (1 - rgb_values[k]))
	write[chip] |= (1 << rgb_lines[k]); // Write a 1 in correct position
    }
  } // Turn on LED
  for(int i = 0; i < chips; i++)
    write[i] &= mask[i]; // Mask the write array
  set(write); // Write the data to the chip
  
  //if((counter/period) >= test_led.red) set({0,0});
} // end of func

void LedDriver::register_led(Led * led) {
  // Add the LED to the leds vector or pointers
  leds.push_back(led);
  
  // Enable LED lines
  for(int i=0; i < 3; i++)
    mask[led -> get_chip()] |= (1 << led -> get_rgb_lines()[i]);
}
