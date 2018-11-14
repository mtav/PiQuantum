/**
 * @file tests.c
 * 
 * @brief Description: Contains all the tests we have performed on the micro-
 * controller
 *
 */

#include "tests.h"
#include "io.h"
#include "quantum.h"
#include "time.h"

/**
// Testing the speed of 2^15 2x2 real matrix multiplications
void mat_mul_test() {
    
    // Define state vector
    // |0> = (1,0)
    // |1> = (0,1)
  Vector V;
  init_state(V, ZERO);
    
    Matrix2 X = {{0}}, Z = {{0}}, H = {{0}};
    make_ops(X, Z, H);
    
    // Start the timer
    start_timer();
    
    // Do a matrix multiplication test
    unsigned int n = 0;
    while (n < 32768) {
        mat_mul(X, V);
        n++;
    }

    // Read the timer
    //unsigned long int time = read_timer();
    
    // Show that the test is finished
    set_led(red, on);

    // wait (add a breakpoint here)
    while(1 == 1);
    
}
*/

// Dimmable LEDs
// ** NOTE: This won't work any more with the T4/T5 interrupt routine **
void dim_leds() {
    // Setup initial duty period
    unsigned int duty = 0x0100;
    
    // loop 
    while(1 == 1) {
        //
        
        // Read two buttons
        int btn1 = off, btn3 = off;
        btn1 = read_btn(sw1);
        btn3 = read_btn(sw3);
        // Alter duty cycle
        if (btn1 == on && duty < 0x1CF2) {
            duty++;
        }
        if (btn3 == on && duty > 0x10) {
            duty--;
        }
        
        // Reset TMR4, TMR5
        TMR4 = 0x0000;
        TMR5 = 0x0000;
        // Set the duty period
        PR4 = duty;
        // Turn on LEDs
        LATD |= 0x0007;
        // Turn timer 4 on
        T4CONbits.TON = 1;
        
        
        // Delay of total period
        unsigned long int cnt = 0; // 32 bit int
        while (cnt < 500) cnt++;
    }
    
}

// Multi LED strobing test
/* This won't work anymore
void multi_led_strobe() { 
    // Start strobing
    start_strobe();
    
    while (1 == 1) {
        // Read two buttons
        int btn1 = off, btn2 = off, btn3 = off;
        btn1 = read_btn(sw1);
        btn2 = read_btn(sw2);
        btn3 = read_btn(sw3);
        
        // Alter strobing
        if (btn1 == on) {
            //set_strobe(red, on);
            toggle_strobe(red);
        } else if (btn2 == on) {
            //set_strobe(amber, on);
            toggle_strobe(amber);
        } else if (btn3 == on) {
            //set_strobe(green, on);
            toggle_strobe(green);
        }
        
         // Wait for all the buttons to be released
        while ((btn1 == on) || (btn2 == on) || (btn3 == on)) {
            btn1 = read_btn(sw1);
            btn2 = read_btn(sw2);
            btn3 = read_btn(sw3);
        }

        // Short delay to stop button bouncing
        unsigned long int cnt = 0; // 32 bit int
        while (cnt < 100000) cnt++;
        
    }
}
*/