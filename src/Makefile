# Run `make all', `make spi', etc.
all: main.c
	gcc main.c -o prog -lmenu -lncurses

spi-test: spi.o leds.o spi-test.cpp
	g++ spi-test.cpp spi.o leds.o -o spi-test -lwiringPi

spi.o: spi.cpp spi.hpp
	g++ -c spi.cpp -o spi.o

leds.o: leds.cpp leds.hpp
	g++ -c leds.cpp -o leds.o

clean:
	rm -rf prog spi-test *.o
