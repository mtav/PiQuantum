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
    //
    //  ON THE PI
    //  I have made some improvements, the state now HAS to start in vacuum always
    //  otherwise there is a perfomance issue.
    //  Each qubit has a flag qubit_state[0].uptodate which is either true or false
    //  When apply() is used on a qubit its uptodate val is changed to false, 
    //  when disp() is called only the qubits that are not uptodate are updated.
    //
    //  Times, for a Hadamard on each qubit with disp updating after each gate takes 
    //  20 qubits 6s - 0.3s/gate & disp for each qubit.
    //  20 qubits only gates 3s - 0.15s/gate for each qubit
    State_vector state(20);

    // take args, num of qubits to act on and angle
    Rotation_X X;
    Rotation_Y Y;
    Rotation_Z Z;
    Hadamard H;

    // meaning create a X that is controlled on 1 qubit 
    Rotation_X CNOT(2);

    //state.print();
    //
    // super efficient!!!! DO NOT LOOP H OVER QUBITS, VERY SLOW
    // make H^xN 
    // state.max_superpos();

    state.disp();
    for(int k=0; k<1; k++)
    {
        for(int i=0; i<state.get_num_qubits(); i++)
        {
            //state.apply(X,i);
            state.apply(H,i);
            //state.apply(Z,i);
            //state.apply(CNOT, i,(i+1)%20);
            state.disp();

        }
    }
    state.apply(Z,1);
    state.disp();
    //  state.print();
    //  state.apply(CNOT, 0, 1);

    return 0;
}
