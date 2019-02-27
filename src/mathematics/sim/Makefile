BINARY = sim
OPT = -Wall -g -O2 -march=native -flto

sim: clean
	g++ $(OPT) sim.cpp -o $(BINARY)

clean:
	rm -rf *.S *.o $(BINARY)
