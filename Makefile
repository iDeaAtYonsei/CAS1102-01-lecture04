# TODO: Implement a Makefilw

# Requirements:
# Use C++23 standard.
# Compilation should generate object files.
# Link object files to create an executable program.
# Implement a 'clean' rule to remove build artifacts (e.g., .o and executable).

CXX = g++
CXXFLAGS = -std=c++23 -Wall -Wextra

all: main

main: main.o hello.o
	$(CXX) $(CXXFLAGS) -o main main.o hello.o

main.o: main.cpp main.h
	$(CXX) $(CXXFLAGS) -c main.cpp

hello.o: hello.cpp main.h
	$(CXX) $(CXXFLAGS) -c hello.cpp

clean:
	rm -f *.o main

