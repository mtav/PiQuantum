

#include <iostream>
#include "state.hpp"
#include "interface.hpp"

int main(void)
{

    Position btn_pos{0,2};


    std::vector<std::vector<Position> > led_pos{ 
        {(Position){0,4}, (Position){0,2}, (Position){0,3}}, 
            {(Position){0,7}, (Position){0,5}, (Position){0,6}},
            {(Position){1,4}, (Position){1,2}, (Position){1,3}},
            {(Position){1,7}, (Position){1,5}, (Position){1,6}} };


    //Qubit q0(led_pos[0], btn_pos);
    Qubit q1(led_pos[0], btn_pos);
    // Led led0(led_pos);
    // Led led0({0,4}, {0,2}, {0,3});
    // Led led0({0,4}, {0,2}, {0,3});
   
    q1.set_amps(1,1,1);
    q1.set_led();
    // Led led0(led_pos[0]);
    // led0.set_rgb(1,0,1);

    return 0;
}
