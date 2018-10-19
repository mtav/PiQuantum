/*
 * File: io.c
 * 
 * Description: Contains all the functions for reading buttons and writing to
 * LEDs
 *
 */

#include "io.h"
#include "time.h"

// Set up LEDs and buttons on port D 
int setup_io(void) {
    // Set up the input/output
    ANSELD = 0x0000; // Set port D to digital
    TRISD = 0x20C0; // Set lines 0,1,2 as output; 6,7,13 as input 
    // Setup timers for flashing LEDs
    T4CON = 0x0000; // Reset the timer control registers
    T5CON = 0x0000;
    // Set up timer 4 in 32 bit mode with timer 5
    // Clock prescaler 1:1, internal oscillator source.
    T4CON = 0x0008;
    // No need to change anything in T5CON
    // Reset TMR4, TMR5, PR4 and PR5
    TMR4 = 0x0000;
    TMR5 = 0x0000;
    PR4 = 0x0000; // Reset registers
    PR5 = 0x0000;
    // Setup interrupts for timer 5
    IEC1bits.T5IE = 1; // Enable the interrupt
    IFS1bits.T5IF = 0; // Clear the interrupt flag
  return 0;
}

// Global LED strobing state parameter
LED_GLOBAL led_global = {0};
    
// Interrupt service routine for timer 4
void __attribute__((__interrupt__, no_auto_psv)) _T5Interrupt(void) {
    // Read the state and change to next state
    led_global.strobe_state ^= 1; // Flip bit zero
    if (led_global.strobe_state == 1) {
        // Turn on LEDs
        LATD |= (led_global.strobe_leds);
    } else {
        // Turn off LEDs
        LATD &= ~(led_global.strobe_leds);
    }

    // Reset the timer
    TMR4 = 0x0000;
    TMR5 = 0x0000;
    // Clear Timer4 interrupt flag
    IFS1bits.T5IF = 0;
}

// Set LEDs flashing
void start_strobe() {
    // Reset TMR4, TMR5
    TMR4 = 0x0000;
    TMR5 = 0x0000;
    // Set flashing period
    PR4 = 0x0000;
    PR5 = 0x0080;
    // Turn timer 4 on
    T4CONbits.TON = 1;
}

// Stop LEDs flashing
void stop_strobe() {
    T4CONbits.TON = 0; // Turn timer 4 off
    
}

// Set an LED strobing
void set_strobe(int color, int state) {
    extern LED_GLOBAL led_global;
    switch(state) {
        case on: // Start the strobing
            LATD &= ~(1 << color);
            led_global.strobe_leds |= (1 << color);
            break;
        case off:
            LATD &= ~(1 << color);
            led_global.strobe_leds &= ~(1 << color);
            break;
    }
}
  
// Toggle LED strobe
void toggle_strobe(int color) {
    extern LED_GLOBAL led_global;
    LATD &= ~(1 << color);
    led_global.strobe_leds ^= (1 << color);
}

// Turn a particular LED on or off
int set_led(int color, int state) {
  if (state == on)
    LATD |= (1 << color);
  else
    LATD &= ~(1 << color);
  return 0;
}

// Read the state of a push button
int read_btn(int btn) {
  if ((btn != sw1) && (btn != sw2) && (btn != sw3)) {
    return -1;
  } else {
    // How well do you know C
    return (((PORTD & (1 << btn)) >> btn) ^ 0x0001);
  }
}

// Turn all the LEDs off
void leds_off(void) {
  set_led(green, off);
  set_led(amber, off);
  set_led(red, off);
}

#define PERIOD 500000
// Flash LED a number of times
void flash_led(int color, int number) {
    unsigned long int m = 0, n = 0; // You need 32 bit types for this
    while(n < number) {
        set_led(color, on);
        m = 0;
        while(m < PERIOD) m++;
        set_led(color, off);
        m = 0;
        while(m < PERIOD) m++;
        n++;
    }
}

// Flash all the LEDs a number of times
void flash_all(int number) {

    unsigned long int m = 0, n = 0; // You need 32 bit types for this
    while(n < number) {
        set_led(red, on);
        set_led(amber, on);
        set_led(green, on);
        m = 0;
        while(m < PERIOD) m++;
        leds_off();
        m = 0;
        while(m < PERIOD) m++;
        n++;
    }
}