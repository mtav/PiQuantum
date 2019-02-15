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
#include "pin_mappings.hpp"

// class to read all of the button states via the spi
// SN74hc165 shift register 
// RED CLK                  - PI 21 - Physical 40 - SPI1 CLK
// YELLOW SH/LD shift/load  - PI 13 - Physical 33 - GPIO 13
// GREEN Serial out         - PI 19 - Physical 35 - SPI1 MISO
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
        // set clk freq to < 30MHz max 
        Button_driver(int chips = 2, double freq = 50000, int channel = 1):
            num_chips(chips), frequency(freq), spi_channel(channel), 
            spi(spi_channel, frequency)
    {
        // make the empty buffer vector size of number of bytes for the button chips
        for(int i = 0; i < num_chips; i++) empty_data.push_back(0);

        // setup wiring pi
        wiringPiSetup();    // what is this alternating caps...

        // set up pins for input
        pinMode(PIN::SHLD, OUTPUT);    //set inhibit to output mode
        digitalWrite(PIN::SHLD, HIGH);
    }
        // methods
        unsgn_char_vect read_spi_bytes(unsgn_char_vect empty_data){
            // empty_data is number of chips elements as each unsignd char is 1 byte.
            // eg 2 chips empty_data = {0, 0} 2 bytes long
            
            // bring SHLD low to enable parallel load
            digitalWrite(PIN::SHLD, LOW); 
            // bring high to stop read and shift 
            digitalWrite(PIN::SHLD, HIGH);

            unsgn_char_vect buffer = spi.read_write(empty_data); 
            
            std::cout << (int)buffer[0] << (int)buffer[1] <<std::endl;
            std::cout << (int)empty_data[0] << (int)empty_data[1] << std::endl;
            return buffer;
        }
};

// each button inherits the Button_driver to read the button buffer
// and the button object returns true or false for it's position in the byte 
/// @todo atm each button has its own button_driver object which means there 
// could 
class Button {
    private:
        // i.e 1st or 2nd byte
        int chip_number;
        // which bit in the byte
        int chip_pin;
        // each button corresponds to a bit in the byte(s) 
        // returned from the spi read/write
        int button_pos;

    public:
        // need to pass all buttons the same button_driver object
        Button_driver _driver;
        // make a buffer vector for the unsigned chars
        unsgn_char_vect buffer;

        // constructor
        // passes the same driver class for all buttons from buttons.cpp
        Button(int chp_num, int chp_pin, Button_driver driver) : 
            chip_number(chp_num), chip_pin(chp_pin) 
    {
        // the bit in the spi associated to the button
        button_pos = chip_number * 8 + chip_pin;
    }
        // methods
        void print_pos() {std::cout << button_pos <<std::endl;};

        bool is_pressed(){
            buffer = _driver.read_spi_bytes({0,0});
            //std::cout << buffer[0] << std::endl;
            // selects which byte and masks depending on which physical chip pin
            // the button is connected to.
            return (buffer[chip_number] & (1 << chip_pin));
        }

};


#endif
