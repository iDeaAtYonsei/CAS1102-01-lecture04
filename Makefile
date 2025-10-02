# Implement a Makefilw

#irements:
#C++23 standard.
#ilation should generate object files.
# Link object files to create an executable program.
<<<<<<< HEAD
# Implement a 'clean' rule to remove build artifacts (e.g., .o and executable)

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
=======
# Implement a 'clean' rule to remove build artifacts (e.g., .o and executable).
main: main.o
  g++ -std=c++23 -Wall -Wextra main.o -o main
main.o: main.cpp
  g++ -std=c++23 -Wall -Wextra -c main.cpp
hello.0: hello.cpp
  g++ -std=c++23 -Wall -Wextra -c hello.cpp
clean: 
  rm -f main main.o
.phony: clean
>>>>>>> 28855a06a4d4d1e52a1a7473b598286d47930565
