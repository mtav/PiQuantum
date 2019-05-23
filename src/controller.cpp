/***
 * @file controller.cpp
 * @authors O Thomas, J Scott
 * @date May 2019
 * @brief usb gamepad controller implementation file
 */

#include "controller.hpp"

// -------------------------------- Controller interface ---------------------







// ----------------------------------- Controller ---------------------------

// takes the 16 bytes read in and returns a string of the button pressed
std::string Controller::decode_bytes(const std::vector<int> & values)
{
    std::string answer = "NULL";
    // A    0 1 0
    // B    0 1 1
    // X    0 1 2 
    // Y    0 1 3
    //
    // L    0 1 4
    // R    0 1 5
    //
    // SELECT 0 1 6
    // START  0 1 7
    //
    // RIGHT 127 2 0
    // DOWN  127 2 1 
    // LEFT -128 2 0
    // UP   -128 2 1 

    // if middle val is 1 then function button 
    if(values[1] == 1)
    {
        // NOT a direction
        switch(values[2])
        {
            case 0 : answer = "A"; break;
            case 1 : answer = "B"; break;
            case 2 : answer = "X"; break;
            case 3 : answer = "Y"; break;
            case 4 : answer = "L_trigger"; break;
            case 5 : answer = "R_trigger"; break;
            case 6 : answer = "Select"; break;
            case 7 : answer = "Start"; break; 
            default : answer = "NULL"; break;
        }
    }
    // direction
    else if(values[1] == 2)
    {
        // if +ve then right or down
        if(values[0] == 127)
        {
            switch(values[2])
            {
                case 0 : answer = "Right"; break;
                case 1 : answer = "Down"; break;
                default : answer = "NULL direction"; break;
            }
        }
        // if -ve left or up
        // the pi has +128 while laptop is -128
        else if(values[0] == -128 || values[0] == 128)
        {
            switch(values[2])
            {
                case 0 : answer = "Left"; break;
                case 1 : answer = "Up"; break;
                default : answer = "NULL direction"; break;
            }
        }
    } // end of directions

    return answer;
}

Controller::Controller(std::string path) : loc(path)
{
    // open the file
    controller_file.open(loc);
    if(!controller_file)
    {
        // if false there is an error
        std::cerr << std::strerror(errno) << std::endl;
        // exit the program
        std::exit(errno);
    }
    else { std::cout << "read " << loc << std::endl; }

    // start thread for polling controller inputs
    // @TODO This might break stuff
    // input = std::async(std::launch::async, &Controller::get_input, this);
}

std::string Controller::get_input(void)
{
    // vector of zeros size "size"
    std::vector<char> line(size, 0);
    // give the first element of the vector as read needs a ptr to a char
    controller_file.read(&line[0], size);

    // store outputs which map to buttons 
    std::vector<int> vals;

    // only need the 5th, 6th, 7th bytes the rest is junk /timers for the events 
    // for this buffalo classic controller these 3 bytes map each button uniquely
    std::vector<int> pos{5, 6, 7};

    for(auto i : pos)  // for the elements in pos 
    {
        // convert the bytes to signed ints as it is easier to see? 
        vals.push_back(static_cast<int> (line[i]));
    }

    // for debugging can be commented out 
    for(int i = 0; i < (int)vals.size(); i++)
    {
        // std::cout << vals[i] << " ";
    }
    // std::cout << std::endl;

    // now use lookup table on the vals vector 
    std::string out = decode_bytes(vals);
    return out;
}

// continually polls controller until a valid input is returned
std::string Controller::get_direction(void)
{   
    std::string result = get_input();
    while(result != "Right" && result != "Left" && result != "Up" && result != "Down")
    {
        result = get_input();
    }
    return result;
}

std::string Controller::get_btn(void)
{
    std::string result = get_input();
    while(result == "Right" || result == "Left" || result == "Up" || result == "Down")
    {
        result = get_input();
    }
    return result;
}


