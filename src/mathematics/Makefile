# Run `make all', `make spi', etc.
all: main.cpp
	g++ main.cpp -o prog -lmenu -lncurses

spi-test: spi.o leds.o spi-test.cpp
	g++ spi-test.cpp spi.o leds.o -o spi-test -lwiringPi

spi.o: spi.cpp spi.hpp
	g++ -c spi.cpp -o spi.o

leds.o: leds.cpp leds.hpp
	g++ -c leds.cpp -o leds.o

menu.o: menu.cpp menu.hpp 
	g++ -std=c++11 -c menu.cpp -o menu.o

menu-test: menu-test.cpp menu.o
	g++ -std=c++11 -pthread menu-test.cpp menu.o -o menu-test -lncurses -lmenu

maths: math_test.cpp
	g++ -std=c++11 -I/usr/include/eigen3/  math_test.cpp -o math_test

clean:
	rm -rf prog spi-test menu-test *.o
