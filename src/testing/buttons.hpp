/** 
 * @file buttons.hpp
 * @authors J Scott, O Thomas
 * @date Feb 2019
 *
 * @detail Header file for Rasp Pi button I/O using SPI.
 */

#ifndef buttons
#define buttons

#include <wiringPi.h>
#include "spi.hpp"

// class to read all of the button states via the spi
class Button_driver {
    private:
        int num_chips;
        double frequency;
        int spi_channel;
        // make empty vector to store spi buffer values in
        unsgn_char_vect empty_data;
        // use the spi class
        SpiChannel spi;
    public:

        // constructor 
        // initialize with : assign in {}
        Button_driver(int chips = 1, double freq = 250000000, int channel = 1):
            num_chips(chips), frequency(freq), spi_channel(channel), 
            spi(spi_channel, frequency)
    {
        // make the empty buffer vector size of number of bytes for the button chips
        for(int i = 0; i < num_chips; i++) empty_data.push_back(0);

        // setup wiring pi
        wiringPiSetup();    // what is this alternating caps...

        // set up pins for input

    }

        // methods
        unsgn_char_vect read_spi_bytes(){
            // empty_data is number of chips elements as each unsignd char is 1 byte.
            // eg 2 chips empty_data = {0, 0} 2 bytes long
            return spi.read_write(empty_data); 
        }
};

// each button inherits the Button_driver to read the button buffer
// and the button object returns true or false for it's position in the byte 
class Button : public Button_driver {
    private:
        // i.e 1st or 2nd byte
        int chip_number;
        // which bit in the byte
        int chip_pin;
        // each button corresponds to a bit in the byte(s) 
        // returned from the spi read/write
        int button_pos;

    public:
        // make a buffer vector for the unsigned chars
        unsgn_char_vect buffer;

        // constructor
        Button(int chp_num, int chp_pin) : 
            chip_number(chp_num), chip_pin(chp_pin) 
    {
        // the bit in the spi associated to the button
        button_pos = chip_number * 8 + chip_pin;
    }
        // methods
        void print_pos() {std::cout << button_pos <<std::endl;};

        bool is_pressed(){
            buffer = read_spi_bytes();
            // selects which byte and masks depending on which physical chip pin
            // the button is connected to.
            return (buffer[chip_number] & (1 << chip_pin));
        }

};



// possibly don't need see butons.cpp
class Button_groups {
    public:
        std::vector<Button> qubit;
        std::vector<Button> b_input; 

        Button_groups() : qubit({Button(1,1), Button(1,2)}),
            b_input({Button(2,1), Button(2,2)}) 
            {}
};



#endif
