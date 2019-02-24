#include <iostream>
#include "state.hpp"

int main(void)
{
    // TIMINGS @note 2-qubit gates take half the time of singles.
    //      0.01s/gate for 20 qubits
    //      0.9s/gate for 26 qubits
    //      1.8s/gate for 27
    // makes the vacuum state.
    State_vector state(24);

    // take args, num of qubits to act on and angle
    Rotation_X X;
    Rotation_Y Y;
    Rotation_Z Z;
    Hadamard H;

    // meaning create a X that is controlled on 1 qubit 
    Rotation_X CNOT(2);

    //    for(int i=0; i<10; i++)
    //    {
    //        state.apply(X,0);
    //    }
    //// max sup state
    // state.apply(H,0);
    // state.apply(H,1);

    //  state.print();
    //  state.apply(CNOT, 0, 1);
//    state.print();


   // testing the caching index list idea.
    for(int j =0; j<state.get_num_qubits(); j++)
    {
        for(int i=0; i<state.get_size()/2.0; i++)
        {
  //          std::cout << "qubit " << j <<" zero pos " << state.qubit_index[j].zero[i] << " one " << state.qubit_index[j].one[i] << std::endl;
        }
    }
    return 0;
}
