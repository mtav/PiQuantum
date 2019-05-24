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

// Temp timer stuff

int time_milli()
{
    std::this_thread::sleep_for(std::chrono::milliseconds(350));
    return 1;
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

    const int num_qubits = 4;

    // make a game object 
    Free_play game1(num_qubits, led_pos, qubit_btn_pos);

        // display modes 
        int display_mode = 0;
        int cycle_counter = 0;


        std::future_status flash_timer_status;
        std::future<int> flash_timer;

        int flash_trigger = 0;
        // start thread for flashing 
        flash_timer = std::async(std::launch::async, time_milli);

    for(ever)
    {
        flash_timer_status = flash_timer.wait_for(std::chrono::nanoseconds(1));
        if (flash_timer_status == std::future_status::ready)
        { 
            flash_trigger = flash_timer.get();
            flash_timer = std::async(std::launch::async, time_milli);
        }
        else 
        {
            flash_trigger = 0;
        }
        // for display cycling, check if the flash timer is triggered 
        // probably a memory problem with threading. Should investigate 
        // @TODO Fix this 
        // should be timer 1 then timer 0, 
        //  if(driver -> check_dc_timer(thread_count + 1) || flash_trigger)
        if(flash_trigger)
        {

        std::cout << "HERE?" << std::endl;
            if(display_mode == 0) 
            {
                game1.players[0].state -> flash(); 
                std::cout << "flash?" << std::endl;
            }
                // if in cycle mode check for all other 
            // else if(display_mode == 1 && driver -> check_dc_timer(thread_count))
            else if(display_mode == 1)
            {
                cycle_counter = game1.players[0].state -> disp_cycle(cycle_counter);
                std::cout << "Showing state " << cycle_counter << std::endl;
            }
        }



        //        std::this_thread::sleep_for(std::chrono::seconds(1));
    }

    return 0;
}
