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
    State_vector state(4);

    // container for leds. should probs be in state.hpp or something
   // std::vector<Led> qubit_leds;
   
//////////////////////// OPTION 1
    
//    // add the leds with pin mappings
//    Led led0({0,4}, {0,2}, {0,3});
//    Led led1({0,7}, {0,5}, {0,6});
//    Led led2({1,4}, {1,2}, {1,3});
//    Led led3({1,7}, {1,5}, {1,6});

//    qubit_leds.push_back(led0);
//    qubit_leds.push_back(led1);
//    qubit_leds.push_back(led2);
//    qubit_leds.push_back(led3);

//////////////////////// OPTION 2

 //   qubit_leds.push_back(Led ({0,4}, {0,2}, {0,3}));
 //   qubit_leds.push_back(Led ({0,7}, {0,5}, {0,6}));
 //   qubit_leds.push_back(Led ({1,4}, {1,2}, {1,3}));
 //   qubit_leds.push_back(Led ({1,7}, {1,5}, {1,6}));

/////////////////////////////////
    //std::cout << "number of leds is: " << qubit_leds.size() << std::endl;

    // construct the statevector by passing led locations for each qubit
    //State_vector state(qubit_leds);

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
            state.apply(Z,i);
//            state.apply(CNOT, i,(i+1)%state.get_num_qubits());
            state.disp();

        }
    }
    Rotation_Z z1(1, PI), z2(1,PI/2);
    
    state.apply(Z,1);
    state.disp();
    state.apply(z2, 1);
    state.disp();
    //  state.print();
    //  state.apply(CNOT, 0, 1);

    std::cout << z1.matrix << "\n" << z2.matrix << std::endl;
    return 0;
}