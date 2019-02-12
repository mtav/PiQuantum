/** 
 * @file leds.hpp
 * @authors J Scott, O Thomas
 * @date Feb 2019 
 *
 * @detail LED control. 
 *
 */

#include <wiringPi.h>
#include <signal.h>
#include <unistd.h>

class Led {
    public:
        // RGB values (between zero and one)
        double red;
        double green;
        double blue;

        Led() : red(0.1), green(0.5), blue(0.5) { }

};

class Alarm {
    private:

        static Alarm * alrm; // A pointer to an alarm class

        static void handler(int sig) {
            if(sig != SIGALRM) {
                std::cerr << "Error: unexpected signal " << sig << ", expected SIGALRM"
                    << std::endl;
            }
            if(alrm != nullptr) alrm -> func(); // execute the intended function
        }

        // Set the function called by the alarm 
        virtual void func() = 0;

        // Set up pointer to alarm object
        void set_pointer(Alarm * ptr) { alrm = ptr; }

    public:

        Alarm(int delay_us) { 

            // Set up alarm handler
            signal(SIGALRM, handler);

            // Schedule alarm
            ualarm(delay_us,delay_us);

            // Set pointer to this class
            set_pointer(this);

        }

};

class PIN {
    public:
        static const int LE = 0; // Physical pin 11
        static const int OE = 1; // Physical pin 12
};

class LedDriver : public Alarm {
    private:
        const int channel; // SPI channel number
        const double frequency; // SPI channel frequency
        const int chips; // Number of TLC591x chips
        SpiChannel spi; // SPI interface

        /**
         * @brief Function for simulating dimmable LEDs
         *
         * @detail This function is repeatedly called at a high 
         * rate by the alarm signal. Each time it is called it 
         * compares counter/period with an RGB value in Led.
         * If counter/period exceeds the RGB value the LED is 
         * switched off, otherwise it is left on. When the counter
         * is the same as the period, the counter is reset and all 
         * LEDs are switches back on
         *
         */
        const int period;
        double counter;
        void func() {    
            // Increment counter
            counter++;
            // Check for counter reset
            if(counter == period) {
                counter = 0; // Reset counter
                if((counter/period) < test_led.red) set({255,255}); // Turn on LED
            }
            // Turn off LED if counter is high enough
            if((counter/period) >= test_led.red) set({0,0});
        }

    public:
        Led test_led;

        LedDriver() : channel(0), frequency(500000),
        spi(channel, frequency), chips(2),
        period(10), counter(0), Alarm(500) {

            // Need to call this setup function for wiringPi before
            // using any of its functions. Use wiringPi pin conventions
            // (see the reference -> setup section of the wiringPi website).
            wiringPiSetup();

            // Set up pins
            pinMode(PIN::LE, OUTPUT); // Set LE to output
            pinMode(PIN::OE, OUTPUT); // Set OE to output    

        }

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
        int set(std::vector<unsigned char> data) {

            // Check data is the right length
            if(data.size() != chips) {
                std::cerr << "LED driver error: wrong number of bytes in data"
                    << std::endl;
                abort();
            }

            // Read and write data (multiple bytes)
            std::vector<unsigned char> read = spi.read_write(data);

            // Bring LE high momentarily
            digitalWrite(PIN::LE, HIGH);
            digitalWrite(PIN::LE, LOW); // Is this enough of a delay?

            // Bring the output enable low
            digitalWrite(PIN::OE, LOW); // No need to bring high again?

            return 0;

        }



};


