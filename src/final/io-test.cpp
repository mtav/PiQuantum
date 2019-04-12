/** 
 * @file spi-test.cpp
 * @authors J Scott, O Thomas
 * @date Feb 2019 
 *
 * @detail Example file for using SPI interface
 *
 */

#include <iostream>
#include "interface.hpp"

#include <cstdlib>
#include <cstring>
#include <signal.h>
#include <unistd.h>
#include <cstdlib>

int main() {    

  Led led0({0,4}, {0,2}, {0,3});
  Led led1({0,7}, {0,5}, {0,6});
  Led led2({1,4}, {1,2}, {1,3});
  Led led3({1,7}, {1,5}, {1,6});

  while(1){
double r0 = (rand()%10)/10.0;
double r1 = (rand()%10)/10.0;
double r2 = (rand()%10)/10.0;

double r3 = (rand()%10)/10.0;
double r4 = (rand()%10)/10.0;
double r5 = (rand()%10)/10.0;

double r6 = (rand()%10)/10.0;
double r7 = (rand()%10)/10.0;
double r8 = (rand()%10)/10.0;


led0.set_rgb(r0, r1, 0);
  led1.set_rgb(r3, r4, 0);
  led2.set_rgb(r6,r7, 0);
  led3.set_rgb(1.0, 0.0, 1.0);

  delay(5000);
  }
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

