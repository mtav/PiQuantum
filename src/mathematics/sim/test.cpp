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

  // Apply the H gate to all qubits 20 times for benchmarking
  for (int k=0; k<20; k++) {
    for (int i=0; i<20; i++) {
      state.sgate(H, i);
      std::cout << "Operator " << i << std::endl;
    }
  }

  // Print the state
  state.print();
  
  
}
