# TODO: Implement a Makefilw
CXX = g++
CXXFLAGS = -std=c++23 -Wall

SRC = main.cpp hello.cpp
OBJ = $(SRC:.cpp=.o)

TARGET = hello

all: $(TARGET)

$(TARGET): $(OBJ)
	$(CXX) $(OBJ) -o $(TARGET)

%.o: %.cpp
	$(CXX) $(CXXFLAGS) -c $< -o $@


clean:
	rm -f $(OBJ) $(TARGET)

# Requirements:
# Use C++23 standard.
# Compilation should generate object files.
# Link object files to create an executable program.
# Implement a 'clean' rule to remove build artifacts (e.g., .o and executable).
