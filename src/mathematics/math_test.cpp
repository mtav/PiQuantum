#include <iostream>

#include "state.hpp"

int main(void)
{

    State_vector state(2);

    // take args, num of qubits to act on and angle
    Rotation_X X;
    Rotation_Y Y;
    Rotation_Z Z;
    Hadamard H;

    // meaning create a X that is controlled on 1 qubit 
    Rotation_X CNOT(2);

    state.print();

    // max sup state
    state.apply(H,0);
    state.apply(H,1);

    state.apply(CNOT, 0, 1);
    return 0;
}
