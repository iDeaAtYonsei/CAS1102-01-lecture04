# TODO: Implement a Makefilw

# Requirements:
# Use C++23 standard.
# Compilation should generate object files.
# Link object files to create an executable program.
# Implement a 'clean' rule to remove build artifacts (e.g., .o and executable).

all: main

main: main.o 
	g++ -c -std=c++23 -Wall -Wextra hello.cpp -o hello.o
	g++ -std=c++23 -Wall -Wextra main.o -o main

main.o: main.cpp 
	g++ -std=c++23 -Wall -Wextra -c main.cpp

clean: 
	del /f main.exe main.o hello.o
.phony: clean  all