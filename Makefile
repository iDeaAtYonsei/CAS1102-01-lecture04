CXX = g++
CXXFLAGS = -std=c++23 -Wall -Wextra
LDFLAGS = -std=c++23
# Target executable name
TARGET = hello
# Source files
SRCS = main.cpp hello.cpp
# Object files
OBJS = $(SRCS:.cpp=.o)
# Default rule when 'make' is executed
all: $(TARGET)
# Create final executable
$(TARGET): $(OBJS)
	$(CXX) $(LDFLAGS) $^ -o $@
# Compile each source file to object file
%.o: %.cpp
	$(CXX) $(CXXFLAGS) -c $< -o $@
# Clean build artifacts
clean:
	rm -f $(TARGET) $(OBJS)
.PHONY: all clean