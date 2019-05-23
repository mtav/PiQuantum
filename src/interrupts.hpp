/** 
 * @file interrupts.hpp
 * @authors J Scott, O Thomas
 * @date May 2019 
 *
 * @detail SIGALARM interrupts for timing functions
 *
 */

/**
 * @brief Interrupts in Linux
 *
 * @detail This class implements the SIGALARM function in Linux. 
 * SIGALARM can be setup to call a function at regular intervals.
 *
 */
class Alarm {
    private:
        static Alarm * alrm; // A pointer to an alarm class
        static void handler(int sig);  
        void interrupt(void);   // Set the function called by the alarm 
        void set_pointer(Alarm * ptr) { alrm = ptr; } // Set up pointer to alarm object

    public:
        // Constructor
        Alarm(int delay_us);
};
