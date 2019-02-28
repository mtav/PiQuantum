/** 
 * @file io.cpp
 * @authors J Scott, O Thomas
 * @date Feb 2019 
 *
 * @detail IO control 
 *
 */

#include <wiringPi.h>
#include "io.hpp"
#include "leds.hpp"

void Alarm::handler(int sig) {
    if(sig != SIGALRM) {
        std::cerr << "Error: unexpected signal " << sig << ", expected SIGALRM"
            << std::endl;
    }
    if(alrm != nullptr) alrm -> func(); // execute the intended function
}// end of handler

// Constructor
Alarm::Alarm(int delay_us) { 
    // Set up alarm handler
    signal(SIGALRM, handler);

    // Schedule alarm
    ualarm(delay_us,delay_us);

    // Set pointer to this class
    set_pointer(this);
}

// Constructor
InputOutput::InputOutput(std::shared_ptr<SpiChannel> spi) 
    : Alarm(50000), spi(spi), chips(2), period(10), counter(0),
    button_states({0,0}) {

        // Set up pins for LEDs
        // Need to set initial state
        pinMode(PIN::LE, OUTPUT); // Set LE to output
        pinMode(PIN::OE, OUTPUT); // Set OE to output    

        // set up pins for button input
        pinMode(PIN::SHLD, OUTPUT);    //set inhibit to output mode
        digitalWrite(PIN::SHLD, HIGH);

        // Initialise data and mask arrays
        write = std::vector<unsigned char>(chips, 0);    
        mask = std::vector<unsigned char>(chips, 0);    

    } // end of InputOutput()

int InputOutput::set_leds(std::vector<unsigned char> data) {

    // Check data is the right length
    if(data.size() != chips) {
        std::cerr << "LED driver error: wrong number of bytes in data"
            << std::endl;
        abort();
    }

    // Read and write data (multiple bytes)
    spi -> write(data);

    // Bring LE high momentarily
    digitalWrite(PIN::LE, HIGH);
    digitalWrite(PIN::LE, LOW); // Is this enough of a delay?

    // Bring the output enable low
    digitalWrite(PIN::OE, LOW); // No need to bring high again?

    return 0;
} // end of set

// Read button stuff
void InputOutput::read_button_states(int num) {
    // empty_data is number of chips elements as each unsignd char is 1 byte.
    // eg 2 chips empty_data = {0, 0} 2 bytes long

    // bring SHLD momentarily low to enable parallel load
    digitalWrite(PIN::SHLD, LOW); 
    digitalWrite(PIN::SHLD, HIGH);

    button_states = spi -> read(num); 

    return;
}

/**
 * @brief Wrapper to return InputOutput class
 *
 * @detail Return a shared_ptr object to an InputOutput. Pass 
 * a channel to indicate which SPI channel to use
 * 
 */
std::shared_ptr<InputOutput> getInputOutput() {
    // Static pointer to LED driver
    static std::shared_ptr<InputOutput> driver;
    // If necessary, make a new SPI channel
    if(driver == nullptr)
        driver = std::make_shared<InputOutput>(getSpiChannel(0));
    // Return the spi channel pointer
    return driver; 
}

Alarm * Alarm::alrm = nullptr; // A pointer to an alarm class

// Print the registered LEDs
void InputOutput::print() {
    int count = 0; // Index the LEDs
    for(Led * i : leds) {
        std::cout << "------------------------------------"
            << std::endl;
        std::cout << "LED " << count << ": "<< std::endl;
        std::cout << "Lines: "
            << "R: " << i -> get_lines()[0] << ", " 
            << "G: " << i -> get_lines()[1] << ", "
            << "B: " << i -> get_lines()[2] << ", "
            << std::endl
            << "Levels: "
            << "R: " << i -> rgb()[0] << ", " 
            << "G: " << i -> rgb()[1] << ", "
            << "B: " << i -> rgb()[2] << ", "
            << std::endl;
        count ++;
    }
}

void InputOutput::func() {    

<<<<<<< HEAD
  // Initiliase data to write to chips
  write = std::vector<unsigned char>(chips, 0);    

  // Increment counter
  counter++;
  // Check for counter reset
  if(counter == period) {
    counter = 0; // Reset counter
    std::cout << (int)button_states[0] << " "
	      << (int)button_states[1]
	      << std::endl;
    set_leds(write); // Set all to zero
  }

  // Loop over all the pointers in the leds vector, turning
  // the LEDs off if counter is high enough
  // Start with an empty std::vector to populate with LED state
  // data (length = chips, value = 0)
  for(Led * i : leds) {
    // Need to ensure i still exists here
    // Loop over RGB setting corresponding bits
    for(int k = 0; k < 3; k++) {
      if((counter/period) > (1 - i -> rgb()[k]))
	write[i -> get_lines()[k].chip]
	  |= (1 << i -> get_lines()[k].line); // Write a 1 in correct position
=======
    // Initiliase data to write to chips
    write = std::vector<unsigned char>(chips, 0);    

    // Increment counter
    counter++;
    // Check for counter reset
    if(counter == period) {
        counter = 0; // Reset counter
        std::cout << (int)button_states[0] << " "
            << (int)button_states[1]
            << std::endl;
        set_leds(write); // Set all to zero
>>>>>>> db40433d5599c6bbdabc2eb225e10e46400ec5a0
    }
    
        // Loop over all the pointers in the leds vector, turning
        // the LEDs off if counter is high enough
        // Start with an empty std::vector to populate with LED state
        // data (length = chips, value = 0)
        for(Led * i : leds) {
            // Need to ensure i still exists here
            // Loop over RGB setting corresponding bits
            for(int k = 0; k < 3; k++) {
                if((counter/period) > (1 - i -> rgb()[k]))
                    write[i -> get_lines()[k].chip]
                        |= (1 << i -> get_lines()[k].line); // Write a 1 in correct position
            }
        } // Turn on LED
    for(unsigned int i = 0; i < chips; i++)
        write[i] &= mask[i]; // Mask the write array
    set_leds(write); // Write the data to the chip

    // Put button reading stuff here
    std::vector<unsigned char> button_states = read_button_states(2);

<<<<<<< HEAD
  // Read all the button states
  std::vector<unsigned char> button_states = read_button_states(2);
  
  // Loop over all the button pointers writing the state
  // to the button objects
  for(Button * b : buttons) {
    // Get the chip for b
    int chip = b -> get_lines.chip;
    // Create a mask for the correct bit
    int mask = (1 << b -> get_lines.line);
    b -> button state = ( button_states[chip] && mask) ;
  }
=======

>>>>>>> db40433d5599c6bbdabc2eb225e10e46400ec5a0

} // end of func

void InputOutput::register_led(Led * led) {
    // Add the LED to the leds vector or pointers
    leds.push_back(led);

    // Enable LED lines
    for(int k=0; k < 3; k++)
        mask[led -> get_lines()[k].chip] |= (1 << led -> get_lines()[k].line);

}

void InputOutput::register_button(Button * btn) {
    // Add the LED to the leds vector or pointers
    buttons.push_back(btn);

    // Enable LED lines -- Is this necessary for buttons?
    //for(int k=0; k < 3; k++)
    //  mask[led -> get_lines()[k].chip] |= (1 << led -> get_lines()[k].line);

}

// Print the chip/lines for an LED
std::ostream & operator << (std::ostream & stream, Lines lines) {
    stream << "(" << lines.chip << ", " << lines.line << ")"; 
    return stream;
}
