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


      
  // Need to call this setup function for wiringPi before
  // using any of its functions. Use wiringPi pin conventions
  // (see the reference -> setup section of the wiringPi website).
  wiringPiSetup();

  //  signal(SIGALRM, interrupt);
  //ualarm(100000,100000);

  // Shared SPI channel objects for channel 0 and 1. Everything using
  // SPI should take this variable and store it in a shared_ptr object
  std::shared_ptr<SpiChannel> spi_0 = std::make_shared<SpiChannel>(0, 500000); 
  std::shared_ptr<SpiChannel> spi_1 = std::make_shared<SpiChannel>(1, 500000);

  // A shared object for driving TLC591x based LEDs. Each LED object
  // should take this and store it in a shared_ptr
  std::shared_ptr<LedDriver> led_driver = std::make_shared<LedDriver>(spi_0);

  Led led1(0, {7, 6, 5}, led_driver);
  led1.set_rgb({0.5, 0.5, 0.5});

 
  
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

