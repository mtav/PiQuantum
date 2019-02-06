/** 
 * @file leds.hpp
 * @authors J Scott, O Thomas
 * @date Feb 2019 
 *
 * @detail LED control. 
 *
 */

#include <wiringPi.h>

void setup_pins(void);

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
 */
int set_leds(void);
