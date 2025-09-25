# TODO: Implement a Makefilw

# Requirements:
# 1. Use C++23 standard.z
# 2. Compilation should generate object files.
# 3. Link object files to create an executable program.
# 4. Implement a 'clean' rule to remove build artifacts (e.g., .o and executable).

CXX = g++
CXXFLAGS = -std=c++23 -Wall -Wextra

all: main

main: main.o hello.o
	$(CXX) $(CXXFLAGS) main.o hello.o -o main

main.o: main.cpp
	$(CXX) $(CXXFLAGS) -c main.cpp

hello.o: hello.cpp
	$(CXX) $(CXXFLAGS) -c hello.cpp

clean:
	rm -f main main.o hello.o

.PHONY: clean all