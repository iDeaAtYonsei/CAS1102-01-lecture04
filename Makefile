CXX = g++
CXXFLAGS = -std=c++23 -Wall -Wextra

all: main

main: main.o hello.o
	$(CXX) $(CXXFLAGS) main.o hello.o -o main

main.o: main.cpp main.h
	$(CXX) $(CXXFLAGS) -c main.cpp

hello.o: hello.cpp main.h
	$(CXX) $(CXXFLAGS) -c hello.cpp

clean:
	rm -f main *.o

.PHONY: all clean

