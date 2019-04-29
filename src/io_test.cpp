/**
 * @file Main for debugging the io code
 * @authors O Thomas, J Scott
 * @date April 2019
 *
 */
#include <iostream>
#include "interface.hpp"

int main(void) {

  //Position pos = {0,3};
  std::unique_ptr<Led> p_led = std::make_unique<Led>( Position{0,4}, Position{0,2}, Position{0,3} );

  p_led -> set_rgb(0.2, 0, 0);
  
  while(1);
  
  return 0;
}
