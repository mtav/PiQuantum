## General compilation options
CPPFLAGS = -Wall -O2 -flto -std=c++11
CPPFLAGS += -I../testing
DEPDIR := .d
$(shell mkdir -p $(DEPDIR) > /dev/null)

## Target 1
## List the required object files after the target
##
TEST_BIN = math_test
$(TEST_BIN): test.o state.o dummy.o
	g++ $(CPPFLAGS) $(LDLIBS)  $^ -o $(TEST_BIN)
	objdump -S  $(TEST_BIN) >  $(TEST_BIN).S


## Read and include dependency files
-include $(wildcard $(DEPDIR)/*.d)

## Pattern matching for compiling object files
%.o: %.cpp
	g++ $(CPPFLAGS) $(LDLIBS) -c $< -o $*.o
	g++ -MM $< > $(DEPDIR)/$*.d
	objdump -S $*.o > $*.S

# Compile dummy target seperately
dummy.o: dummy.cpp
	g++ -Wall -O2 -std=c++11 -c $< -o $*.o
	g++ -MM $< > $(DEPDIR)/$*.d
	objdump -S $*.o > $*.S


# Clean target
.PHONY: clean
clean:
	-rm -rf $(TEST_BIN) *.o *.S .d
