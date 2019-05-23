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

void print_a(void)
{
    std::cout << "Printing a" << std::endl;
}

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
    Controller_interface controller_manager;

    for(int i = 0; i < (int)controller_manager.controllers[0].buttons.size(); i++)
    {
        // get the label for each button on the controller 
        std::string btn_label = controller_manager.controllers[0].buttons[i]; 
        // for controller 0 map each btn to print the letter of the btn
        controller_manager.map(0, btn_label, std::bind(print_letter, btn_label));
    }

    for(ever)
    {
        controller_manager.controllers[0].run_function();
    }
    /*
       btn_mappings btn1;
       btn1.name = "button 1";

       std::cout << btn1.name << std::endl;

    // make a test_fn object
    Test_fn test1;

    // method 1 
    btn1.func_obj = &Test_fn::test_func1;
    btn1.func_obj(test1 ,56);

    // method 2
    btn1.func = std::bind( &Test_fn::test_func1, &test1, std::placeholders::_1);
    btn1.func(5); 

    // method 2 with no args 
    btn1.func_no_options = std::bind( &Test_fn::test_func2, &test1);
    btn1.func_no_options();
    */

    return 0;
}
