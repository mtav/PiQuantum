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

#include <cstdlib>
#include <cstring>
#include <signal.h>
#include <unistd.h>

void interrupt(int signal) {
  if(signal != SIGALRM) {
    std::cerr << "Error: unexpected signal " << signal << ", expected SIGALRM"
	      << std::endl;
    return;
  }
}

int main() {

  //  signal(SIGALRM, interrupt);
  //ualarm(100000,100000);

  //Alarm alrm;
  
  LedDriver leds;
  /*
  unsigned char byte = 0;
  while(1) {
    byte ++;
    delay(100);
    leds.set({byte,byte});
  }
  */
  double thing = 0;
  while(1) {
    std::cin >> thing;
    leds.test_led.red = thing; 
  };
}
