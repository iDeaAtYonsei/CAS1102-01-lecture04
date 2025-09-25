# TODO: Implement a Makefilw

# Requirements:
# Use C++23 standard.
# Compilation should generate object files.
# Link object files to create an executable program.
# Implement a 'clean' rule to remove build artifacts (e.g., .o and executable).
# Makefile for CAS1102 Assignment
CXX      = g++
CXXFLAGS = -std=c++23 -Wall -Wextra
TARGET   = hello
SRCS     = main.cpp hello.cpp
OBJS     = $(SRCS:.cpp=.o)

$(TARGET): $(OBJS)
	$(CXX) $(CXXFLAGS) $(OBJS) -o $@

%.o: %.cpp main.h
	$(CXX) $(CXXFLAGS) -c $< -o $@

.PHONY: all clean
all: $(TARGET)

clean:
	rm -f $(OBJS) $(TARGET)
