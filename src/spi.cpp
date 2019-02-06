/** 
 * @file spi.cpp
 * @authors J Scott, O Thomas
 * @date Feb 2019 
 *
 * @detail Implementations relating to SPI communications
 *
 */

#include "spi.hpp"

SpiChannel::SpiChannel(int channel, int frequency) : channel(channel) {
  // Set up SPI channel
  int result = wiringPiSPISetup(channel, frequency);
  if(result == -1) {
    std::cout << strerror(errno) << std::endl;
  }
}

// Simultaneous read/write data to the SPI interface
// Pass a std::vector to write. Read data is returned as a std::vector
std::vector<unsigned char> SpiChannel::read_write(const std::vector<unsigned char> write) {
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
unsigned char SpiChannel::read_write(const unsigned char write) {
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

// Change frequency in Hz
void SpiChannel::change_frequency(int frequency) {
  // Reset the SPI channel
  int result = wiringPiSPISetup(channel, frequency);
  if(result == -1) {
    std::cout << strerror(errno) << std::endl;
  }
}
  
