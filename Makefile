# TODO: Implement a Makefilw

# Requirements:
# Use C++23 standard.
# Compilation should generate object files.
# Link object files to create an executable program.
# Implement a 'clean' rule to remove build artifacts (e.g., .o and executable).

CXX = g++
CXXFLAGS = -std=c++23 -Wall -O2

SRCS = main.cpp hello.cpp
OBJS = $(SRCS:.cpp=.o)

TARGET = my_program

all: $(TARGET)

$(TARGET): $(OBJS)
	$(CXX) $(CXXFLAGS) $(OBJS) -o $(TARGET)

main.o: main.cpp main.h
	$(CXX) $(CXXFLAGS) -c main.cpp -o main.o

hello.o: hello.cpp main.h
	$(CXX) $(CXXFLAGS) -c hello.cpp -o hello.o

clean:
	rm -f $(OBJS) $(TARGET)

.PHONY: all clean
