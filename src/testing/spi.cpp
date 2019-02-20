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
    // Check channel
    if((channel !=0) && (channel != 1)) {
        std::cerr << "SPI Error: Channel must be 0 or 1" << std::endl;
        abort();
    }

    // Set up SPI channel
    int result = wiringPiSPISetup(channel, frequency);
    if(result == -1) {
        std::cout << strerror(errno) << std::endl;
    }
}

// Change frequency in Hz
void SpiChannel::change_frequency(int frequency) {
    // Reset the SPI channel
    int result = wiringPiSPISetup(channel, frequency);
    if(result == -1) {
        std::cout << strerror(errno) << std::endl;
    }
}

//---------------------------------- Read write spi ---------------------------
//
// Simultaneous read/write data to the SPI interface
// Pass a std::vector to write. Read data is returned as a std::vector
unsgn_char_vect SpiChannel::read_write(const unsgn_char_vect & write) {
    // Allocate memory for a data buffer 
    int len = write.size();
    unsigned char * buffer = static_cast<unsigned char * >(malloc(sizeof(unsigned char)*len));

    // Store std::vector in char array
    std::copy(write.begin(), write.end(), buffer);

    // Send the data
    int result = wiringPiSPIDataRW(channel, buffer, len);
    if(result != len) {std::cout << "SPI Error: wrong amount of data sent" << std::endl;}

    // Store returned data in std::vector<unsigned char>
    unsgn_char_vect read(buffer, buffer+len);

    // Free the buffer memory
    free(buffer);
    return read;
}

// read takes int returns vector
unsgn_char_vect SpiChannel::read(int num_bytes)
{
    // makes a vector of size num_bytes with entries = 0
    unsgn_char_vect v_empty(num_bytes, 0);
    return SpiChannel::read_write(v_empty);
}

// write takes ref vector 
void SpiChannel::write(const unsgn_char_vect & write)
{
    read_write(write);
}
