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


int main(void)
{


    Controller_interface controller_manager;

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


    return 0;
}
