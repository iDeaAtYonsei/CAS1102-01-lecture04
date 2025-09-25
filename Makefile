CXX = g++
CXXFLAGS = -std=c++23 -Wall -Wextra -O2
OBJS = main.o hello.o
TARGET = hello

$(TARGET): $(OBJS)
	$(CXX) $(CXXFLAGS) -o $(TARGET) $(OBJS)

main.o: main.cpp
	$(CXX) $(CXXFLAGS) -c main.cpp -o main.o

hello.o: hello.cpp
	$(CXX) $(CXXFLAGS) -c hello.cpp -o hello.o

.PHONY: clean
clean:
	rm -f $(OBJS) $(TARGET)
