TARGETS := io-test main

DEPDIR = .d

main_SRC := math_test.cpp state.cpp spi.cpp interface.cpp wpi.cpp io.cpp
io-test_SRC := io-test.cpp spi.cpp io.cpp interface.cpp wpi.cpp 

CC       := g++

CFLAGS   := -g -std=c++14 -Ofast -Wall
CPPFLAGS := -I. 

LDFLAGS  :=  
LDLIBS   := -lm -lwiringPi

# ----- Nothing below here needs to be changed

.PHONY: all
all : $(TARGETS)

.SECONDEXPANSION:
# For each target, depend on the .o files for its sources
$(TARGETS): $$(patsubst %.cpp,%.o,$$($$@_SRC))
	$(LINK.c) $^ $(LDLIBS) -o $@

ALLSRC := $(foreach T,$(TARGETS),$($T_SRC))

.PHONY: clean
clean:
	rm -f $(TARGETS) *.o $(DEPDIR)/*.d *~ 

# Advanced auto-dependency, from:
# http://make.mad-scientist.net/papers/advanced-auto-dependency-generation/

$(shell mkdir -p $(DEPDIR) >/dev/null)
DEPFLAGS = -MT $@ -MMD -MP -MF $(DEPDIR)/$*.Td

COMPILE.c = $(CC) $(DEPFLAGS) $(CFLAGS) $(CPPFLAGS) $(TARGET_ARCH) -c
POSTCOMPILE = mv -f $(DEPDIR)/$*.Td $(DEPDIR)/$*.d

%.o : %.cpp
%.o : %.cpp $(DEPDIR)/%.d
		$(COMPILE.c) $(OUTPUT_OPTION) $<
		$(POSTCOMPILE)

$(DEPDIR)/%.d: ;
.PRECIOUS: $(DEPDIR)/%.d

-include $(patsubst %,$(DEPDIR)/%.d,$(basename $(ALLSRC)))
