#include <iostream>
#include "state.hpp"

std::string delay()
{
    int a =0;
    for(long int i=0; i<100000000; i++)
    {
        a+=i;
    }
    std::cout << std::to_string(a);
    return std::to_string(a);
}

void make_leds_light_up(const State_vector & state, Led & led0, Led & led1, Led & led2, Led & led3)
{
    led0.set_rgb(state.qubit_state[0].zero_amp, state.qubit_state[0].phase, state.qubit_state[0].one_amp);
    led1.set_rgb(state.qubit_state[1].zero_amp, state.qubit_state[1].phase, state.qubit_state[1].one_amp);
    led2.set_rgb(state.qubit_state[2].zero_amp, state.qubit_state[2].phase, state.qubit_state[2].one_amp);
    led3.set_rgb(state.qubit_state[3].zero_amp, state.qubit_state[3].phase, state.qubit_state[3].one_amp);
}

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
    Led led0({0,4}, {0,2}, {0,3});
    Led led1({0,7}, {0,5}, {0,6});
    Led led2({1,4}, {1,2}, {1,3});
    Led led3({1,7}, {1,5}, {1,6});
    
    Button btn0({0,2});
    Button btn1({1,7});
    Button btn2({1,1});
    Button btn3({1,2});
    Button btn4({1,0});
    Button btn5({1,3});
    Button btn6({0,1});
    Button btn7({0,0});

    // take args, num of qubits to act on and angle
    Rotation_X X;
    Rotation_Y Y;
    Rotation_Z Z;
    Hadamard H;

    // meaning create a X that is controlled on 1 qubit 
    Rotation_X CNOT(2);

    state.disp();
    return 0;     
    
    //make_leds_light_up(state, led0, led1, led2, led3);
    
    delay();

    for(int k=0; k<1; k++)
    {
        for(int i=0; i<state.get_num_qubits(); i++)
        {
            state.apply(X,i);
        //    state.apply(H,i);
        //    state.apply(Z,i);
            //            state.apply(CNOT, i,(i+1)%state.get_num_qubits());
            state.disp();
	    //      make_leds_light_up(state, led0, led1, led2, led3);

        }
    }
    //    state.disp();
    //make_leds_light_up(state, led0, led1, led2, led3);

    // Infinite while loop
    while(1)
    
        return 0;
}

