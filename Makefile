# TODO: Implement a Makefilw

# Requirements:
# Use C++23 standard.
# Compilation should generate object files.
# Link object files to create an executable program.
# Implement a 'clean' rule to remove build artifacts (e.g., .o and executable).
CXX = g++
CXXFLAGS = -std=c++17 -Wall -Wextra


hello: main.o hello.o
	$(CXX) $(CXXFLAGS) -o hello main.o hello.o

main.o: main.cpp
	$(CXX) $(CXXFLAGS) -c main.cpp -o main.o

hello.o: hello.cpp
	$(CXX) $(CXXFLAGS) -c hello.cpp -o hello.o

clean:	
	rm -f main.o hello.o hello

.phony: clean all
