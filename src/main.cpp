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

#include "state.hpp"
#include "interface.hpp"
#include "controller.hpp"

#define ever ;;

// necessary for 2 state_vectors 
// OR 2 COntrollers
// sorry 
int main_loop(std::string controller_path, int num_qubits,
        std::vector<std::vector<Position> > led_pos,
        std::vector<Position> qubit_btn_pos,
        std::vector<Operator*> Operators, 
        std::vector<std::shared_ptr<Button> > func_btns);
//        std::shared_ptr<InputOutput> driver);

int main(void)
{
    /// qubit leds RGB positions
  /*      { {0,4}, {0,2}, {0,3} }, 
            { {0,7}, {0,5}, {0,6} },
            { {1,4}, {1,2}, {1,3} },
            { {1,7}, {1,5}, {1,6} },*/
    std::vector<std::vector<Position> > led_pos{ 
            { {6,0}, {6,2}, {6,1} }
            { {6,3}, {6,5}, {6,4} },
            { {0,3}, {0,5}, {0,4} },
            { {0,0}, {0,2}, {0,1} },

            { {5,0}, {5,2}, {5,1} },
            { {6,6}, {5,3}, {6,7} },
            { {0,6}, {1,3}, {0,7} },
            { {1,0}, {1,2}, {1,1} },

            { {5,7}, {5,5}, {5,6} },
            { {4,1}, {5,4}, {4,0} },
            { {2,1}, {1,4}, {2,0} },
            { {1,7}, {1,5}, {1,6} },

            { {4,7}, {5,5}, {5,6} },
            { {4,4}, {4,2}, {4,3} },
            { {2,4}, {2,2}, {2,3} },
            { {2,7}, {2,5}, {2,6} } };

    /// vector of qubit btns
    std::vector<Position> qubit_btn_pos{ 
        {0,2}, {1,7}, {1,1}, {1,2},
            {0,0}, {0,0}, {0,0}, {0,0},
            {0,0}, {0,0}, {0,0}, {0,0},
            {0,0}, {0,0}, {0,0}, {0,0} };

    // function buttons // e.g gates 
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

    // THE BEST TIMER KNOWN TO MAN -- Possibly causing memory bad allocs. @TODO check 
    // Driver for checking display cycling timer
    // std::shared_ptr<InputOutput> driver = getInputOutput();

    // ------------------------------- Player 1 ----------------------------------
    int num_qubits_p1 = 2; // change me 

    // Player 1  
    std::string controller1_path = "/dev/input/js0"; // might not always be this 

    // led pos, take the first num_qubits_p1 of the led vector ^^ 
    std::vector<std::vector<Position> > led_pos1 = 
        std::vector<std::vector<Position> >(led_pos.begin() , led_pos.begin() + num_qubits_p1);

    // btns, take the first num_qubits_p2 of the qubit btn vector ^^ 
    std::vector<Position> qubit_btn_pos1 = std::vector<Position>(qubit_btn_pos.begin(),
            qubit_btn_pos.begin() + num_qubits_p1);

    // start Player 1 in their own thread. This function should never return.
    // Thread runs until the end of the universe
    // If it returns there is a major problem.
    std::future<int> player1 = std::async(std::launch::async, main_loop,
            controller1_path, num_qubits_p1, led_pos1, qubit_btn_pos1,
            Operators, func_btns); //, driver);

    // --------------------------- player 2 -------------------------------------
    int num_qubits_p2 = 2;  // change me

    // Player 2
    std::string controller2_path = "/dev/input/js1"; // might not always be this location

    // led pos, offset is player 1's qubits to player 1 + player 2 qubits ^^
    std::vector<std::vector<Position> > led_pos2 = 
        std::vector<std::vector<Position> >(led_pos.begin() + num_qubits_p1, 
                led_pos.begin() + num_qubits_p1 + num_qubits_p2);

    // btns, offset is player 1's qubits to player 1 + player 2's qubits ^^ 
    std::vector<Position> qubit_btn_pos2 = 
        std::vector<Position>(qubit_btn_pos.begin() + num_qubits_p1,
                qubit_btn_pos.begin() + num_qubits_p1 + num_qubits_p2);

    // start Player 2 in their own thread. This function should never return.
    // Thread runs until the end of the universe
    // If it returns there is a major problem.
    std::future<int> player2 = std::async(std::launch::async, main_loop,
            controller2_path, num_qubits_p2, led_pos2, qubit_btn_pos2,
            Operators, func_btns); //, driver);

    // fix this so that main doesn't need to have the display mode var
    // state should have it so that calling disp auto fixes the cycling off
    for(ever)  // better than while(1)
    {
    }
    
    // could also do 
    // player1.get();
    // player2.get();
    // ... but that is not as fun

    return 0;
} // end of main ----------------- Wooo!  


// Temp timer stuff

int time_milli()
{
    std::this_thread::sleep_for(std::chrono::milliseconds(350));
    return 1;
}

// masterful -do everything function- 
// should be run from main in a separate thread. 
// @TODO fix passing the driver used for the common timer. might be causing memory
// crashes
int main_loop(std::string controller_path, int num_qubits,
        std::vector<std::vector<Position> > led_pos,
        std::vector<Position> qubit_btn_pos,
        std::vector<Operator*> Operators, 
        std::vector<std::shared_ptr<Button> > func_btns)
        //std::shared_ptr<InputOutput> driver) 
{
    // std::shared_ptr<InputOutput> driver = getInputOutput();
    // make a controller object 
    Controller controller(controller_path);

    // make a state vector for all display and qubit stuff
    State_vector state(num_qubits, led_pos, qubit_btn_pos);

    std::cout << " made state vector" << std::endl;

    // start thread for polling the controller for input
    std::future<std::string> input = std::async(std::launch::async, 
            &Controller::get_input, &controller);

    static int thread_count = -2;
    std::cout << " Started input thread " << ++++thread_count <<  std::endl;

    // display modes 
    int display_mode = 0;
    int cycle_counter = 0;

    // input status, out of loop to avoid reallocating mem
    std::future_status controller_status;

    std::future_status flash_timer_status;
    std::future<int> flash_timer;

    int flash_trigger = 0;
    // start thread for flashing 
        flash_timer = std::async(std::launch::async, time_milli);

    for(ever)
    {

        // check if the controller input has changed 
        controller_status = input.wait_for(std::chrono::nanoseconds(1));
        if (controller_status == std::future_status::ready)
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
            else // functions e.g. gates 
            {
                std::cout << " function " << input_str << std::endl; 
                if(input_str == "X")
                {
                    state.apply(*Operators[0]);
                }
                else if(input_str == "A")
                {
                    state.apply(*Operators[2]);
                }
                else if(input_str == "Y")
                {
                    state.apply(*Operators[1]);
                }
                else if(input_str == "B")
                {
                    state.apply(*Operators[3]);
                }
                // two qubit gates
                // @TODO these block atm, but hopefully only their respective 
                // players threads, maybe ok.
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
                    // @TODO this, not sure about it 
                    // driver -> reset_dc_timer();
                    if(display_mode == 0) state.disp();
                }
                else if(input_str != "Start")
                {  // end of gates 
                    // @TODO // currently NULL input will reset the display mode
                    std::cout << "null input here?" << std::endl;
                    display_mode = 0;
                    state.disp();
                    std::cout << "\n Pick a gate button " << std::endl;
                }
            }
            // start async again for controller input
            input = std::async(std::launch::async, &Controller::get_input, &controller);
        }
        else if(controller_status == std::future_status::timeout)
        {
            // std::cout << "input timedout" << std::endl;
        }

        // outdated, only used for physical buttons on pcb
        state.update_pos();

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
            if(display_mode == 0) { state.flash(); }
            // if in cycle mode check for all other 
            // else if(display_mode == 1 && driver -> check_dc_timer(thread_count))
            else if(display_mode == 1)
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
