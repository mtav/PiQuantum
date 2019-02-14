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

  // Shared SPI channel objects for channel 0 and 1. Everything using
  // SPI should take this variable and store it in a shared_ptr object
  std::shared_ptr<SpiChannel> spi_0 = std::make_shared<SpiChannel>(0, 500000); 
  std::shared_ptr<SpiChannel> spi_1 = std::make_shared<SpiChannel>(1, 500000);

  // A shared object for driving TLC591x based LEDs. Each LED object
  // should take this and store it in a shared_ptr
  std::shared_ptr<LedDriver> leds = std::make_shared<LedDriver>(spi_0);

  
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

