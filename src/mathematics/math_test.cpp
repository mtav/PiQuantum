#include <iostream>
#include "state.hpp"

int main(void)
                                                            {
    // TIMINGS @note 2-qubit gates take half the time of singles.
    //      0.01s/gate for 20 qubits
    //      0.9s/gate for 26 qubits
    //      1.8s/gate for 27
    // makes the vacuum state.
    State_vector state(20)                                  ;

    // take args, num of qubits to act on and angle
    Rotation_X X                                            ;
    Rotation_Y Y                                            ;
    Rotation_Z Z                                            ;
    Hadamard H                                              ;

    // meaning create a X that is controlled on 1 qubit 
    Rotation_X CNOT(2)                                      ;

    //state.print();
    for(int i=0; i<10; i++)
                                                            {
        state.apply(X,0)                                    ;
//        state.apply(CNOT, 0,1);
        state.disp();
                                                            }
    //// max sup state
    // state.apply(H,0);
    // state.apply(H,1);

    //  state.print();
    //  state.apply(CNOT, 0, 1);

    return 0                                                ;
                                                            }
