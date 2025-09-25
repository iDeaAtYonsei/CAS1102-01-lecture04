CXX = g++
CXXFLAGS = -std=c++23 -Wall -Wextra

TARGET = hello

OBJS = main.o hello.o

all: $(TARGET)

$(TARGET): $(OBJS)
	$(CXX) $(CXXFLAGS) $(OBJS) -o $(TARGET)

main.o: main.cpp
	$(CXX) $(CXXFLAGS) -c main.cpp

hello.o: hello.cpp
	$(CXX) $(CXXFLAGS) -c hello.cpp

clean:
	rm -f $(OBJS) $(TARGET)
