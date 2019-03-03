## General compilation options
CPPFLAGS = -Wall -O2 -flto -std=c++11
CPPFLAGS += -I../testing
DEPDIR := .d
$(shell mkdir -p $(DEPDIR) > /dev/null)

## Target 1
## List the required object files after the target
##
TEST_BIN = math_test
$(TEST_BIN): test.o state.o
	g++ $(CPPFLAGS) $(LDLIBS)  $^ -o $(TEST_BIN)

## Read and include dependency files
-include $(wildcard $(DEPDIR)/*.d)

## Pattern matching for compiling object files
%.o: %.cpp
	g++ $(CPPFLAGS) $(LDLIBS) -c $< -o $*.o
	g++ -MM $< > $(DEPDIR)/$*.d

# Clean target
.PHONY: clean
clean:
	-rm -rf $(TEST_BIN) *.o .d
