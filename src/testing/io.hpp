/** 
 * @file io.hpp
 * @authors J Scott, O Thomas
 * @date Feb 2019 
 *
 * @detail IO control. 
 *
 */

#ifndef IO_HPP
#define IO_HPP

#include <wiringPi.h>
#include <signal.h>
#include <unistd.h>
#include <iostream>
#include <memory>
#include "spi.hpp"
#include "pin_mappings.hpp"

class Alarm {
    private:

        static Alarm * alrm; // A pointer to an alarm class

        static void handler(int sig) {
            if(sig != SIGALRM) {
                std::cerr << "Error: unexpected signal " << sig << ", expected SIGALRM"
                    << std::endl;
            }
            if(alrm != nullptr) alrm -> func(); // execute the intended function
        }// end of handler

        // Set the function called by the alarm 
        virtual void func() = 0;

        // Set up pointer to alarm object
        void set_pointer(Alarm * ptr) { alrm = ptr; }

    public:
        Alarm(int delay_us) { 
            // Set up alarm handler
            signal(SIGALRM, handler);

            // Schedule alarm
            ualarm(delay_us,delay_us);

            // Set pointer to this class
            set_pointer(this);
        }
};

// Forward declaration
class Led;
class InputOutput;

/**
 * @brief Wrapper to return InputOutput class
 *
 * @detail Return a shared_ptr object to an InputOutput. 
 */
std::shared_ptr<InputOutput> getInputOutput();

// Store the chip and line number for a particular
// LED
typedef struct {
  int chip;
  int line;
} Lines;

// Print the chip/lines for an LED
std::ostream & operator << (std::ostream & stream, Lines lines);

class InputOutput : public Alarm {
private:
  const int chips; // Number of TLC591x chips
  std::shared_ptr<SpiChannel> spi; // SPI interface
  std::vector<Led * > leds; // A list of pointers to LED objects
  std::vector<unsigned char> write; // Data to write to chips
  std::vector<unsigned char> mask; // Enable or disable LED lines 
  
  /**
   * @brief Function for simulating dimmable LEDs
   *
   * @detail This function is repeatedly called at a high 
   * rate by the alarm signal. Each time it is called it 
   * compares counter/period with an RGB value in Led.
   * If counter/period exceeds the RGB value the LED is 
   * switched off, otherwise it is left on. When the counter
   * is the same as the period, the counter is reset and all 
   * LEDs are switches back on.
   *
   */
  const int period;
  double counter; // To avoid integer division
  void func();

public:

  // Public just to test
  std::vector<unsigned char> button_states;

  InputOutput(std::shared_ptr<SpiChannel> spi) 
    : spi(spi), chips(2), period(10), 
      counter(0), Alarm(50000), button_states({0,0}) {

    // Set up pins for LEDs
    // Need to set initial state
    pinMode(PIN::LE, OUTPUT); // Set LE to output
    pinMode(PIN::OE, OUTPUT); // Set OE to output    

    // set up pins for button input
    pinMode(PIN::SHLD, OUTPUT);    //set inhibit to output mode
    digitalWrite(PIN::SHLD, HIGH);

    // Initialise data and mask arrays
    write = std::vector<unsigned char>(chips, 0);    
    mask = std::vector<unsigned char>(chips, 0);    

    
  } // end of InputOutput()

  // Print the registered LEDs
  void print();
  
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
    spi -> write(data);

    // Bring LE high momentarily
    digitalWrite(PIN::LE, HIGH);
    digitalWrite(PIN::LE, LOW); // Is this enough of a delay?

    // Bring the output enable low
    digitalWrite(PIN::OE, LOW); // No need to bring high again?

    return 0;
  } // end of set

  // Read button stuff
  void read_button_states(int num){
    // empty_data is number of chips elements as each unsignd char is 1 byte.
    // eg 2 chips empty_data = {0, 0} 2 bytes long
    
    // bring SHLD momentarily low to enable parallel load
    digitalWrite(PIN::SHLD, LOW); 
    digitalWrite(PIN::SHLD, HIGH);
    
    button_states = spi -> read(num); 

    return;
  }
  

  
  /** 
   * @brief Register LED
   *
   * @detail Register an Led object with the driver. The function stores a 
   * pointer to the Led object. There's a problem still to solve: how to
   * remove the entry when the Led object no longer exists. That can be 
   * fixed later.
   *
   */
  void register_led(Led * led);
  
}; // end of InputOutput

#endif
