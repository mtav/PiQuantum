/*** 
 * @file quantum games class file
 * @brief implementation for all of the quantum games 
 * @date May 2019
 * @authors O Thomas, J Scott
 */

#include "quantum_games.hpp"

int main(void)
{
    /// qubit leds RGB positions
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

    /// vector of qubit btns
    std::vector<Position> qubit_btn_pos{ 
        {0,2}, {1,7}, {1,1}, {1,2},
            {0,0}, {0,0}, {0,0}, {0,0},
            {0,0}, {0,0}, {0,0}, {0,0},
            {0,0}, {0,0}, {0,0}, {0,0} };

    // function buttons // e.g gates 
    std::vector<Position> func_btn_pos{ {1,0}, {1,3}, {0,1}, {0,0} };

    const int num_qubits = 4;

    // make a game object 
    Free_play game1(num_qubits, led_pos, qubit_btn_pos);

    std::cout << "Testing flashing cursor position" << std::endl;
    for(ever)
    {
        game1.do_flashing();
    }

    return 0;
}
