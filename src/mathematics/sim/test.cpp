/**
 * @file Testing maths 
 *
 *
 *
 */

#include "state.hpp"

int main() {

  // 20 qubit state
  State state(20);

  // Print the state
  state.print();

  // Make Hadamard
  Operator H;

  // Print matrix
  H.print();
  
}
