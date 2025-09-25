CXX = g++
CXXFLAGS = -std=c++23 -Wall -Wextra
TARGET = hello
OBJS = main.o hello.o

all: $(TARGET)

$(TARGET): $(OBJS)
	$(CXX) $(CXXFLAGS) $^ -o $@

%.o: %.cpp
	$(CXX) $(CXXFLAGS) -c $<

clean:
	rm -f $(TARGET) $(OBJS)

.PHONY: all clean
