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
  const std::vector<Position> positions;

  // RGB values (between zero and one)
  std::vector<double> rgb_values; // In order [0]=r, [1]=g, [2]=b
  
public:
  
  // Constructor and destructor
  Led(Position r, Position g, Position b);
  ~Led();
  
  // Read and write the RGB value
  void rgb(double red, double green, double blue);
  std::vector<double> rgb() { return rgb_values; }

  // Return the chip and line numbers
  std::vector<Position> get_positions() { return positions; }

};

#endif
