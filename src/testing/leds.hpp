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

class Led {
private:
  // A pointer to the LED driver which writes
  // data to the hardware. Each Led object
  // needs to register itself with the
  // driver. The driver then polls the
  // Led objects to read their color and
  // write it to the hardware device
  std::shared_ptr<InputOutput> driver;
    
  // Chip and line numbers 
  const std::vector<Lines> lines;

  // RGB values (between zero and one)
  std::vector<double> rgb_values; // In order [0]=r, [1]=g, [2]=b
  
public:
  
  // Initialise with zero RGB values
  Led(Lines r, Lines g, Lines b)
    : rgb_values(3,0), lines({r,g,b}), driver(getInputOutput())
  {
    // Register the Led object with the driver
    driver -> register_led(this); 
  }

  ~Led() {
    // De register the Led object from the driver
    // Something like this. Don't really want a
    // memory leak, but in practice it'll be fine for now.
    //driver -> deregister_led(id);
  }

  // Read and write the RGB value
  // May as well just make this public...
  void rgb(double red, double green, double blue) {
    rgb_values[0] = red;
    rgb_values[1] = green;
    rgb_values[2] = blue;
  }
  std::vector<double> rgb() { return rgb_values; }

  // Return the chip and line numbers
  std::vector<Lines> get_lines() { return lines; }

};

#endif
