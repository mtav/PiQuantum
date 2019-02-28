/** 
 * @file leds.hpp
 * @authors J Scott, O Thomas
 * @date Feb 2019 
 *
 * @detail LED control. 
 *
 */

#ifndef LEDS_HPP
#define LEDS_HPP

#include "io.hpp"

/**
 * @brief RGB Led class
 *
 * @detail Objects of this class represent RGB LEDs. When the class is 
 * instantiated, it creates an InputOutput class driver automatically (if
 * on does not already exist) and then registers itself with it, so that
 * its RGB values are automatically sent to the device.
 *
 * The constructor takes three arguments which are the positions on the 
 * driver chips of the R, G and B lines. They are specified in the form
 * {chip, line}, where chip is the chip number and line is the line number
 * on that chip.
 *
 * RGB values are updated using the set_rgb function. RGB values are between
 * 0 and 1, with 0 representing off and 1 representing maximum brightness. The
 * new state will be written immediately to the LEDs. To turn the LED off write
 * RGB values of 0.
 *
 */
class Led {
private:
  
  std::shared_ptr<InputOutput> driver; // Underlying hardware driver  
  int id; // Used to identify the LED to the driver
  const std::vector<Position> positions; // Chip and line numbers 
  std::vector<double> rgb; // RGB values (0 to 1): In order [0]=r, [1]=g, [2]=b
  
public:

  Led(Position r, Position g, Position b); // Constructor
  ~Led(); // Destructor
  void set_rgb(double red, double green, double blue); // Write RGB values
  std::vector<double> get_rgb(); // Read RGB values
  std::vector<Position> get_positions();  // Return the chip and line numbers
};

#endif
