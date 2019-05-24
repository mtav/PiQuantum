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
        std::unique_ptr<Controller> unique_controller_ptr;
        std::shared_ptr<Controller> controller;

        void map(std::string btn_label, std::function<void(void)> func)
        {
            controller -> map(btn_label, func);
        }
        // each player should have one and only one state_vector
        std::shared_ptr<State_vector> state;

        Player(){}

        Player(std::shared_ptr<Controller> control_in)  : controller(control_in)
    {
        here = false;
    }
};

// the game class which all others inherit from
class Game
{
    private:

        bool wait_for_input = true;
    public:
        // make controllers
        Controller_interface controller_manager;

        // each games has the number of players in it
        int num_players;

        std::vector<Player> players;

        // every player has their own state-vector
        // std::vector<State_vector> state_vectors;

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
            //

            // Map buttons on every controller to defaults 
            for(int j = 0; j < (int)controller_manager.num_controllers(); j++)
            {
                for(int i = 0; i < (int)controller_manager.controllers[j] -> buttons.size(); i++)
                {
                    // get the label for each button on the controller 
                    std::string btn_label = controller_manager.controllers[j] -> buttons[i]; 
                    // for controller 0 map each btn to print the letter of the btn
                    controller_manager.map(j, btn_label, 
                            std::bind(&Game::print_letter, this, "Player " + 
                                std::to_string(j) + " " + btn_label));

                    // controller_manager.map(j, "Select", std::bind( delete this));
                }
            }

            // allocate controllers to players 
            for(int i = 0; i < (int)controller_manager.num_controllers(); i++)
            {
                players.push_back(Player{controller_manager.controllers[i]});
                std::cout << "Added player " << i << std::endl;
                players[i].here = false;
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
                // players[i].inputs = std::async(std::launch::async,
                //        &Controller::run_function, players[i].controller);
                // players[i].controller -> run_function();
            }


            // small segfault here // NOT any more.
            // launches a thread for each controller 
            // controller_manager.read_controllers();


            // read input, if controllers press Start make a player for them
            // players.push_back(Player{controller_manager.controllers[i]

            // use this for apply on the cursor position 
            // the cotroller thread can read the members of state so the map doesn't need to be
            // changed per qubit, which is nice 
            // controller_manager.map(1, "B", std::bind(&Game::print_message, this));
        }

        void stop(void)
        {
            //controller_manager.stop_read_controllers();
            wait_for_input = false;
        }

        // overloading map so only the game can remap buttons 
        void map(int player, std::string btn, std::function<void(void)> func)
        {
            controller_manager.map(player, btn, func);
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
            for(int i = 0; i < controller_manager.num_controllers(); i++)
            { 
                map(i, "Start", std::bind(&Game::add_players, this, i));
            }

            for(int j = 0; j < 5; j++)
            {
                std::cout << "Waiting for players to join, press START" << std::endl;
                std::this_thread::sleep_for(std::chrono::seconds(1));
            }


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
        public:


            // @TODO add buttons (physical not controllers) to this
            Free_play(int num_qubits, std::vector<std::vector<Position> > led_pos,
                    std::vector<Position> qubit_btn_pos) 
            {
                int player_counter = 0;
                for(int i = 0; i < (int)players.size(); i++)
                {
                    if(players[i].here)
                    {
                        int player_qubits = num_qubits / num_players;
                        int offset = player_counter * player_qubits;

                        std::vector<std::vector<Position> > player_led_pos = 
                            std::vector<std::vector<Position> >(led_pos.begin() + offset ,
                                    led_pos.begin() + player_qubits*(offset + 1));

                        std::vector<Position> player_btn_pos = 
                            std::vector<Position>(qubit_btn_pos.begin() + offset,
                                    qubit_btn_pos.begin() + (player_qubits*(offset+1)));

                        //std::vector<std::vector<Position> > player_led_pos = 
                        //{{ {0,4}, {0,2}, {0,3}},
                        //{ {0,7}, {0,5}, {0,6}} };

                        //std::vector<Position> player_btn_pos = { {0,2}, {1,7}, {1,1}, {1,2}};

                        std::cout << "Qubits for player " << i << ", "
                            << player_qubits << ", " << offset << std::endl;
                        players[i].state = std::make_shared<State_vector>(player_qubits, 
                                player_led_pos, player_btn_pos);

                        player_counter++;

                        // MAP CONTROLLERS
                        controller_map(players[i]);

                        start_flash_timer(players[i]);
                    }
                } // constructed each players state_vector
                // now map the buttons to gates 

                // start the flash timer
            }

            void controller_map(Player & player)
            {
                // gates 
                player.map("X", std::bind(&State_vector::apply_single, player.state, 
                            Rotation_X()));

                player.map("Y", std::bind(&State_vector::apply_single, player.state, 
                            Rotation_Y()));

                player.map("A", std::bind(&State_vector::apply_single, player.state, 
                            Rotation_Z()));
                
                player.map("B", std::bind(&State_vector::apply_single, player.state, 
                            Hadamard()));
                
                player.map("L_trigger", std::bind(&State_vector::apply_two, player.state, 
                            Rotation_Z()));

                player.map("R_trigger", std::bind(&State_vector::apply_two, player.state, 
                            Rotation_X()));
                

                // directions 
                player.map("Right", std::bind(&State_vector::move_cursor_str, player.state, 
                            "Right"));
                player.map("Left", std::bind(&State_vector::move_cursor_str, player.state, 
                            "Left"));
                player.map("Down", std::bind(&State_vector::move_cursor_str, player.state, 
                            "Down"));
                player.map("Up", std::bind(&State_vector::move_cursor_str, player.state, 
                            "Up"));

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
