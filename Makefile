# TODO: Implement a Makefilw

# Requirements:
# Use C++23 standard.
# Compilation should generate object files.
# Link object files to create an executable program.
# Implement a 'clean' rule to remove build artifacts (e.g., .o and executable).

# Compiler and flags
CXX = g++
CXXFLAGS = -std=c++23 -c

# Executable name
Target = hello

# Source and object files
SRCS = main.cpp hello.cpp
OBJS = $(SRCS:.cpp=.o)

# Default target to build the executable
all: $(TARGET)

# Rule to link object files into the executable
$(TARGET): $(OBJS)
	$(CXX) $(OBJS) -o $(TARGET)

# Pattern rule to compile any .pp file into a .o file
# $< is the first prerequisite (the .cpp file)
# $@ is the target (the .o file)
%.o: %.cpp
	$(CXX) $(CXXFLAGS) $<

# Phony target for cleaning up build artifacts
.PHONY: clean
clean:
	rm -f $(OBJS) $(TARGET)

