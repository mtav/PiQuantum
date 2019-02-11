/** 
 * @file leds.hpp
 * @authors J Scott, O Thomas
 * @date Feb 2019 
 *
 * @detail LED control. 
 *
 */

#include <wiringPi.h>
#include <signal.h>
#include <unistd.h>

class Alarm {
private:
  // Alarm handler
  static void handler(int sig_num) {
    std::cout << "SIGALRM" << std::endl;
  }
  
public:
  Alarm() {
    // Set up alarm handler
    signal(SIGALRM, Alarm::handler);
    
    // Schedule alarm
    ualarm(5000,5000);
  }
  
};

class PIN {
public:
  static const int LE = 0; // Physical pin 11
  static const int OE = 1; // Physical pin 12
};

class LedDriver {
private:
  const int channel; // SPI channel number
  const double frequency; // SPI channel frequency
  const int chips; // Number of TLC591x chips
  SpiChannel spi; // SPI interface

public:
  
  LedDriver() : channel(0), frequency(500000), spi(channel, frequency), chips(2) {

    // Need to call this setup function for wiringPi before
    // using any of its functions. Use wiringPi pin conventions
    // (see the reference -> setup section of the wiringPi website).
    wiringPiSetup();

    // Set up pins
    pinMode(PIN::LE, OUTPUT); // Set LE to output
    pinMode(PIN::OE, OUTPUT); // Set OE to output    
    
  }

  /** 
   * @brief Turn on an LED via the external display driver TLC591x
   *
   * On power on, the chip (TLC591x) is in normal mode which means that
   * the clocked bytes sent to the chip set which LEDs are on and which 
   * are off (as opposed to setting the current of the LEDs).
   *
   * This function assumes that a number of the TLC591 chips are connected
   * together. Data is sent via SPI to the first chip and passed along the
   * chain to other devices.
   *
   * To write to the device:
   *
   *  1) Write a number of bytes to the SPI port, equal to the number of
   *     chips connected together
   *  2) Momentarily set the LE(ED1) pin to latch the data onto the output 
   *     register.
   *  3) Bring the OE(ED2) pin low to enable the current sinking to turn 
   *     on the LEDs.
   *
   * See the timing diagram on page 17 of the datasheet for details.  
   *
   * Arguments: a std::vector of the data to write to the display chips
   * 
   */
  int set(std::vector<unsigned char> data) {

    // Check data is the right length
    if(data.size() != chips) {
      std::cerr << "LED driver error: wrong number of bytes in data"
		<< std::endl;
      abort();
    }
    
    // Read and write data (multiple bytes)
    std::vector<unsigned char> read = spi.read_write(data);
  
    // Bring LE high momentarily
    digitalWrite(PIN::LE, HIGH);
    digitalWrite(PIN::LE, LOW); // Is this enough of a delay?
  
    // Bring the output enable low
    digitalWrite(PIN::OE, LOW); // No need to bring high again?
    
    return 0;
    
  }

  
  
};


