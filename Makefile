# TODO: Implement a Makefilw
CXX = g++
CXXFLAGS = -std=c++23
SRCS = main.cpp hello.cpp
OBJS = $(SRCS:.cpp=.o)
TARGET = hello
all: $(TARGET)
$(TARGET): $(OBJS)
$(CXX) $(CXXFLAGS) $^ -o $@
%.o: %.cpp
$(CXX) $(CXXFLAGS) -c $< -o $@


# Requirements:
# Use C++23 standard.
# Compilation should generate object files.
# Link object files to create an executable program.
# Implement a 'clean' rule to remove build artifacts (e.g., .o and executable).
