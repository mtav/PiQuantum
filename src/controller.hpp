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

#include <map>      // for std::map, would rather use vector but need a lookup table

#include <future> // std::async and std::future
#include <memory> // for std::shared_ptr 

#define ever ;;

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

        // each controller has a button mapping 
        // @TODO should be templated but can't figure it out now 
        // use map.insert(pair<type1, type2>(thing1, thing2));
        // make a btn map
        // Button_maps 
        std::map<std::string, std::function<void(void)> > button_maps;
    public:
        // each controller has output buttons stored in this vector
        // to make MY LIFE EASIER!
        const std::vector<std::string> buttons = 
        { "A", "B", "X", "Y", 
            "L_trigger", "R_trigger", "Select", "Start",
            "Right", "Down", "Left", "Up"};

        // return controller path
        std::string get_loc(void);

        // contructor taks the path to controller e.g. /dev/input/js0
        Controller(std::string path);
    
        // default constructor
        Controller() {};

        // return the next input from the controller 
        std::string get_input(void);
        // wait specifically for a direction.
        std::string get_direction(void);
        // return anything but a direction
        std::string get_btn(void);

        // assign controller "i" button "btn" to a function 
        // should probs be templates or something for the function, 
        // currently this requires bind to be used.
        // template <class T, class U>
        bool map(std::string btn, std::function<void(void)> func);

        // execute function assigned to input 
        void run_function(void);
};


#endif  // CONTROLLER_HPP
