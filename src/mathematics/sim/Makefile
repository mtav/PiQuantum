BINARY = sim
OPT = -Wall -O2

test: clean
	g++ $(OPT) test.cpp -o test

sim: clean
	g++ $(OPT) sim.cpp -o $(BINARY)

clean:
	rm -rf *.S *.o $(BINARY)
