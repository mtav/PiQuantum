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
#include "interface.hpp"

void Alarm::handler(int sig) {
    if(sig != SIGALRM) {
        std::cerr << "Error: unexpected signal " << sig << ", expected SIGALRM"
            << std::endl;
    }
    if(alrm != nullptr) alrm -> interrupt(); // execute the intended function
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
    : Alarm(800), spi(spi), chips(2), period(20),
      counter(0), dc_counter(0), dc_max(1000), dc_trigger(false) {

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

/** 
 * @brief Turn on an LED via the external display driver TLC591x
 *
 * On power on, the chip (TLC591x) is in normal mode which means that
 * the clocked bytes sent to the chip set which LEDs are on and which 
 * are off (as opposed to setting the current of the LEDs).
 *
 * This function assumes that a number of the TLC591 chips are connected
 * together. Data is sent via SPI to the first chip and passed along the
 * chain to other devices.
 *
 * To write to the device:
 *
 *  1) Write a number of bytes to the SPI port, equal to the number of
 *     chips connected together
 *  2) Momentarily set the LE(ED1) pin to latch the data onto the output 
 *     register.
 *  3) Bring the OE(ED2) pin low to enable the current sinking to turn 
 *     on the LEDs.
 *
 * See the timing diagram on page 17 of the datasheet for details.  
 *
 * Arguments: a std::vector of the data to write to the display chips
 * 
 */
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
std::vector<unsigned char> InputOutput::read_button_states(int num) {
    // empty_data is number of chips elements as each unsignd char is 1 byte.
    // eg 2 chips empty_data = {0, 0} 2 bytes long

    // bring SHLD momentarily low to enable parallel load
    digitalWrite(PIN::SHLD, LOW); 
    digitalWrite(PIN::SHLD, HIGH);

    return spi -> read(num); 

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
        driver = std::make_shared<InputOutput>(getSpiChannel());
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
            << "R: " << i -> get_positions()[0] << ", " 
            << "G: " << i -> get_positions()[1] << ", "
            << "B: " << i -> get_positions()[2] << ", "
            << std::endl
            << "Levels: "
            << "R: " << i -> get_rgb()[0] << ", " 
            << "G: " << i -> get_rgb()[1] << ", "
            << "B: " << i -> get_rgb()[2] << ", "
            << std::endl;
        count ++;
    }
}

void InputOutput::interrupt() {   

  // Check display cycling variables
  if(dc_counter < dc_max) {
    dc_counter++;
  } else {
    dc_counter = 0;
    dc_trigger = true;
  }
  
  // Initiliase data to write to chips
  write = std::vector<byte>(chips, 0);    

  // Increment counter
  counter++;
  // Check for counter reset
  if(counter == period) {
    counter = 0; // Reset counter
    set_leds(write); // Set all to zero
  }
  
  // Loop over all the pointers in the leds vector, turning
  // the LEDs on if counter is high enough
  // Start with an empty std::vector to populate with LED state
  // data (length = chips, value = 0)
  for(Led * i : leds) {
    // Loop over RGB setting corresponding bits
    for(int k = 0; k < 3; k++) {
      if((counter/period) > (1 - i -> get_rgb()[k]))
	write[i -> get_positions()[k].chip]
	  |= (1 << i -> get_positions()[k].line); // Write a 1 in correct position
    
    }
    // Apply the mask
    for(unsigned int i = 0; i < chips; i++)
      write[i] &= mask[i]; // Mask the write array
    set_leds(write); // Write the data to the chip
  }
  
  // Read all the button states
  std::vector<byte> button_states = read_button_states(2);
  
  // Loop over all the button pointers writing the state
  // to the button objects
  for(Button * b : buttons) {
    // Get the chip for b
    int chip = b -> get_position().chip;
    // Create a mask for the correct bit
    int line = b -> get_position().line;
    int mask = (1 << line);
    b -> btn_state = (( button_states[chip] & mask ) >> line);
  }
} // end of func

int InputOutput::register_led(Led * led) {

  // Get the first empty index position
  int id = leds.size();
  
  // Add the LED to the leds vector or pointers
  leds.push_back(led);
  
  // Enable LED lines
  for(int k=0; k < 3; k++)
      mask[led -> get_positions()[k].chip] |=
	(1 << led -> get_positions ()[k].line);

  // Return the index position as an id
  return id;
  
}

void InputOutput::deregister_led(int id)
{
  // Remove the LED pointer from the list
  leds.erase(leds.begin() + id);
}

void InputOutput::deregister_button(int id)
{
  // Remove the LED pointer from the list
  buttons.erase(buttons.begin() + id);
}

int InputOutput::register_button(Button * btn)
{
  // Get the first empty index position
  int id = buttons.size();
  
  // Add the LED to the leds vector or pointers
  buttons.push_back(btn);

  // Return the index position as an id
  return id;

}

// Print the chip/lines for an LED
std::ostream & operator << (std::ostream & stream, Position lines) {
    stream << "(" << lines.chip << ", " << lines.line << ")"; 
    return stream;
}
