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
  static void handler(int sig);  
  // Set the function called by the alarm 
  virtual void func() = 0;
  
  // Set up pointer to alarm object
  void set_pointer(Alarm * ptr) { alrm = ptr; }
  
public:
  // Constructor
  Alarm(int delay_us);

};

// Forward declaration
class Led;
class Button;
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
} Position;

// Print the chip/lines for an LED
std::ostream & operator << (std::ostream & stream, Position lines);

class InputOutput : public Alarm {
private:

  WiringPi wpi; // Constructing this object ensures wiringPi is setup
  std::shared_ptr<SpiChannel> spi; // SPI interface
  const unsigned int chips; // Number of TLC591x chips
  std::vector<Led * > leds; // A list of pointers to Led objects
  std::vector<Button * > buttons; // A list of pointers to Button objects
  
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

  std::vector<unsigned char> write; // Data to write to chips
  std::vector<unsigned char> mask; // Enable or disable LED lines 

public:

  // Constructor
  InputOutput(std::shared_ptr<SpiChannel> spi);
  
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
  int set_leds(std::vector<unsigned char> data);

  // Read button stuff
  std::vector<unsigned char> read_button_states(int num);
  
  /** 
   * @brief Register LEDs and buttons
   *
   * @detail Register a objects with the driver. The function stores a 
   * pointer to the object. There's a problem still to solve: how to
   * remove the entry when the Led object no longer exists. That can be 
   * fixed later.
   *
   */
  void register_led(Led * led);
  void register_button(Button * btn);

  
}; // end of InputOutput

#endif
