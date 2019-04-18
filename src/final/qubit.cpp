

#include <iostream>
#include "state.hpp"
#include "interface.hpp"

int main(void)
{

    // vector of qubit btns
    std::vector<Position> btn_pos{ 
         {0,2}, {1,7}, {1,1}, {1,2},
         {0,0}, {0,0}, {0,0}, {0,0},
         {0,0}, {0,0}, {0,0}, {0,0},
         {0,0}, {0,0}, {0,0}, {0,0} };

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

    int num_qubits = 4;
    // vector for all qubits.
    // each qubit has an led & btn
    std::vector<std::shared_ptr<Qubit> > qubits;   
    
    for(int i = 0; i < num_qubits; i++)
    {
        qubits.push_back(std::make_shared<Qubit>(led_pos[i], btn_pos[i]));
    }

    // make a state vector which copies the qubits vector.
    State_vector state(qubits);

    state.qubits[0] -> set_amps(1,1,1);

    state.set_vacuum();
    while(true) 
    {
        for(int i = 0; i < num_qubits; i++)
        {
            if(state.qubits[i] -> selected())
            {
                std::cout << "state.qubit " << i << " pressed" << std::endl;
                state.qubits[i] -> set_amps(1,1,1);
            }
        }

        if(state.qubits[0] -> selected() && state.qubits[3] -> selected())
        {
            std::cout << "reset" << std::endl;
            state.set_vacuum();
        }
    }

    return 0;
}
