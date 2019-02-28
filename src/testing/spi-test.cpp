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
#include "io.hpp"
#include "leds.hpp"
#include "buttons.hpp"

#include <cstdlib>
#include <cstring>
#include <signal.h>
#include <unistd.h>

int main() {    

  Led led0({0,4}, {0,2}, {0,3});
  Led led1({0,7}, {0,5}, {0,6});
  Led led2({1,4}, {1,2}, {1,3});
  Led led3({1,7}, {1,5}, {1,6});
  
  led0.rgb(0.0, 0, 1.0);
  led1.rgb(0.0, 1.0, 0.0);
  led2.rgb(1.0, 0.0, 0.0);
  led3.rgb(1.0, 0.0, 1.0);
  
  getInputOutput() -> print();

  Button btn0({0,2});
  Button btn1({1,7});
  Button btn2({1,1});
  Button btn3({1,2});
  Button btn4({1,0});
  Button btn5({1,3});
  Button btn6({0,1});
  Button btn7({0,0});

  
  while(1) {
    delay(5000);
    std::cout << btn0.get_state() << " "
	      << btn1.get_state() << " "
	      << btn2.get_state() << " "
	      << btn3.get_state() << " "
	      << btn4.get_state() << " "
	      << btn5.get_state() << " "
	      << btn6.get_state() << " "
	      << btn7.get_state() << " "
	      << "                   \r";
  }


  while(1);
}

