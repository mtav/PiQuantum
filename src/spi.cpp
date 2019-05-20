/** 
 * @file spi.cpp
 * @authors J Scott, O Thomas
 * @date Feb 2019 
 *
 * @detail Implementations relating to SPI communications
 *
 */

#include "spi.hpp"

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
std::shared_ptr<SpiChannel> getSpiChannel(void)
{
    // Variables to store the SpiChannels for channel
    // zero and 1. Initialisation takes place the first time
    // the function is called and not subsequently, so the
    // variable starts as a nullptr and then takes on values
    // when new SpiChannels are created.
    std::shared_ptr<SpiChannel> spi = nullptr;

    // If necessary, make a new SPI channel
    if(spi == nullptr) /* lol */ spi = std::make_shared<SpiChannel>();

    // Return the spi channel pointer
    return spi; 
}

// @todo check max/good freq for spi
SpiChannel::SpiChannel(void) : channel(0), frequency(500000)
{
    // Set up SPI channel
    int result = wiringPiSPISetup(channel, frequency);
    if(result == -1) { std::cerr << strerror(errno) << std::endl; }
}

// Change frequency in Hz
void SpiChannel::change_frequency(int freq_hz)
{
    // Store the new freq
    frequency = freq_hz;

    // Reset the SPI channel
    int result = wiringPiSPISetup(channel, frequency);
    if(result == -1) { std::cerr << strerror(errno) << std::endl; }
}

/** 
 * @brief Read/write spi
 *
 * @detail Simultaneous read/write data to the SPI interface
 * Pass a std::vector to write. Read data is returned as a std::vector.
 * The function uses the fact that a pointer to the first element of a 
 * std::vector is a valid C style array
 *
 */
std::vector<byte> SpiChannel::read_write(const std::vector<byte> & write)
{
    // Allocate a buffer which is a copy of write and store its length
    std::vector<byte> buffer(write);   
    int len = write.size();

    // Send the data
    int result = wiringPiSPIDataRW(channel, &buffer[0], len);
    if(result != len) { std::cerr << "SPI Error: wrong amount of data sent" << std::endl; }

    // Buffer now contains data read from SPI
    return buffer;
}

/**
 * @brief Read spi data
 *
 * @detail Function for reading @param num_bytes from an 
 * spi device. Data is returned as a standard vector.
 *
 */
std::vector<byte> SpiChannel::read(int num_bytes)
{
    // makes a vector of size num_bytes with entries = 0
    std::vector<byte> empty(num_bytes, 0);
    return SpiChannel::read_write(empty);
}

/**
 * @brief Write spi data
 *
 * @detail Function for writing @param write from an 
 * spi device. Data is returned as a standard vector.
 *
 */
void SpiChannel::write(const std::vector<byte> & write) { read_write(write); }
