# Run `make all', `make spi', etc.

CFLAGS = -Wall -g -std=c++11 

all: main.cpp
	g++ main.cpp -o prog -lmenu -lncurses

spi-test: spi.o leds.o wpi.o spi-test.cpp
	g++ $(CFLAGS) spi-test.cpp spi.o wpi.o leds.o -o spi-test -lwiringPi

spi.o: spi.cpp spi.hpp
	g++ $(CFLAGS)-c spi.cpp -o spi.o

leds.o: leds.cpp leds.hpp
	g++ $(CFLAG)-c leds.cpp -o leds.o

menu.o: menu.cpp menu.hpp 
	g++ -std=c++11 -Wall -c menu.cpp -o menu.o

menu-test: menu-test.cpp menu.o
	g++ -std=c++11 -Wall -pthread -I/usr/include/eigen3/ menu-test.cpp menu.o -o menu-test -lncurses -lmenu

maths.o: 
	g++ -std=c++11 math_test.cpp consts.o -o math_test

classes.o: classes.cpp consts.hpp
	g++ -std=c++11 -I/usr/include/eigen3/ -c consts.cpp -o consts.o

static_test:
	g++ -std=c++11 -Wall -c static_test_2.cpp -o static_test_2.o
	g++ -std=c++11 -Wall static_test_1.cpp static_test_2.o -o static

button_test: buttons.cpp spi.o
	g++ buttons.cpp spi.o -o button_test -lwiringPi

bluetooth-test: bluetooth-test.c
	gcc bluetooth-test.c -lbluetooth -o bluetooth-test

wpi.o: wpi.hpp wpi.cpp
	g++ -c wpi.cpp -o wpi.o

clean:
	rm -rf prog spi-test menu-test *.o
