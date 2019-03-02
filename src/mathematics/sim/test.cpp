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

  // Apply H to all qubits
  //for(int i=0; i<2; i++){
  //  state.sgate(H,i);
  //}

  //state.sgate(X,0);
  //state.print();
  //state.sgate(Y,0);
  //state.cgate(X,0,1);

  for(int i=0; i<20; i++) {
    for(int j=0; j<20; j++) {
      state.sgate(X,j);
      std::cout << "Operation " << j << std::endl;
    }
  }
  
  // Print matrix
  //H.print();


  // Print the state
  state.print();
  
  
}
