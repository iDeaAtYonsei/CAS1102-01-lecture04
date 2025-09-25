# TODO: Implement a Makefilw

# Requirements:
# Use C++23 standard.
# Compilation should generate object files.
# Link object files to create an executable program.
# Implement a 'clean' rule to remove build artifacts (e.g., .o and executable).
CXX = g++
CXXFLAGS = -std=c++23 -Wall -Wextra -pedantic
OBJS = main.o hello.o
TARGET = hello

all: $(TARGET)

$(TARGET): $(OBJS)
	$(CXX) $(CXXFLAGS) -o $@ $(OBJS)

main.o: main.cpp main.h
	$(CXX) $(CXXFLAGS) -c main.cpp

hello.o: hello.cpp main.h
	$(CXX) $(CXXFLAGS) -c hello.cpp

clean:
	rm -f $(OBJS) $(TARGET)
