/**
 * @file main.c
 * @author J R Scott
 * @date 8/11/18
 *
 * @brief The main function
 *
 * @detail Description: Contains an example of fixed precision 2x2 matrix multiplication 
 * for applying operations to a single qubit. The only operations included
 * are H, X and Z so that everything is real (this can be extended later).
 * 
 * All the functions have now been moved into separate files. io.h and io.c 
 * contain functions for reading and controlling the buttons and LEDs, and
 * quantum.h/quantum.c contain the matrix arithmetic for simulating one qubit.
 *
 * Compile command: make (on linux). But if you want to program the micro-
 * controller too or if you're using windows you're better of downloading
 * and installing MPLAB-X https://www.microchip.com/mplab/mplab-x-ide.
 *
 * @note You also need the microchip xc16 compilers which
 * are available from https://www.microchip.com/mplab/compilers 
 *
 */

#include "p33EP512MU810.h"
#include "xc.h"

#include "config.h"
#include "time.h"
#include "io.h"
#include "quantum.h"
#include "tests.h"
#include "time.h"
#include "spi.h"
#include "algo.h"

int main(void) {

    // Change clock speed
    setup_clock();
    
    // Setup input/output (LEDs and buttons)
    setup_io();

    // Setup the timer
    setup_timer();
    
    // Setup SPI interface
    setup_spi();
    
    // Setup the external LEDs
    setup_external_leds();

    /**
     * @brief Reading button state
     * 
     * The button states are written into an array of type BUTTON_ARRAY
     * whose 
     */
    extern int buttons[16]; /// Global variable for button state
    read_external_buttons(); /// Update the buttons variable
    if(buttons[0] == 1)
        ; /// Do something if button 0 has been pressed...
    
    
    /** @brief Example use of RGB LEDs -- won't do anything yet
     * 
     * Just pass the values of R, G and B to the function along with the led
     * index (which can just be an integer, like qubit number). The exact 
     * mapping of indices to LED lines in the display driver will be in the 
     * io.h file. 
     */ 

    CVector3 state_vect;
    
<<<<<<< HEAD
    3qubit_test(state_vect);
    // qubit 0 to 2
    //for(int i=0; i <= 3; i++){
        int zero_amp = 0;
        int one_amp = 0;
        // 8 states
        // zero amps are first 4 
        // 0 1 2 3
        // 0 1 4 5
        // 0 2 4 6
        for(int j=0; j <= 4; j++){
            zero_amp += sq(state_vect[j][0]);    
        }
        // one amps are last 4
        // 4 5 6 7
        // 2 3 6 7
        // 1 3 5 7
        for(int k=4; k<= 8; k++){
            one_amp += sq(state_vect[k][0]);
        }
        set_external_led(0, zero_amp, one_amp, 0);
    
    while(1==1);
=======
    init_state_cmplx(state_v, ZERO);
    // led 0, r=0, b=0, g=0
    //for(int i=0; i<100; i++);
    //while(1 == 1) {
    //    set_external_led(0, 0.5, 0, 0);
    //}
    while(1==1) {
        for(_Fract i=0; i<0.99; i+=0.001) {
            long int counter = 0;
            while(counter < 10000) counter ++;
            set_external_led(0, i, 0, 1.0-i);
        }
    }
>>>>>>> e64539a006e7a7f329f3b1100e6e9c6f3bd3a00d

    
    return 0;
}
