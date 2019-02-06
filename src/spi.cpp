/** 
 * @file spi.cpp
 * @authors J Scott, O Thomas
 * @date Feb 2019 
 *
 * @detail SPI (serial peripheral interface) control using wiringPi. The wiringPi
 * library is available by cloning git://git.drogon.net/wiringPi and running 
 * ./build. It has two functions: a setup function and a read/write function.
 * The program needs sudo rights to run. Also the SPI needs to be enabled in
 * raspi-config.
 */

#include <wiringPiSPI.h>
#include <iostream>
#include <errno.h>
#include <string.h>
#include <vector>
#include <algorithm>

class SpiChannel {
private:
  int channel; // Either 0 or 1
  double frequency; // in Hz

public:
  SpiChannel(int channel, double frequency)
    : channel(channel), frequency(frequency) {
    // Set up SPI channel
    int result = wiringPiSPISetup(channel, frequency);
    if(result == -1) {
      std::cout << strerror(errno) << std::endl;
    }
  }

  // Simultaneous read/write data to the SPI interface
  // Pass a pointer to the buffer, and the length of the buffer
  std::vector<unsigned char> read_write(std::vector<unsigned char> write) {
    // Allocate memory for a data buffer 
    int len = write.size();
    unsigned char * buffer =
      static_cast<unsigned char * >(malloc(sizeof(char)*len));
    // Store std::vector in char array
    std::copy(write.begin(), write.end(), buffer);
    // Send the data
    int result = wiringPiSPIDataRW(channel, buffer, len);
    if(result != len) {
      std::cout << "SPI Error: wrong amount of data sent" << std::endl;
    }
    // Store returned data in std::vector
    std::vector<unsigned char> read(buffer, buffer+len);
    // Free the buffer memory
    free(buffer);
    return read;
  }
  
};


int main() {

  // Select channel
  int ch = 0;
  double frequency = 500000;

  // SPI channel type
  SpiChannel spi(ch, frequency);

  // Data to send
  std::vector<unsigned char> write = {0,1,2,3};

  // Read and write data
  std::vector<unsigned char> read = spi.read_write(write);

  // Print results
  std::cout << "Data sent: " << write[0] << std::endl
	    << "Data returned: " << read[1] << std::endl;
  
  // Some data to write
  /*
  * (buffer + 0) = 0;
  * (buffer + 1) = 1;
  * (buffer + 2) = 2;
  * (buffer + 3) = 3;
  */
  // Send data
  //spi.ReadWrite(buffer, len);

  // Data returned
  /*
  std::cout << "Data read: "
	    << std::to_string(*(buffer+0))
	    << std::to_string(*(buffer+1))
	    << std::to_string(*(buffer+2))
	    << std::to_string(*(buffer+3))
	    << std::endl;
  */
}
