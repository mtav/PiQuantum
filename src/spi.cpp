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
 *
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
  
public:
  SpiChannel(int channel, double frequency) : channel(channel) {
    // Set up SPI channel
    int result = wiringPiSPISetup(channel, frequency);
    if(result == -1) {
      std::cout << strerror(errno) << std::endl;
    }
  }

  // Simultaneous read/write data to the SPI interface
  // Pass a std::vector to write. Read data is returned as a std::vector
  std::vector<unsigned char> read_write(const std::vector<unsigned char> write) {
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

  // Simultaneous read/write data to the SPI interface
  // Read and write a single byte of data
  unsigned char read_write(const unsigned char write) {
    // Create local copy for SPI to overwrite
    unsigned char buffer = write;
    // Send the data
    int result = wiringPiSPIDataRW(channel, &buffer, 1);
    if(result != 1) {
      std::cout << "SPI Error: wrong amount of data sent" << std::endl;
    }
    // Return the read data (in buffer)
    return buffer;
  }

  // Change frequency
  void change_frequency(double frequency) {
    // Reset the SPI channel
    int result = wiringPiSPISetup(channel, frequency);
    if(result == -1) {
      std::cout << strerror(errno) << std::endl;
    }
  }
  
  
};


int main() {

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
