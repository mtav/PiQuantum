/** 
 * @file spi.cpp
 * @authors J Scott, O Thomas
 * @date Feb 2019 
 *
 * @detail SPI (serial peripheral interface) control using wiringPi. The wiringPi
 * library is available by cloning git://git.drogon.net/wiringPi and running 
 * ./build. It has two functions: a setup function and a read/write function.
 *
 */

#include <wiringPiSPI.h>
#include <iostream>
#include <errno.h>
#include <string.h>

enum class channel {
  zero = 0,
  one = 1,
};

int main() {

  // Select channel
  int ch = 0;

  // Set up SPI channel 0 at a frequency 500,000 Hz
  int result = wiringPiSPISetup(ch, 500000);
  if(result == -1) {
    std::cout << strerror(errno) << std::endl;
  }

  // Some data to write
  int len = 2; // Length of buffer
  unsigned char * buffer = static_cast<unsigned char * >(malloc(sizeof(char)*len));
  * buffer = 0;
  * (buffer + 1) = 1;

  // Simultaneous read/write data to the SPI interface
  // Pass the channel, a pointer to the buffer, and the length of the buffer
  result = wiringPiSPIDataRW(ch, buffer, 2);
  // Read data is put in buffer, overwriting the other data
  std::cout << result << std::endl; // Number of bytes sent?
}
