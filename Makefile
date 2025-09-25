# TODO: Implement a Makefilw

# Requirements:
# Use C++23 standard.
# Compilation should generate object files.
# Link object files to create an executable program.
# Implement a 'clean' rule to remove build artifacts (e.g., .o and executable).

include <iostream>

int main() {
    std::cout << "Hello, CAS1102" << std::endl;
    return 0;
}

# Compiler and flags
CXX := g++
CXXFLAGS := -std=c++23 -Wall -Wextra -O2

# Target executable name
TARGET := hello

# Source files
SRCS := main.cpp
OBJS := $(SRCS:.cpp=.o)

# Default rule
all: $(TARGET)

# Linking
$(TARGET): $(OBJS)
	$(CXX) $(CXXFLAGS) -o $@ $^

# Compilation
%.o: %.cpp
	$(CXX) $(CXXFLAGS) -c $< -o $@

# Clean rule
clean:
	rm -f $(OBJS) $(TARGET)
