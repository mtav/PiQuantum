/***
 * @file Quantum games header
 * @date May 2019
 * @authors O Thomas, J Scott
 * @brief Header defining all of the different game modes for piquantum 
 */

#ifndef QUANTUM_GAMES_HPP
#define QUANTUM_GAMES_HPP

#include <iostream>
#include <string>

#include "controller.hpp"
// #include "state.hpp"

// The player class
class Player
{
    private:

    public:
        // each player has LEDS, BTNS, CONTROLLER, State_vector
        // std::vector<Led> leds;
        // std::vector<Button> buttons;
        // controller
};

// the game class which all others inherit from
class Game
{
    private:

    public:
        // make controllers
        Controller_interface controller_manager;

        // each games has the number of players in it
        int num_players;

        // every player has their own state-vector
        //std::vector<State_vector> state_vectors;






        // FOR DEBUGINg ONLY 
        std::string message = "default";

        void print_message(void)
        {
            std::cout << message << std::endl;
        }

        int print_letter(const std::string & str_in)
        {   
            std::cout << "Printing " << str_in << std::endl;
            return 0;
        }


};



// Class to run the most basic quantum simulation
// checks how many controllers are connected and does stuff
class Free_play
{



};

class Controller_function_test : Game
{
};

#endif // QUANTUM_GAMES_HPP
