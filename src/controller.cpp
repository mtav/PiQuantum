/***
 * @file controller.cpp
 * @authors O Thomas, J Scott
 * @date May 2019
 * @brief usb gamepad controller implementation file
 */

#include "controller.hpp"

// -------------------------------- Controller interface ---------------------

Controller_interface::Controller_interface(int num_controls)
{
    // read /dev/input/jsX to see if controller is plugged in 
    // then read, if Start is pressed add the controllers 

    for(int i = 0; i < max_num_controllers; i++)
    {
        // try and read file -> see if plugged in 

        std::string loc = "/dev/input/js" + std::to_string(i);

        std::ifstream controller_file(loc);
        // open the file
        if(!controller_file)
        {
            // if false there is an error
            // std::cerr << std::strerror(errno) << std::endl;
            // exit the program
            // std::exit(errno);
        }
        else if(controller_file)
        {
            // controller in /dev/input/jsi
            controllers.push_back(Controller(loc));
            // add its button mappings 

        }
    }
    std::cout << "There are " << num_controllers() << " controllers connected " << std::endl;
    for(int i = 0; i < num_controllers(); i++)
    {
        std::cout << " Located at " << controllers[i].get_loc() << std::endl;
    }

} // End of the controller interface constructor

// check which inputs can be read, make sure no controllers are read that are no longer
// there!
int Controller_interface::check_controllers_present(void)
{
    int count = 0;
    for(int i = 0; i < (int)controllers.size(); i++)
    {
        if(controllers[i].get_input() == "UNPLUGGED")
        {
            // erase the controller 
            // @TODO Check this doesn't cause a memory leak // check threads etc.
            // ///// THIS IS DEFINITELY WRONG
            // controllers.erase(controllers.begin() + i);
        }
        else { count++; }
    }        
    return count; // number of controllers connected
}


int Controller_interface::read_controllers(void)
{
    for(int i = 0; i < (int)controllers.size(); i++)
    {
        player_inputs.push_back(std::async(std::launch::async, &Controller_interface::get_controller_input, this, i));

    }
}

void Controller_interface::get_controller_input(int player)
{
    while(player_present[player])
    {
        controllers[player].run_function();
    }
}

//template <class T, class U>
bool Controller_interface::map(int player, std::string btn, std::function<void(void)> func)
{
    if(player >= num_controllers()) { std::cout << "There is no player " << player << std::endl;}
    else
    {
        // player btn do function 
        // controllers[player] 
        controllers[player].map(btn, func);        

    }
    return true;
}



int Controller_interface::num_controllers(void) { return (int)controllers.size();}

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
            case 0 : answer = buttons[0]; break;   // A
            case 1 : answer = buttons[1]; break;   // B
            case 2 : answer = buttons[2]; break;   // X
            case 3 : answer = buttons[3]; break;   // Y
            case 4 : answer = buttons[4]; break;   // L_trigger
            case 5 : answer = buttons[5]; break;   // R_trigger
            case 6 : answer = buttons[6]; break;   // Select
            case 7 : answer = buttons[7]; break;   // Start
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
                case 0 : answer = buttons[8]; break;   // Right
                case 1 : answer = buttons[9]; break;   // Down 
                default : answer = "NULL direction"; break;
            }
        }
        // if -ve left or up
        // the pi has +128 while laptop is -128
        else if(values[0] == -128 || values[0] == 128)
        {
            switch(values[2])
            {
                case 0 : answer = buttons[10]; break;   // Left
                case 1 : answer = buttons[11]; break;   // UP
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
    // else { std::cout << "read " << loc << std::endl; }

    // start thread for polling controller inputs
    // @TODO This might break stuff
    // input = std::async(std::launch::async, &Controller::get_input, this);

    // populate the button mapping list with output string and nullptrs for functions 
    for(int i = 0; i < (int)buttons.size(); i++)
    {
        button_maps.insert(std::pair<std::string, std::function<void(void)> >(buttons[i], nullptr));
    }
}

// for assigning buttons functions to execute
// template <class T, class U>
bool Controller::map(std::string btn, std::function<void(void)> func)
{
    button_maps[btn] = func;
    return true;
}


void Controller::run_function(void)
{
    std::string in = get_input();
    if(button_maps[in]) { button_maps[in](); }
    else { std::cout << "nullptr function" << std::endl;}
}

std::string Controller::get_input(void)
{
    // vector of zeros size "size"
    std::vector<char> line(size, 0);
    // give the first element of the vector as read needs a ptr to a char

    if(!controller_file) // controller is no longer there, This is a problem I think.
    {
        std::cerr << std::strerror(errno) << std::endl;
        std::cout << "controller is unplugged or missing" << std::endl;
        return "UNPLUGGED";
    }
    else { controller_file.read(&line[0], size); } // all good 

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

std::string Controller::get_loc(void) { return loc; }
