# Implement a Makefilw

#irements:
#C++23 standard.
#ilation should generate object files.
# Link object files to create an executable program.
# Implement a 'clean' rule to remove build artifacts (e.g., .o and executable).
CXX = g++
CXXFLAGS = -std=c++23 -Wall -Wextra

all: hello

hello: main.o hello.o
	$(CXX) $(CXXFLAGS) main.o hello.o -o hello
main.o: main.cpp
	$(CXX) $(CXXFLAGS) -c main.cpp
hello.o: hello.cpp
	$(CXX) $(CXXFLAGS) -c hello.cpp

clean:
	rm -f hello main.o hello.o
.phony:	clean all
	
