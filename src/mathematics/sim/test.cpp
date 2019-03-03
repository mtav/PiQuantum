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

  // Make gates
  Hadamard H;
  XGate X;
  YGate Y;
  ZGate Z;

  for(int i=0; i<20; i++) {
    for(int j=0; j<20; j++) {
      state.cgate(X,0,j);
      std::cout << "Operation " << j << std::endl;
    }
  }
  
  // Print matrix
  //H.print();


  // Print the state
  state.print();
  
  
}
