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

/**
 * @brief Interrupts in Linux
 *
 * @detail This class implements the SIGALARM function in Linux. 
 * SIGALARM can be setup to call a function at regular intervals.
 * The function (func) does not have an implementation in this class
 * -- it is defined in the derived InputOutput class. The constructor
 * sets up the SIGALARM (defining the period, etc.)
 *
 */
class Alarm {
private:
  static Alarm * alrm; // A pointer to an alarm class
  static void handler(int sig);  
  virtual void func() = 0;   // Set the function called by the alarm 
  void set_pointer(Alarm * ptr) { alrm = ptr; } // Set up pointer to alarm object
  
public:
  // Constructor
  Alarm(int delay_us);
};

/**
 * @brief Wrapper to return InputOutput class
 *
 * @detail Return a shared_ptr object to an InputOutput.
 * Functions should use this function to get a shared pointer
 * to the InputOutput object. This function ensures that there is
 * only ever one. Functions should not instantiate InputOutput objects
 * directly 
 *
 */
std::shared_ptr<class InputOutput> getInputOutput();

/** 
 * @brief Chip/line structure 
 *
 * @detail Store the chip and line number for 
 * a particular LED or button.
 *
 */
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
  std::vector<class Led * > leds; // A list of pointers to Led objects
  std::vector<class Button * > buttons; // A list of pointers to Button objects
  
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
   * @brief Send data to the LEDs 
   *
   * @detail Send a std::vector of bytes to the LED drivers. This function is
   * called repeatedly in the func SIGALARM function to update the state of the
   * LEDs
   *
   */
  int set_leds(std::vector<byte> data);

  /**
   * @brief Read all the button states
   *
   * @detail Read a number @param num of bytes from the button shift 
   * registers and return it in a standard vector. The SIGALARM function (func)
   * calls this function to update the state of all the button objects
   *
   */
  std::vector<byte> read_button_states(int num);
  
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
