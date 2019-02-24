#include <iostream>

#include "state.hpp"

int main(void)
{
    // makes the vacuum state.
    State_vector state(20);
    
    // take args, num of qubits to act on and angle
    Rotation_X X;
    Rotation_Y Y;
    Rotation_Z Z;
    Hadamard H;

    // meaning create a X that is controlled on 1 qubit 
    Rotation_X CNOT(2);

    state.apply(X,0);
    state.apply(X,1);

    // max sup state
 //   state.apply(H,0);
    //state.apply(H,1);

  //  state.print();
 //   state.apply(CNOT, 0, 1);
//  state.print();
    
    return 0;
}
