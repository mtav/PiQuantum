# Run `make all', `make spi', etc.
all: main.c
	gcc main.c -o prog -lmenu -lncurses

spi: spi.cpp
	g++ spi.cpp -o spi -lwiringPi

clean:
	rm -rf prog spi
