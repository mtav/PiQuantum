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

  // Make space
  double * average = (double * ) malloc(2 * 20 * sizeof(double));

  for(int i=0; i<100; i++) {
    //state.sgate(X,j);
    state.average(average);
    std::cout << "Operation " << i << std::endl;
  }
  
  // Print matrix
  //H.print();


  // Print the state
  state.print();
  
  
}
