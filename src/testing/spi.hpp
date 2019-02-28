/** 
 * @file spi.hpp
 * @authors J Scott, O Thomas
 * @date Feb 2019 
 *
 * @detail Header file for SPI (serial peripheral interface) control using 
 * wiringPi. The wiringPi library is available by cloning 
 * git://git.drogon.net/wiringPi and running ./build. It has two functions: 
 * a setup function and a read/write function. The program needs sudo rights 
 * to run. Also the SPI needs to be enabled in raspi-config.
 *
 */

#ifndef SPI_HPP
#define SPI_HPP

#include <iostream>
#include "wpi.hpp"
#include <wiringPiSPI.h>
#include <errno.h>
#include <string.h>
#include <vector>
#include <algorithm>
#include <memory>

// easier to read.
typedef std::vector<unsigned char> unsgn_char_vect;

/**
 * SpiChannel class
 *
 * This class provides SPI read/write functions on a particular SPI channel
 * using the wiringPi SPI library. The channel is fixed for a particular object
 * when it is constructed, but the frequency can be modified (not sure if that's
 * very helpful). 
 *
 * Use case: as part of an SPI device class to actually read and write data to the
 * device. Other details (such as managing chip selects) would be handled by the
 * higher level class.
 *
 */
class SpiChannel {
private:
  const int channel; // Pi channel Either 0 or 1
  WiringPi wpi; // Constructing this object ensures wiringPi is setup
  
  // ------------------ read_write as vector or unsigned char ----------
  // Simultaneous read/write data to the SPI interface
  // Pass a std::vector to write. Read data is returned as a std::vector
  unsgn_char_vect read_write(const unsgn_char_vect & write);
  
  // Simultaneous read/write data to the SPI interface
  // Read and write a single byte of data
  // unsigned char read_write(const unsigned char write);
  
public:
  // Constructor
  SpiChannel(int channel, int frequency);
  
  // Change frequency in Hz
  void change_frequency(int frequency);
  
  // read takes int returns vector
  unsgn_char_vect read(int num_bytes);

  // write takes ref vector 
  void write(const unsgn_char_vect & write);
};

/**
 * @brief Wrapper to return SPI class
 *
 * @detail Return a shared_ptr object to an SPI channel.
 * This function is a kind of singleton implementation, 
 * preventing multiple copies of the SPI class. The actual
 * SPI objects are stored in static variables so that they 
 * retain their value between function calls.   
 *
 */
std::shared_ptr<SpiChannel> getSpiChannel(int channel);

#endif
