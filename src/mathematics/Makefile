## General compilation options
CPPFLAGS = -Wall -g -O2 -march=native -flto -std=c++11
LDLIBS = -I../eigen3
DEPDIR := .d
$(shell mkdir -p $(DEPDIR) > /dev/null)
LIBS = 

## Target 1
## List the required object files after the target
##
TEST_BIN = test
$(TEST_BIN): math_test.o state.o
	g++ $(CPPFLAGS) $(LDLIBS)  $^ -o $(TEST_BIN) $(LIBS)

## Target 2
## Put new targets here...
##

## Read and include dependency files
#-include $(patsubst %.o, $(DEPDIR)/%.d, $(OBJS))
-include $(wildcard $(DEPDIR)/*.d)

## Pattern matching for compiling object files
%.o: %.cpp
	g++ $(CPPFLAGS) $(LDLIBS) -c $< -o $*.o
	g++ -MM $< > $(DEPDIR)/$*.d

# Clean target
.PHONY: clean
clean:
	-rm -rf $(TEST_BIN) *.o .d
