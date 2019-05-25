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
        Player(std::string controller_loc)
        {
            // check if controller exists 
            std::ifstream controller_file(controller_loc);

            // open the file 
            if(controller_file)
            {
                // make the controller 
                controller = std::make_unique<Controller>(controller_loc);
                here = true;
            }
        }

        void map(std::string btn_label, std::function<void(void)> func)
        {
            controller -> map(btn_label, func);
        }
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

        Game(void) 
        {
            // looks for all the controllers connected at /dev/input/js*
            // should start all of the controllers in their own threads 
            // Have a method for checking how many controllers are connected etc

            // Check for controllers (players) present
            for(int i = 0; i < max_num_players; i++)
            {
                std::string loc = "/dev/input/js" + std::to_string(i);
                std::ifstream controller_file(loc);

                if(controller_file) // make player 
                {
                    players.push_back(Player(loc));
                }
            }

            // Map buttons on every controller to defaults 
            for(int j = 0; j < (int)players.size(); j++)
            {
                for(int i = 0; i < (int)players[j].controller -> buttons.size(); i++)
                {
                    // get the label for each button on the controller 
                    std::string btn_label = players[j].controller -> buttons[i]; 
                    // for controller 0 map each btn to print the letter of the btn
                    players[j].map(btn_label, std::bind(&Game::print_letter, this, 
                                "Player " + std::to_string(j) + " " + btn_label));
                }
            }

            // work out how many players there should be   
            // make them
            run(); // look for input from controllers 

            // maps the start button to add in players 
            num_players = get_players();

            for(int i = 0; i < (int)players.size(); i++)
            {
                std::cout << "player " << i << " here " << players[i].here << std::endl;
            }

        } // end of ctor

        void check_player_input(int i)
        {
            while(wait_for_input)
            {
                players[i].controller -> run_function();
            }
        }

        // after setting, or before setting -> start threads for each controller 
        void run(void)
        {
            // need a game class now to read the controller manager
            wait_for_input = true;

            for(int i = 0; i < (int)players.size(); i++)
            {
                players[i].inputs = std::async(std::launch::async,
                        &Game::check_player_input, this, i);
            }
        }

        void stop(void)
        {
            //controller_manager.stop_read_controllers();
            wait_for_input = false;
        }

        // overloading map so only the game can remap buttons 
        void map(int player, std::string btn, std::function<void(void)> func)
        {
            players[player].map(btn, func);
        }

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

        int get_players(void)
        {
            // check all currently connected controllers to see if they push start
            for(int i = 0; i < (int)players.size(); i++)
            { 
                players[i].map("Start", std::bind(&Game::add_players, this, i));
            }

            int max_wait_time = 5;
            for(int j = 0; j < max_wait_time; j++)
            {
                std::cout << "Waiting for players to join, press START, Time remaining " 
                    << std::to_string(max_wait_time - j) << " seconds" << std::endl;
                std::this_thread::sleep_for(std::chrono::seconds(1));
            }

            // should remap "Start" to whatever the game wants 

            int sum = 0;
            for(int k = 0; k < (int)players.size(); k++)
            {
                sum += players[k].here;
            }
            return sum;
        }

        void add_players(int position)
        {

            players[position].here = !players[position].here;
            //players.push_back(Player{controller_manager.controllers[position]});
            std::cout << "Added player " << position << players[position].here << std::endl;
        }

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
        Free_play(int num_qubits, const Led_positions & led_pos_in, const Button_positions & qubit_btn_pos_in) 
            : total_num_qubits(num_qubits), led_pos(led_pos_in), qubit_btn_pos(qubit_btn_pos_in) 
        {
            allocate_players_resources();
            // now map the buttons to gates 

            // start the flash timer
        } // end of ctor 

        // allocate players in the game leds, btns and make their statevectors

        void allocate_players_resources(void)
        {
            int player_counter = 0;
            for(int i = 0; i < (int)players.size(); i++)
            {
                if(players[i].here)
                {
                    int player_qubits = total_num_qubits / num_players;
                    int offset = player_counter * player_qubits;

                    // Split the leds up for each player 
                    Led_positions player_led_pos = Led_positions(led_pos.begin() + offset,
                            led_pos.begin() + player_qubits*(offset + 1));

                    // split the buttons 
                    Button_positions player_btn_pos = Button_positions(qubit_btn_pos.begin() + 
                            offset, qubit_btn_pos.begin() + (player_qubits*(offset+1)));

                    std::cout << "Player " << i << ", qubits "
                        << player_qubits << ", Staring at " << offset << std::endl;

                    // make the state_vector 
                    players[i].state = std::make_shared<State_vector>(player_qubits, 
                            player_led_pos, player_btn_pos);

                    player_counter++;

                    // MAP CONTROLLERS`
                    controller_map(players[i]);

                    start_flash_timer(players[i]);
                }
            } // constructed each players state_vector
        }


        void controller_map(Player & player)
        {
            // gates 
            player.map("X", std::bind(&State_vector::apply_single, player.state, Rotation_X()));
            player.map("Y", std::bind(&State_vector::apply_single, player.state, Rotation_Y()));
            player.map("A", std::bind(&State_vector::apply_single, player.state, Rotation_Z()));
            player.map("B", std::bind(&State_vector::apply_single, player.state, Hadamard()));

            player.map("L_trigger", std::bind(&State_vector::apply_two, player.state, Rotation_Z()));
            player.map("R_trigger", std::bind(&State_vector::apply_two, player.state, Rotation_X()));
            // player.map("Start", std::bind())
            // player.map("Select", std::bind())

            // directions 
            player.map("Right", std::bind(&State_vector::move_cursor_str, player.state, "Right"));
            player.map("Left", std::bind(&State_vector::move_cursor_str, player.state, "Left"));
            player.map("Down", std::bind(&State_vector::move_cursor_str, player.state, "Down"));
            player.map("Up", std::bind(&State_vector::move_cursor_str, player.state, "Up"));

        }

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

        void display(void)
        {


        }

        Free_play()
        {

        } // end of constructor 
};

class Controller_function_test : Game
{
};

#endif // QUANTUM_GAMES_HPP
