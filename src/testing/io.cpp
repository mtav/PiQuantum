/** 
 * @file io.cpp
 * @authors J Scott, O Thomas
 * @date Feb 2019 
 *
 * @detail IO control 
 *
 */

#include <wiringPi.h>
#include "io.hpp"
#include "leds.hpp"

/**
 * @brief Wrapper to return InputOutput class
 *
 * @detail Return a shared_ptr object to an InputOutput. Pass 
 * a channel to indicate which SPI channel to use
 * 
 */
std::shared_ptr<InputOutput> getInputOutput() {
  // Static pointer to LED driver
  static std::shared_ptr<InputOutput> driver;
  // If necessary, make a new SPI channel
  if(driver == nullptr)
    driver = std::make_shared<InputOutput>(getSpiChannel(0));
  // Return the spi channel pointer
  return driver; 
}

Alarm * Alarm::alrm = nullptr; // A pointer to an alarm class

// Print the registered LEDs
void InputOutput::print() {
  int count = 0; // Index the LEDs
  for(Led * i : leds) {
    std::cout << "------------------------------------"
	      << std::endl;
    std::cout << "LED " << count << ": "<< std::endl;
    std::cout << "Lines: "
	      << "R: " << i -> get_lines()[0] << ", " 
	      << "G: " << i -> get_lines()[1] << ", "
	      << "B: " << i -> get_lines()[2] << ", "
	      << std::endl
	      << "Levels: "
	      << "R: " << i -> rgb()[0] << ", " 
	      << "G: " << i -> rgb()[1] << ", "
	      << "B: " << i -> rgb()[2] << ", "
	      << std::endl;
    count ++;
  }
}

void InputOutput::func() {    

  // Initiliase data to write to chips
  write = std::vector<unsigned char>(chips, 0);    

  // Increment counter
  counter++;
  // Check for counter reset
  if(counter == period) {
    counter = 0; // Reset counter
    std::cout << (int)button_states[0] << " "
	      << (int)button_states[1]
	      << std::endl;
    set(write); // Set all to zero
  }

  // Loop over all the pointers in the leds vector, turning
  // the LEDs off if counter is high enough
  // Start with an empty std::vector to populate with LED state
  // data (length = chips, value = 0)
  for(Led * i : leds) {
    // Need to ensure i still exists here
    // Loop over RGB setting corresponding bits
    for(int k = 0; k < 3; k++) {
      if((counter/period) > (1 - i -> rgb()[k]))
	write[i -> get_lines()[k].chip]
	  |= (1 << i -> get_lines()[k].line); // Write a 1 in correct position
    }
  } // Turn on LED
  for(int i = 0; i < chips; i++)
    write[i] &= mask[i]; // Mask the write array
  set(write); // Write the data to the chip

  // Put button reading stuff here
  read_button_states(2);

  

} // end of func

void InputOutput::register_led(Led * led) {
  // Add the LED to the leds vector or pointers
  leds.push_back(led);

  // Enable LED lines
  for(int k=0; k < 3; k++)
    mask[led -> get_lines()[k].chip] |= (1 << led -> get_lines()[k].line);

}

// Print the chip/lines for an LED
std::ostream & operator << (std::ostream & stream, Lines lines) {
  stream << "(" << lines.chip << ", " << lines.line << ")"; 
  return stream;
}
