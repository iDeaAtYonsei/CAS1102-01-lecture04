
CXX = g++


CXXFLAGS = -std=c++23 -Wall -Wextra -g


TARGET = hello


SOURCES = main.cpp hello.cpp


OBJECTS = $(SOURCES:.cpp=.o)


all: $(TARGET)


$(TARGET): $(OBJECTS)
   $(CXX) $(OBJECTS) -o $(TARGET)


%.o: %.cpp
   $(CXX) $(CXXFLAGS) -c $< -o $@


clean:
   rm -f $(TARGET) $(OBJECTS)

.PHONY: all clean
