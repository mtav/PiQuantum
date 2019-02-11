/** 
 * @file leds.cpp
 * @authors J Scott, O Thomas
 * @date Feb 2019 
 *
 * @detail LED control. 
 *
 */

#include <wiringPi.h>
#include "spi.hpp"
#include "leds.hpp"

Alarm * Alarm::alrm = nullptr; // A pointer to an alarm class
