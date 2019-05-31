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
#include "state.hpp"

// The player class
class Player
{
    private:

    public:
        // each player has LEDS, BTNS, CONTROLLER, State_vector
        // std::vector<Led> leds;
        // std::vector<Button> buttons;
        // controller

        std::future<void> inputs;
        bool here = false;
        int display_mode = 0;
        int cycle_counter = 0;

        std::future_status flash_timer_status;
        std::future<int> flash_timer;
        int flash_trigger = 0;

        // each player should have one and only one unique controller
        std::unique_ptr<Controller> controller;

        // Ctor 
        Player(std::string controller_loc);

        void map(std::string btn_label, std::function<void(void)> func);

        // each player should have one and only one state_vector
        std::shared_ptr<State_vector> state;

};

// the game class which all others inherit from
class Game
{
    private:

        bool wait_for_input = true;
        const int max_num_players = 4;
    public:
        // make controllers
        // Controller_interface controller_manager;

        // each games has the number of players in it
        int num_players;

        std::vector<Player> players;

        // USE BIND TO PASS FUNCTION WITH NO ARGS
        // std::function<void(void)> func = std::bind(&Game::print_letter, &game1, "A");

        // thread timer 
        int time()
        {
            std::this_thread::sleep_for(std::chrono::milliseconds(350));
            return 1;
        }

        Game(void);

        void check_player_input(int i);

        // after setting, or before setting -> start threads for each controller 
        void run(void);

        void stop(void);
        // overloading map so only the game can remap buttons 
        void map(int player, std::string btn, std::function<void(void)> func);
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

        int get_players(void);

        void add_players(int position);
};



// Class to run the most basic quantum simulation
// checks how many controllers are connected and does stuff
class Free_play : public Game
{
    private:
        typedef std::vector<std::vector<Position> > Led_positions;
        typedef std::vector<Position> Button_positions;

        int total_num_qubits;
        Led_positions led_pos;
        Button_positions qubit_btn_pos;
    public:
        // @TODO add buttons (physical not controllers) to this
        Free_play(int num_qubits, const Led_positions & led_pos_in,
                const Button_positions & qubit_btn_pos_in) 
            : total_num_qubits(num_qubits), led_pos(led_pos_in), qubit_btn_pos(qubit_btn_pos_in) 
        {
            allocate_players_resources();
            // now map the buttons to gates 

            // start the flash timer
        } // end of ctor 

        // allocate players in the game leds, btns and make their statevectors
        void allocate_players_resources(void);

        void controller_map(Player & player);

        // start flash timer
        void start_flash_timer(Player & player)
        {
            player.flash_timer = std::async(std::launch::async, &Game::time, this);
        }

        void do_flashing(Player & player)
        {
            player.flash_timer_status = player.flash_timer.wait_for(std::chrono::nanoseconds(1));
            if(player.flash_timer_status == std::future_status::ready)
            {
                player.flash_trigger = player.flash_timer.get();
                start_flash_timer(player);
            }
            else
            {
                player.flash_trigger = 0;
            }

            if(player.flash_trigger)
            {
                if(player.display_mode == 0)
                {   
                    player.state -> flash();
                }
                else if(player.display_mode == 1)
                {
                    player.cycle_counter = player.state -> disp_cycle(player.cycle_counter);
                }
            }
        }

        void do_flashing(void)
        {
            for(int i = 0; i < (int)players.size(); i++)
            {
                if(players[i].here)
                {
                    do_flashing(players[i]);
                }
            }
        }


        Free_play()
        {
        } // end of constructor 
};

class Controller_function_test : Game
{
};

#endif // QUANTUM_GAMES_HPP
