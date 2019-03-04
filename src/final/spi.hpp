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

/**
 * @brief Byte (8 bits) type
 *
 * @detail Alias for unsigned char. Type to store 8 bits of
 * data for hardware reads and writes.
 *
 */
typedef unsigned char byte;

/**
 * @brief Wrapper to return SPI class
 *
 * @detail Return a shared_ptr object to an SPI channel.
 * This function is a kind of singleton implementation, 
 * preventing multiple copies of the SPI class. The actual
 * SPI object is stored in a static variables so that it 
 * retains its value between function calls.   
 *
 */
std::shared_ptr<class SpiChannel> getSpiChannel();

/**
 * @brief SpiChannel class
 *
 * @detail This class provides SPI read/write functions on a particular SPI channel
 * using the wiringPi SPI library. The channel is fixed for a particular object
 * when it is constructed, but the frequency can be modified (not sure if that's
 * very helpful). 
 *
 * Use case: as part of an SPI device class to actually read and write data to the
 * device. Other details (such as managing chip selects) would be handled by the
 * higher level class.
 *
 */
class SpiChannel
{
    private:
        const int channel; // Pi channel Either 0 or 1
        int frequency; // SPI frequency
        WiringPi wpi; // Constructing this object ensures wiringPi is setup
        std::vector<byte> read_write(const std::vector<byte> & write);

    public:
        SpiChannel(); // Constructor
        void change_frequency(int frequency); // Change frequency in Hz

        std::vector<byte> read(int num_bytes); // read takes int returns vector
        void write(const std::vector<byte> & write);   // write takes ref vector  
};

#endif
