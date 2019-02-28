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

#include "wpi.hpp"
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
 * The function (interrupt) does not have an implementation in this class.
 * It is defined in the derived InputOutput class. The constructor
 * sets up the SIGALARM (defining the period, etc.)
 *
 */
class Alarm
{
private:
  WiringPi wpi; // Constructor ensures that wiringPi is setup
  static Alarm * alrm; // A pointer to an alarm class
  static void handler(int sig);  
  virtual void interrupt() = 0;   // Set the function called by the alarm 
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
 * @brief Class for reading buttons and writing to LEDs
 *
 * @detail There are two main parts to the class. The first part is 
 * two arrays of pointers (one for button objects and one for LEDs)
 * which are `registered' with this class automatically when they are
 * instantiated. 
 *
 * The second part is a function, called interrupt(), which is called at
 * regular intervals by the SIGALARM signal (a linux thing). This function
 * is responsible for updating the states of the LEDs and reading the 
 * state of all the buttons.
 *
 * The LEDs are controlled using a pulse width modulation type scheme, 
 * which interrupt() simulates. I keeps track of a counter, which is incremented
 * by 1 every time interrupt() is called. When it gets to period, it is reset 
 * to zero. As the counter ranges through 0 to period, each registered LED
 * object is queried to get an RGB values (between 0 and 1). If this value
 * exceeds counter/period (also between 0 and 1), then the LED is turned off.
 * The LEDs are all switched back on when the counter is reset to zero
 *
 * The user program never uses this program. It is implicitely instantiated 
 * when Led and Button objects are instantiated.
 *
 */
class InputOutput : public Alarm {
private:

  WiringPi wpi; // Constructing this object ensures wiringPi is setup
  std::shared_ptr<SpiChannel> spi; // SPI interface
  const unsigned int chips; // Number of TLC591x chips
  std::vector<class Led * > leds; // A list of pointers to Led objects
  std::vector<class Button * > buttons; // A list of pointers to Button objects
  const int period; // The period of pulsed LED control
  double counter; // To avoid integer division in func()
  std::vector<unsigned char> write; // Data to write to chips
  std::vector<unsigned char> mask; // Enable or disable LED lines 
  
  /**
   * @brief Function for simulating dimmable LEDs and reading buttons
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
  void interrupt();

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
   * @brief Register and deregister LEDs and buttons
   *
   * @detail Register a objects with the driver. The function stores a 
   * pointer to the object. There's a problem still to solve: how to
   * remove the entry when the Led object no longer exists. That can be 
   * fixed later.
   *
   */
  int register_led(Led * led);
  void deregister_led(int id);
  int register_button(Button * btn);
  void deregister_button(int id);

  
}; // end of InputOutput

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

/** 
 * @brief Print the chip/lines for an LED
 *
 * @detail Useful for easily printing out Position structs in
 * an easy to read format.
 *
 */
std::ostream & operator << (std::ostream & stream, Position lines);


#endif
