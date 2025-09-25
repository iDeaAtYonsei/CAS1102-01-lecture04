# TODO: Implement a Makefile
CXX = g++
CXXFLAGS = -std=c++23

all: hello

hello: main.o hello.o
	$(CXX) $(CXXFLAGS) -o hello main.o hello.o

hello.o: hello.cpp
	$(CXX) $(CXXFLAGS) -c hello.cpp -o hello.o

main.o: main.cpp
	$(CXX) $(CXXFLAGS) -c main.cpp -o main.o



clean:
	rm -f *.o main.o 

.phony: clean all

# Requirements:
# Use C++23 standard.
# Compilation should generate object files.
# Link object files to create an executable program.
# Implement a 'clean' rule to remove build artifacts (e.g., .o and executable).