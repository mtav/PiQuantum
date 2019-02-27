BINARY = sim
OPT = -O3

sim: clean asm
	g++ $(OPT) sim.cpp arithmetic.o -o $(BINARY)
	objdump -S $(BINARY) > $(BINARY).S

run: sim
	./sim

asm:
	as arithmetic.asm -o arithmetic.o 
	objdump -D arithmetic.o > arithmetic.S


clean:
	rm -rf *.S *.o $(BINARY)
