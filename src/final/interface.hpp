/** 
 * @file interface.hpp
 * @authors J Scott, O Thomas
 * @date Feb 2019 
 *
 * @detail LED and Button control. 
 *
 */

#ifndef INTERFACE_HPP
#define INTERFACE_HPP

#include "io.hpp"

/**
 * @brief RGB Led class
 *
 * @detail Objects of this class represent RGB LEDs. When the class is 
 * instantiated, it creates an InputOutput class driver automatically (if
 * on does not already exist) and then registers itself with it, so that
 * its RGB values are automatically sent to the device.
 *
 * The constructor takes three arguments which are the positions on the 
 * driver chips of the R, G and B lines. They are specified in the form
 * {chip, line}, where chip is the chip number and line is the line number
 * on that chip.
 *
 * RGB values are updated using the set_rgb function. RGB values are between
 * 0 and 1, with 0 representing off and 1 representing maximum brightness. The
 * new state will be written immediately to the LEDs. To turn the LED off write
 * RGB values of 0.
 *
 */
class Led {
    private:

        std::shared_ptr<InputOutput> driver; // Underlying hardware driver  
        int id; // Used to identify the LED to the driver
        const std::vector<Position> positions; // Chip and line numbers 
        std::vector<double> rgb; // RGB values (0 to 1): In order [0]=r, [1]=g, [2]=b

    public:

        Led(Position r, Position g, Position b); // Constructor
        ~Led(); // Destructor
        void set_rgb(double red, double green, double blue); // Write RGB values
        std::vector<double> get_rgb(); // Read RGB values
        std::vector<Position> get_positions();  // Return the chip and line numbers
};

class Button {
    private:
        // A pointer to the LED driver which writes
        // data to the hardware. Each Led object
        // needs to register itself with the
        // driver. The driver then polls the
        // Led objects to read their color and
        // write it to the hardware device
        std::shared_ptr<InputOutput> driver;
        int id; // Identifying the Button object to the driver

        // Chip and line numbers 
        const Position position;

        // RGB values (between zero and one)
        std::vector<double> rgb_values; // In order [0]=r, [1]=g, [2]=b

        // Button state
        int btn_state;

        // So that InputOutput can set the btn_state. I'd prefer it to
        // only be able to access the btn_state variable but haven't
        // figured out a good way to do it yet
        friend class InputOutput;

    public:

        // Constructor and destructor
        Button(Position position);
        ~Button();

        // Read the button state
        int get_state();
        std::vector<double> rgb() { return rgb_values; }

        // Return the chip and line numbers
        Position get_position() { return position; }

};

#endif
