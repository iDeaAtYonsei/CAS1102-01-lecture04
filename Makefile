# TODO: Implement a Makefilw

# Requirements:
# Use C++23 standard.
# Compilation should generate object files.
# Link object files to create an executable program.
# Implement a 'clean' rule to remove build artifacts (e.g., .o and executable).

CXX      := g++
CXXFLAGS := -std=c++2b -Wall -Wextra -O2
TARGET   := hello
OBJS     := main.o hello.o

all: $(TARGET)

$(TARGET): $(OBJS)
	$(CXX) $(CXXFLAGS) -o $@ $^

main.o: main.cpp main.h
	$(CXX) $(CXXFLAGS) -c $< -o $@

hello.o: hello.cpp main.h
	$(CXX) $(CXXFLAGS) -c $< -o $@

.PHONY: clean
clean:
	rm -f $(OBJS) $(TARGET)