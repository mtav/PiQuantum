/**
 * @file new main using qubit types for led and btn control
 * @authors O Thomas, J Scott
 * @date April 2019
 * @brief Main for the 4 qubit demo using the old breadboard layout
 * @detail The code should scale to 16 qubits with no problem, just have
 * to remap the extra leds and btns in 
 *
 */
#include <iostream>
#include <future>   // for std::async, std::future
#include <thread>
#include <functional> // for std::ref for async

#include "state.hpp"
#include "interface.hpp"
#include "controller.hpp"

#define ever ;;

// necessary for 2 state_vectors 
// OR 2 COntrollers
int main_loop(std::string controller_path, int num_qubits,
        std::vector<std::vector<Position> > led_pos,
        std::vector<Position> qubit_btn_pos,
        std::vector<Operator*> Operators, 
        std::vector<std::shared_ptr<Button> > func_btns,
        std::shared_ptr<InputOutput> driver);

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
    std::vector<Operator*> Operators{&X, &Y, &H, &Z};

    // func_btns[3] is a modifier - lets you do control gates if you hold it and press a
    // gate button at the same time.

    // THE BEST TIMER KNOWN TO MAN
    // Driver for checking display cycling timer
    std::shared_ptr<InputOutput> driver = getInputOutput();


    // HOW TO USE THE CONTROLLER  
    // use get_input() to get any input or
    // get_btn() to get a function button 
    // get_direction() to get a direction 

    // ------------------------------- Player 1 ----------------------------------
    int num_qubits_p1 = 2; // change me 

    // Player 1
    std::string controller1_path = "/dev/input/js0";

    // led pos 
    std::vector<std::vector<Position> > led_pos1 = 
        std::vector<std::vector<Position> >(led_pos.begin() , led_pos.begin() + num_qubits_p1);
    // btns 
    std::vector<Position> qubit_btn_pos1 = std::vector<Position>(qubit_btn_pos.begin(),
            qubit_btn_pos.begin() + num_qubits_p1);

    // start them in their threads 
    std::future<int> player1 = std::async(std::launch::async, main_loop,
            controller1_path, num_qubits_p1, led_pos1, qubit_btn_pos1,
            Operators, func_btns, driver);

    // --------------------------- player 2 -------------------------------------
    int num_qubits_p2 = 2;  // change me

    // Player 2
    std::string controller2_path = "/dev/input/js1";

    // led pos 
    // offset is player 1's qubits to player 1 + player 2 qubits
    std::vector<std::vector<Position> > led_pos2 = 
        std::vector<std::vector<Position> >(led_pos.begin() + num_qubits_p1, 
                led_pos.begin() + num_qubits_p1 + num_qubits_p2);
    // btns 
    std::vector<Position> qubit_btn_pos2 = 
        std::vector<Position>(qubit_btn_pos.begin() + num_qubits_p1,
                qubit_btn_pos.begin() + num_qubits_p1 + num_qubits_p2);

    // fix this so that main doesn't need to have the display mode var
    // state should have it so that calling disp auto fixes the cycling off

    std::future<int> player2 = std::async(std::launch::async, main_loop,
            controller2_path, num_qubits_p2, led_pos2, qubit_btn_pos2,
            Operators, func_btns, driver);

    for(ever)  // better than while(1)
    {
    }

    return 0;
} // end of main 

int main_loop(std::string controller_path, int num_qubits,
        std::vector<std::vector<Position> > led_pos,
        std::vector<Position> qubit_btn_pos,
        std::vector<Operator*> Operators, 
        std::vector<std::shared_ptr<Button> > func_btns,
        std::shared_ptr<InputOutput> driver) 
{
    //
    // make a controller object 
    Controller controller(controller_path);

    State_vector state(num_qubits, led_pos, qubit_btn_pos);
    std::cout << " made state vector" << std::endl;

    std::future<std::string> input = std::async(std::launch::async, 
            &Controller::get_input, &controller);

    std::cout << " Started input thread" << std::endl;

    int display_mode = 0;
    int cycle_counter = 0;

    for(ever)
    {

        // input status
        std::future_status status;
        status = input.wait_for(std::chrono::nanoseconds(1));
        // std::cout << "waiting for input " << std::endl;
        if (status == std::future_status::ready)
        { 
            std::string input_str = input.get();
            std::cout << "input string is " << input_str << std::endl;

            // check if direction 
            if(input_str == "Right" 
                    || input_str == "Left" 
                    || input_str == "Up" 
                    || input_str == "Down")
            {
                state.move_cursor(input_str);
            }
            else // functions 
            {
                std::cout << " function " << input_str << std::endl; 
                if(input_str == "X")
                {
                    state.apply(*Operators[0]);
                }
                else if(input_str == "A")
                {
                    state.apply(*Operators[1]);
                }
                else if(input_str == "Y")
                {
                    state.apply(*Operators[2]);
                }
                else if(input_str == "B")
                {
                    state.apply(*Operators[3]);
                }
                // two qubit gates
                else if(input_str == "L_trigger")
                {
                    // do CPHASE
                    int ctrl = state.cursor_pos;

                    state.move_cursor(controller.get_direction());
                    state.apply(*Operators[3], ctrl, state.cursor_pos);
                }
                else if(input_str == "R_trigger")
                {
                    // do CNOT
                    int ctrl = state.cursor_pos;
                    state.move_cursor(controller.get_direction());
                    state.apply(*Operators[0], ctrl, state.cursor_pos);
                }

                if(input_str == "Select")
                {
                    std::cout << "reset" << std::endl;
                    state.set_vacuum();
                    display_mode = 0;
                    cycle_counter = 0;
                    state.stop_flash();
                }

                if(input_str == "Start")
                {
                    std::cout << "display mode " << std::endl;
                    display_mode = (display_mode + 1) % 2;
                    // driver -> reset_dc_timer();
                    if(display_mode == 0) state.disp();
                    // TODO!
                }
                else if(input_str != "Start")
                {  // end of gates 
                    std::cout << "null input here?" << std::endl;
                    display_mode = 0;
                    state.disp();
                    std::cout << "\n Pick a gate button " << std::endl;
                }

            }
            // start async again?
            input = std::async(std::launch::async, &Controller::get_input, &controller);
        }
        else if(status == std::future_status::timeout)
        {
            // std::cout << "input timedout" << std::endl;
        }

        state.update_pos();

        if(driver -> check_dc_timer(1))
        {
            if(display_mode == 0) { state.flash(); }
            // if in cycle mode check for all other 
            else if(display_mode == 1 && driver -> check_dc_timer(0))
            {
                cycle_counter = state.disp_cycle(cycle_counter);
                std::cout << "Showing state " << cycle_counter << std::endl;
            }
        }
    }

    //} // end of forever
/*
// quantum game, split into two two-qubit states.
// do random unitaries on the goal half
// let the user perform gates on the interactive half to get the goal state.

// if qubit 0&3 simulatenously reset.
if(state.qubits[0] -> selected() && state.qubits[3] -> selected())
{
std::cout << "reset" << std::endl;
state.set_vacuum();
display_mode = 0;
cycle_counter = 0;
state.stop_flash();
}

// loop all operators
for(int i = 0; i < (long int)Operators.size(); i++)
{
if(Operators[i] -> selected()) 
{
state.disp();
// if 0 do single qubit gate
if(func_btns[3] -> get_state() == 0)
{
std::cout << " Single qubit gate " << std::endl;
state.apply(*Operators[i]);
}
else // do control gate
{
std::cout << "Two qubit gate " << std::endl;
state.apply(*Operators[i], "controlled");
}

display_mode = 0;
state.disp();
std::cout << "\n Pick a gate button " << std::endl;
}
}
// if 2&3 simultaneously do cycling display
//        if(state.qubits[2] -> selected() && state.qubits[3] -> selected())
if(func_btns[3] -> get_state())
{
if(state.qubits[2] -> selected())
{
display_mode = (display_mode + 1) % 2;
driver -> reset_dc_timer();
if(display_mode == 0) state.disp();
// TODO!
}
}

*/
/*
   if(state.qubits[0] -> selected() && state.qubits[1] -> selected())
   {
   std::cout << "MEASURE THE STATE!!!" << std::endl;
   state.measure();
   display_mode = 0;
   cycle_counter = 0;
   state.disp();
   }
   */
return 0;
}
