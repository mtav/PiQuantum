/** 
 * @file interrupts.cpp
 * @authors J Scott, O Thomas
 * @date May 2019 
 *
 * @detail Implementation of timer related classes
 *
 */

#include "interrupts.hpp"

// Definition of static member variable
Alarm * Alarm::alrm = nullptr; // Redefined in the constructor of Alarm

void Alarm::handler(int sig) {
    if(sig != SIGALRM) {
      std::cerr << "Error: unexpected signal " << sig << ", expected SIGALRM"
		<< std::endl;
    }
    if(alrm != nullptr) {
      alrm -> interrupt(); // execute the intended function
    }
}// end of handler

// Constructor
Alarm::Alarm(int delay_us)
{ 
    // Set up alarm handler
    signal(SIGALRM, handler);

    // Schedule alarm
    ualarm(delay_us,delay_us);

    // Set pointer to this class
    set_pointer(this);
}

/// Interrupt
///
void Alarm::interrupt(void) {
  
}
