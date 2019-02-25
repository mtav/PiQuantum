# Run `make all', `make spi', etc.

CFLAGS = -I/usr/include/eigen3/ -pthread
CLIBS = -lmenu -lncurses

# old 
#all: math_test.o main.cpp
#	g++ -std=c++11 -I/usr/include/eigen3/ main.cpp math_test.o -o prog -lmenu -lncurses
spi-test: spi.o leds.o spi-test.cpp
	g++ spi-test.cpp spi.o leds.o -o spi-test -lwiringPi

spi.o: spi.cpp spi.hpp
	g++ -c spi.cpp -o spi.o

leds.o: leds.cpp leds.hpp
	g++ -c leds.cpp -o leds.o


menu-test: menu-test.cpp menu.o
	g++ -std=c++11 -pthread menu-test.cpp menu.o -o menu-test -lncurses
	-lmenu

consts.o: consts.cpp consts.hpp
	g++ -std=c++11 -I/usr/include/eigen3/ -c consts.cpp -o consts.o

math_test.o: math_test.cpp consts.hpp # consts.o
	g++ -std=c++11 -I/usr/include/eigen3/ -c  math_test.cpp -o
	math_test.o

menu.o: menu.cpp menu.hpp 
	g++ -std=c++11 -pthread -c menu.cpp -o menu.o

make all: menu.o main.cpp
	g++ -std=c++11 $(CFLAGS) main.cpp menu.o -o prog $(CLIBS)

clean:
	rm -rf prog spi-test menu-test *.o
