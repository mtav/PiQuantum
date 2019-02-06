# Run `make all', `make spi', etc.
all: main.c
	gcc main.c -o prog

spi-test: spi.o
	g++ spi-test.cpp spi.o -o spi-test -lwiringPi

spi.o: spi.hpp
	g++ -c spi.cpp -o spi.o

clean:
	rm -rf prog spi-test *.o
