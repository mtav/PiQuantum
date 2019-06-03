#include <vector>
/** 
 * @brief Chip/line structure 
 *
 * @detail Store the chip and line number for 
 * a particular LED or button.
 *
 */
typedef struct 
{
    int chip;
    int line;
} Position;

class PIN {
    public:
        // use gpio readall to get wiringPi mappings
        //
        // for leds
        static const int LE = 0; // Physical pin 11
        static const int OE = 1; // Physical pin 12
       
        // for buttons
        static const int SHLD = 23; // Physical pin 33
};

/*
std::vector<std::vector<Position> > led_pos{ 
            { {6,0}, {6,2}, {6,1} },
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

*/
