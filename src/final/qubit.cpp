

#include <iostream>
#include "state.hpp"
#include "interface.hpp"

int main(void)
{

    // qubit leds RGB positions
    std::vector<std::vector<Position> > led_pos{ 
        { {0,4}, {0,2}, {0,3} }, 
            { {0,7}, {0,5}, {0,6} },
            { {1,4}, {1,2}, {1,3} },
            { {1,7}, {1,5}, {1,6} },

            { {0,0}, {0,0}, {0,0} },
            { {0,0}, {0,0}, {0,0} },
            { {0,0}, {0,0}, {0,0} },
            { {0,0}, {0,0}, {0,0} },

            { {0,0}, {0,0}, {0,0} },
            { {0,0}, {0,0}, {0,0} },
            { {0,0}, {0,0}, {0,0} },
            { {0,0}, {0,0}, {0,0} },

            { {0,0}, {0,0}, {0,0} },
            { {0,0}, {0,0}, {0,0} },
            { {0,0}, {0,0}, {0,0} },
            { {0,0}, {0,0}, {0,0} } };

    // vector of qubit btns
    std::vector<Position> qubit_btn_pos{ 
        {0,2}, {1,7}, {1,1}, {1,2},
            {0,0}, {0,0}, {0,0}, {0,0},
            {0,0}, {0,0}, {0,0}, {0,0},
            {0,0}, {0,0}, {0,0}, {0,0} };

    // function buttons 
    // e.g gates 
    std::vector<Position> func_btn_pos{ {1,0}, {1,3}, {0,1}, {0,0} };

    // make function buttons 
    std::vector<std::shared_ptr<Button> > func_btns;

    for(int i = 0; i < (int)func_btn_pos.size(); i++)
    {
        func_btns.push_back(std::make_shared<Button>(func_btn_pos[i]));
    }

    // make gates and give the constructor their button.
    Rotation_X X(func_btns[0]);
    Rotation_Y Y(func_btns[1]);
    Rotation_Z Z;
    Hadamard H(func_btns[2]);

    // container for gates which have their respective buttons 
    std::vector<Operator*> Operators{&X, &Y, &H};

    // func_btns[3] is a modifier - lets you do control gates if you hold it and press a
    // gate button at the same time.

    int num_qubits = 4;

    // make a state vector which takes number of qubits, and qubit leds, qubit btns
    State_vector state(num_qubits, led_pos, qubit_btn_pos);

    // MAIN PROGRAM LOOP
    std::cout << "\n Pick a gate button " << std::endl;
    while(true) 
    {
        // if qubit 1&3 simulatenously reset.
        if(state.qubits[0] -> selected() && state.qubits[3] -> selected())
        {
            std::cout << "reset" << std::endl;
            state.set_vacuum();
        }

        // loop all operators
        for(int i = 0; i < (int)Operators.size(); i++)
        {
            if(Operators[i] -> selected()) 
            {
                // if 0 do single qubit gate
                if(func_btns[3] -> get_state() == 0)
                {
                    std::cout << " Single qubit gate " << std::endl;
                    state.apply(*Operators[i], state.get_qubit());
                }
                else // do control gate
                {
                    std::cout << "Two qubit gate " << std::endl;
                    state.apply(*Operators[i], state.get_qubit(), state.get_qubit());
                }

                state.disp();
                std::cout << "\n Pick a gate button " << std::endl;
            }
        }

        // display cycling
        // for each non zero element in state vector write it out to set_amps leds.
        // keep the position and the leds state, then exit and check the loop for 
        // other options.
        // then resume from the position find the next non-zero element.
        // - need look up tabe of non-zero entries and rgb vals for each qubit.
        // std::vector<std::vector<double> > { {zero, one, phase}, {zero1, one1, phase1} };
        // state.qubits[i] -> set_amps(stored[i]);


        // extras
        if(func_btns[3] -> get_state())
        {   
            if(state.qubits[0] -> selected() && state.qubits[1] -> selected())
            {
                std::cout << "Entangling " << std::endl;
                //make nice pattern
                state.apply(H, 0);
                state.apply(H,0,1);
                state.apply(H,1,2);
                state.apply(H,2,3);
                state.disp();
                std::cout << "\n Pick a gate button " << std::endl;
            }
        }

    }

    return 0;
}
