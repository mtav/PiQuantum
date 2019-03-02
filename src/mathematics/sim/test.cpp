/**
 * @file Testing maths 
 *
 *
 *
 */

#include "state.hpp"

int main() {

  // 20 qubit state
  State state(2);

  // Print the state
  state.print();

  // Make Hadamard
  Hadamard H;

  // Apply H to all qubits
  //for(int i=0; i<2; i++){
  //  state.sgate(H,i);
  //}

  //state.sgate(H,0);
  state.cgate(H,0,1);
  
  // Print matrix
  //H.print();


  // Print the state
  state.print();
  
  
}
