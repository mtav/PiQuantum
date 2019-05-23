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

int print_letter(std::string str_in)
{
    std::cout << "Printing " << str_in << std::endl;
    return 0;
}

int main(void)
{
    // USE BIND TO PASS FUNCTION WITH NO ARGS
    std::function<void(void)> func = std::bind(print_letter, "A");

    // looks for all the controllers connected at /dev/input/js*
    // should start all of the controllers in their own threads 
    // Have a method for checking how many controllers are connected etc
    //
    Controller_interface controller_manager;

    for(int i = 0; i < (int)controller_manager.controllers[0].buttons.size(); i++)
    {
        // get the label for each button on the controller 
        std::string btn_label = controller_manager.controllers[0].buttons[i]; 
        // for controller 0 map each btn to print the letter of the btn
        controller_manager.map(0, btn_label, std::bind(print_letter, btn_label));
    }

    // need a game class now to read the controller manager

    // small segfault here
     // controller_manager.read_controllers();

    for(ever)
    {
        controller_manager.controllers[0].run_function();
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
