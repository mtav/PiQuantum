/**
 * @file Main for debugging the io code
 * @authors O Thomas, J Scott
 * @date April 2019
 *
 */
#include <iostream>
#include "interface.hpp"

int main(void) {

  std::unique_ptr<Led> p_led = std::make_unique<Led>({0,4}, {0,2}, {0,3});



  return 0;
}
