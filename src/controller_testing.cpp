/***
 * @file controller_interface
 * @brief test program for the unified interface class.
 * @date May 2019
 * @authors O Thomas, J Scott
 */

#include "controller.hpp"

#include <iostream>
#include <string>
#include <functional> // for passing functions 
#include <future> 

#include <thread>
#include <chrono>

#include "quantum_games.cpp"

void player_joined(void)
{
    std::cout << "Player joined" << std::endl;
}

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


    /*
    // make a Game object
    Game game1;


    game1.run();
    for(ever)
    {
    
        game1.message = "changed?";
        game1.controller_manager.map(0, "B", std::bind(&Game::print_letter, &game1, "Player 0 NEw map"));
        std::this_thread::sleep_for(std::chrono::seconds(1));

        game1.message = "no?";
        game1.controller_manager.map(0, "B", std::bind(&Game::print_letter, &game1, "Player 0 B"));
        std::this_thread::sleep_for(std::chrono::seconds(1));
   
        }
*/
    Free_play game1(4, led_pos, qubit_btn_pos);

    //game1.map(0,"Start", player_joined);
    

    

    
    for(ever)
    {

        std::this_thread::sleep_for(std::chrono::seconds(1));
    }

    /*
    // method 2
    btn1.func = std::bind( &Test_fn::test_func1, &test1, std::placeholders::_1);
    btn1.func(5); 

    // method 2 with no args 
    btn1.func_no_options = std::bind( &Test_fn::test_func2, &test1);
    btn1.func_no_options();
    */

    return 0;
}
