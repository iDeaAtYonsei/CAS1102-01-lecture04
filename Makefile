# TODO: Implement a Makefile


# Requirements:
# Use C++23 standard.
# Compilation should generate object files.
# Link object files to create an executable program.
# Implement a 'clean' rule to remove build artifacts (e.g., .o and executable).

CXX = g++
CXXFLAGS = -std=c++23

all: main

main: main.o
	$(CXX) $(CXXFLAGS) $^ hello.cpp -o $@

%.o: %.cpp
	$(CXX) $(CXXFLAGS) -c $<

clean:
	rm -f main main.o

.phony: clean all