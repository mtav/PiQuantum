/***
 * @file controller header for controller object
 * @authors O Thomas, J Scott
 * @brief header for all usb gamepad controller things
 */

#ifndef CONTROLLER_HPP
#define CONTROLLER_HPP

#include <iostream>
#include <fstream>  // reading /dev/input/*
#include <string>
#include <cerrno>   // file reading errors 
#include <cstring>  // for unsigned chars...
#include <vector> 

#include <future> // std::async and std::future

class Controller
{
    private:
        std::string loc;
        std::ifstream controller_file;
        // this is how many bytes to read in from /dev/input/*
        const int size = 16;

        // takes the 16bytes and returns a string for the button pressed
        std::string decode_bytes(const std::vector<int> & values);

        // It would be nice if each controller stores the most recent input
        // so it can be read and start the thread again without having to 
        // implement it in main. Not sure atm how it would work though
        std::future<std::string> input;
    public:

        // contructor taks the path to controller e.g. /dev/input/js0
        Controller(std::string path = "/dev/input/js0");

        // return the next input from the controller 
        std::string get_input(void);

        // wait specifically for a direction.
        std::string get_direction(void);

        // return anything but a direction
        std::string get_btn(void);

};

// controller interface
class Controller_interface
{

    private:
        std::vector<Controller> controllers;
        int num_controllers;
        
    public:
        
        Controller_interface(int num_controllers = 1);


};


#endif 
