## General compilation options
CPPFLAGS = -Wall -g -O2 -std=c++11 
DEPDIR := .d
$(shell mkdir -p $(DEPDIR) > /dev/null)
LIBS = -lwiringPi

## Testing SPI LEDs and buttons
spi-test: spi-test.o spi.o io.o leds.o wpi.o
	g++ $(CPPFLAGS) $(LDLIBS)  $^ -o spi-test $(LIBS)



## Read and include dependency files
-include $(wildcard $(DEPDIR)/*.d)

## Pattern matching for compiling object files
%.o: %.cpp
	g++ $(CPPFLAGS) $(LDLIBS) -c $< -o $*.o
	g++ -MM $< > $(DEPDIR)/$*.d

# Clean target
.PHONY: clean
clean:
	-rm -rf spi-test *.o .d
