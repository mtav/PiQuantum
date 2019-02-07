/** 
 * @file spi-test.cpp
 * @authors J Scott, O Thomas
 * @date Feb 2019 
 *
 * @detail Example file for using SPI interface
 *
 */

#include <iostream>
#include "spi.hpp"
#include <wiringPi.h>
#include "leds.hpp"

int main() {
  
  LedDriver leds;

  unsigned char byte = 0;
  while(1) {
    byte ++;
    delay(100);
    leds.set({byte,byte});
  }
}
