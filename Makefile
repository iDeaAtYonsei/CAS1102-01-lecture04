# TODO: Implement a Makefile
CXX = clang++
CXXFLAGS = -std=c++20 -Wall -Wextra

main: main.o
	$(CXX) $(CXXFLAGS) main.o -o main

main.o: main.cpp
	$(CXX) $(CXXFLAGS) -c main.cpp

clean:
	rm -f main main.o

.PHONY: clean


# Requirements:
# Use C++23 standard.
# Compilation should generate object files.
# Link object files to create an executable program.
# Implement a 'clean' rule to remove build artifacts (e.g., .o and executable).