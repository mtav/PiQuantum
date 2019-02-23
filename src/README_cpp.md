
--------------------------------- Main ------------------------------------------------





------------------------------------ SPI ---------------------------------------------

_spi.hpp_ uses _wiringpispi.h_ for SPI communication.
The *SPIChannel* Class contains 3 methods
1. read_write which is overloaded to take a std::vector<unsigned char> or unsigned char.
2. change_frequency takes an integer frequency in Hz

Is constructed with SpiChannel(int channel, int frequency).

_spi.cpp_ uses _spi.hpp_
use the methods passing a unsigned char vector and the method returns the read buffer

_leds.hpp_ uses wiringpi.h, signal.h, unistd.h
Contains classes 
*Led*
1. double, red, green, blue values

*Alarm* - Does mysterious things
1. handler takes int sig

Is constructed with Alarm(int delay)





