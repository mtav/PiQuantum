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

#define ever ;;

class Test_fn{

    public:
        int test_func1(double arg)
        {
            std::cout << "test_func1 with arg " << arg << std::endl;
            return 0;
        }

        int test_func2(void)
        {
            std::cout << "test_func2" << std::endl;
            return 2;
        }
};

// class for managing controller input 

struct btn_mappings{
    private:
    public:
        std::string name;
        // set to a member function reference and the function takes 
        // a object as an argument 
        std::function<int(Test_fn &, double)> func_obj;

        // second way stores the function and the reference to the object to act on
        std::function<int(double)> func;

        // same but stores member function and reference to object 
        std::function<int(void)> func_no_options;
};


int main(void)
{


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
