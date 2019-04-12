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

void make_leds_light_up(const std::vector<State_vector::Qubit_states> & states, Led & led0, Led & led1, Led & led2, Led & led3)
{
    led0.set_rgb(states[0].zero_amp, states[0].phase, states[0].one_amp);
    led1.set_rgb(states[1].zero_amp, states[1].phase, states[1].one_amp);
    led2.set_rgb(states[2].zero_amp, states[2].phase, states[2].one_amp);
    led3.set_rgb(states[3].zero_amp, states[3].phase, states[3].one_amp);
}

int get_qubit_btn(Button & btn_q0, Button & btn_q1, Button & btn_q2, Button & btn_q3)
{
    while(1)
    {
        if(btn_q0.get_state()) return 0;
        else if(btn_q1.get_state()) return 1;
        else if(btn_q2.get_state()) return 2;
        else if(btn_q3.get_state()) return 3;
    }
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

    Button btn_q0({0,2}); // qubit 0
    Button btn_q1({1,7}); // qubit 1 
    Button btn_q2({1,1}); // qubit 2
    Button btn_q3({1,2}); // qubit 3
    Button btn_x({1,0}); // x
    Button btn_z({1,3}); // z
    Button btn_h({0,1}); // H 
    Button btn_cnot({0,0}); // CNOT

    // take args, num of qubits to act on and angle
    Rotation_X X;
    Rotation_Y Y;
    Rotation_Z Z;
    Hadamard H;

    // meaning create a X that is controlled on 1 qubit 
    Rotation_X CNOT(2);

    state.disp();

    make_leds_light_up(state.qubit_state, led0, led1, led2, led3);

    delay();

    std::cout << "Choose display mode \n Qubit 1 for average \n Qubit 2 for cycling: " << std::endl;
    int display_mode = 0;

    while(display_mode == -1)
    {
        if(btn_q0.get_state())
        {
            display_mode = 0;
            std::cout << " you chose average display " << std::endl;
        }
        else if(btn_q1.get_state())
        {
            display_mode = 1;
            std::cout << " you chose the cycling mode " << std::endl;
        }
    }

    // main loop
    // ask for a gate,
    // then ask for 1 or 2 qubits 
    // then update display 
    // then repeat
    while(true)
    {
        // gates 
        bool no_gate = true;
        std::cout << " Waiting for a gate " << std::endl;
        while(no_gate)
        {
            if(btn_x.get_state())
            {
                // do x
                int qubit = get_qubit_btn(btn_q0,btn_q1,btn_q2,btn_q3);
                state.apply(X,qubit);
                no_gate = false;
            }
            else if(btn_z.get_state())
            {
                // do z
                int qubit = get_qubit_btn(btn_q0,btn_q1,btn_q2,btn_q3);
                state.apply(Z,qubit);
                no_gate=false;
            }
            else if(btn_h.get_state())
            {
                // do h
                int qubit = get_qubit_btn(btn_q0,btn_q1,btn_q2,btn_q3);
                state.apply(H,qubit);
                no_gate=false;
            }
            else if(btn_cnot.get_state())
            {
                // do cnot
                std::cout << "CNOT PRESSED" << std::endl;
                int qubit1 = get_qubit_btn(btn_q0,btn_q1,btn_q2,btn_q3);
                int qubit2 = get_qubit_btn(btn_q0,btn_q1,btn_q2,btn_q3);
                // to deal with pressing time button bouncing 
                while(qubit2 == qubit1){ qubit2 = get_qubit_btn(btn_q0,btn_q1,btn_q2,btn_q3);}
                std::cout << " qubit 1, " << qubit1 << " qubit 2, " << qubit2 << std::endl;
                state.apply(CNOT, qubit1, qubit2);
                no_gate=false;
            }
        }


        if(display_mode == 0)
        {
            // after gate update display 
            state.disp();
            make_leds_light_up(state.qubit_state, led0, led1, led2, led3);
        }
        else if(display_mode == 1)
        {
            std::vector<std::vector<State_vector::Qubit_states> > cycle_states = state.disp_cycle();
            for(int i = 0; i < (int)cycle_states.size(); i++)
            {
                make_leds_light_up(cycle_states[i], led0, led1, led2, led3);
                delay();
            }
        }
    }


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

