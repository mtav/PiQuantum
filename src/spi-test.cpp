/** 
 * @file spi-test.cpp
 * @authors J Scott, O Thomas
 * @date Feb 2019 
 *
 * @detail Example file for using SPI interface
 *
 */

#include <iostream>
#include "spi.hpp"
#include <wiringPi.h>
#include "leds.hpp"

int main() {

  // Setup pins
  setup_pins();

  // Set leds
  set_leds();
  
  // Select channel
  int ch = 0;
  double frequency = 500000;
  
  // SPI channel type
  SpiChannel spi(ch, frequency);

  // Change SPI frequency
  spi.change_frequency(1000000);
  
  // Data to send
  std::vector<unsigned char> write = {0,1,2,3};

  // Read and write data
  std::vector<unsigned char> read = spi.read_write(write);
  
  // Print results
  std::cout << "Data sent: " << std::to_string(write[0]) << std::endl
	    << "Data returned: " << std::to_string(read[0]) << std::endl;

  // SPI read/write with one byte and send byte literal
  unsigned char read_byte = spi.read_write(32);
  std::cout << "Single byte return: " << std::to_string(read_byte) << std::endl;
  
}
