#include <iostream>
#include "state.hpp"

int main(void)
{
    // TIMINGS @note 2-qubit gates take half the time of singles.
    //      0.01s/gate for 20 qubits (on Oli's laptop)
    //      0.9s/gate for 26 qubits
    //      1.8s/gate for 27
    // makes the vacuum state.
  // On PI: 0.07 per gate for 20 qubits (for qubit 0)
  //        0.17 per gate for 20 qubits (averaged for all qubits)
  //        0.04 per two-qubit gate for 20 qubits
  //        3s per display average for all 20 qubits
  // 
    State_vector state(20);

    // take args, num of qubits to act on and angle
    Rotation_X X;
    Rotation_Y Y;
    Rotation_Z Z;
    Hadamard H;

    // meaning create a X that is controlled on 1 qubit 
    Rotation_X CNOT(2);

    //state.print();
    for(int k=0; k<10; k++) {
      for(int i=0; i<20; i++)
	{
	  state.apply(X,i);
	  //state.apply(CNOT, 0,1);
	  //state.disp();
	  
	  // use state.disp_list_all() to calculate the average state of all qubits. 
	  //        state.disp_list_all();
	  //      // use state.disp_list(number of qubit) to calc average state of a specific qubit
	  //    state.disp_list(0);
	}
    }
    //// max sup state
    // state.apply(H,0);
    // state.apply(H,1);

    //  state.print();
    //  state.apply(CNOT, 0, 1);

    return 0;
}
