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

// --------------------------- Player class

// Ctor 
Player::Player(std::string controller_loc)
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

void Player::map(std::string btn_label, std::function<void(void)> func)
{
    controller -> map(btn_label, func);
}


// ------------------------- Game class
Game::Game(void) 
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
void Game::check_player_input(int i)
{
    while(wait_for_input)
    {
        players[i].controller -> run_function();
    }
}




// after setting, or before setting -> start threads for each controller 
void Game::run(void)
{
    // need a game class now to read the controller manager
    wait_for_input = true;

    for(int i = 0; i < (int)players.size(); i++)
    {
        players[i].inputs = std::async(std::launch::async,
                &Game::check_player_input, this, i);
    }
}

void Game::stop(void)
{
    //controller_manager.stop_read_controllers();
    wait_for_input = false;
}

// overloading map so only the game can remap buttons 
void Game::map(int player, std::string btn, std::function<void(void)> func)
{
    players[player].map(btn, func);
}

int Game::get_players(void)
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

void Game::add_players(int position)
{

    players[position].here = !players[position].here;
    //players.push_back(Player{controller_manager.controllers[position]});
    std::cout << "Added player " << position << players[position].here << std::endl;
}

// --------------------------- Free play

void Free_play::allocate_players_resources(void)
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

void Free_play::controller_map(Player & player)
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


