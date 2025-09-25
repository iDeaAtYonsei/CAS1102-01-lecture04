# TODO: Implement a Makefilw

# Requirements:
# Use C++23 standard.
# Compilation should generate object files.
# Link object files to create an executable program.
# Implement a 'clean' rule to remove build artifacts (e.g., .o and executable).
#
CXXCXX = g++
CXXFLAGS = -std=c++23 -Wall -Wextra
all: main

main: main.o hello.o
	$(CXX) $(CXXFLAGS) $^ -o hello
%.o: %.cpp
	$(CXX) $(CXXFLAGS) -c $<
clean:
	rm -f main main.o
.phony: clean all
