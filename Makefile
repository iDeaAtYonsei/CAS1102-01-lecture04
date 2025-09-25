CXX = g++
CXXFLAGS = -std=c++23 -Wall -Wextra
TARGET = hello
SRCS = main.cpp hello.cpp
OBJS = $(SRCS:.cpp=.o)

all: $(TARGET)

$(TARGET): $(OBJS)
	$(CXX) $(CXXFLAGS) $^ -o $@

%.o: %.cpp
	$(CXX) $(CXXFLAGS) -c $< -o $@

clean:
	rm -f $(TARGET) $(OBJS)

.PHONY: all clean# TODO: Implement a Makefilw

# Requirements:
# Use C++23 standard.
# Compilation should generate object files.
# Link object files to create an executable program.
# Implement a 'clean' rule to remove build artifacts (e.g., .o and executable).
