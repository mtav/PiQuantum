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
#include "wpi.hpp"
#include "leds.hpp"

#include <cstdlib>
#include <cstring>
#include <signal.h>
#include <unistd.h>

int main() {
      

  Led led0({{0,4}, {0,2}, {0,3}});
  //Led led1(0, {7, 5, 6});
  //Led led2(1, {4, 2, 3});
  //Led led3(1, {7, 5, 6});

  
  led0.rgb(0.0, 0, 1.0);
  //led1.set_rgb({0.0, 0, 1.0});
  //led2.set_rgb({0.0, 0.0, 1.0});
  //led3.set_rgb({0.0, 0.0, 1.0});
  
  getLedDriver(0) -> print();
  
  //std::cout << "red:" << led.get_rgb()[0] << std::endl;
  //std::cout << "greed:" << led.get_rgb()[1] << std::endl;
  //std::cout << "blue:" << led.get_rgb()[2] << std::endl;
  
  
  /*
    unsigned char byte = 0;
    while(1) {
    byte ++;
    delay(100);
    leds.set({byte,byte});
    }
  */
  //  double thing = 0;
  //while(1) {
  //  std::cin >> thing;
  //  leds.test_led.red = thing; 
  //};

  while(1);
}

