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
std::shared_ptr<SpiChannel> getSpiChannel(int channel) {
  // Variables to store the SpiChannels for channel
  // zero and 1. Initialisation takes place the first time
  // the function is called and not subsequently, so the
  // variables start as nullptrs and then take on values
  // when new SpiChannels are created.
  using ptr = std::shared_ptr<SpiChannel>;
  // Set the size of the vector to two
  static std::vector<ptr> spi = {nullptr, nullptr};
  // If necessary, make a new SPI channel
  if(spi[channel] == nullptr)
    spi[channel] = std::make_shared<SpiChannel>(channel, 500000);
  // Return the spi channel pointer
  return spi[channel];
  
}

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

/** 
 * @brief Read/write spi
 *
 * @detail Simultaneous read/write data to the SPI interface
 * Pass a std::vector to write. Read data is returned as a std::vector
 *
 */
std::vector<byte> SpiChannel::read_write(const std::vector<byte> & write) {
    // Allocate memory for a data buffer 
    int len = write.size();
    byte * buffer = static_cast<byte * >(malloc(sizeof(byte)*len));

    // Store std::vector in char array
    std::copy(write.begin(), write.end(), buffer);

    // Send the data
    int result = wiringPiSPIDataRW(channel,
				   buffer ,
				   len);
    if(result != len) {
      std::cout << "SPI Error: wrong amount of data sent" << std::endl;
    }

    // Store returned data in std::vector<unsigned char>
    std::vector<byte> read(buffer, buffer+len);

    // Free the buffer memory
    free(buffer);
    return read;
}

/**
 * @brief Read spi data
 *
 * @detail Function for reading @param num_bytes from an 
 * spi device. Data is returned as a standard vector.
 *
 */
std::vector<byte> SpiChannel::read(int num_bytes) {
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
void SpiChannel::write(const std::vector<byte> & write) {
    read_write(write);
}
