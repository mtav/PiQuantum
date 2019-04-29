/** 
 * @file wpi.hpp
 * @authors J Scott, O Thomas
 * @date Feb 2019 
 *
 * @detail Header file for WiringPi functions
 *
 */

#ifndef WPI_HPP
#define WPI_HPP

#include <wiringPi.h>

/** 
 * @brief Class for initialising wiringPi
 *
 * @detail Everything that uses input/output
 * using wiringPi should include a WiringPi
 * private data member. That will make sure 
 * that the necessary setup routines get called
 * before anything starts using input/output
 * functions
 *
 */
class WiringPi {
private:
  static int setup; // Becomes 1 when wPi is initialised 
public:
  WiringPi() {
    if(setup == 0) {
      // Need to call this setup function for wiringPi before
      // using any of its functions. Use wiringPi pin conventions
      // (see the reference -> setup section of the wiringPi website).
      wiringPiSetup();      
    }
  }
};

#endif
