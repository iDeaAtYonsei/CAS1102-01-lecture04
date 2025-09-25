# TODO: Implement a Makefile

# Requirements:
# Use C++23 standard.
# Compilation should generate object files.
# Link object files to create an executable program.
# Implement a 'clean' rule to remove build artifacts (e.g., .o and executable).

CXX := g++
CXXFLAGS := -std=c++23

TARGET := hello

$(TARGET): main.o hello.o
  g++ $(CXXFLAGS) $^ -o $@

main.o: main.cpp
	g++ $(CXXFLAGS) -c $< -o $@

hello.o: hello.cpp
	g++ $(CXXFLAGS) -c $< -o $@

clean:
	rm -f $(TARGET) *.o

.PHONY: clean all
