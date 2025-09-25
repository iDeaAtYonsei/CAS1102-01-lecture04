# Implement a Makefilw

irements:
C++23 standard.
ilation should generate object files.
# Link object files to create an executable program.
# Implement a 'clean' rule to remove build artifacts (e.g., .o and executable).
main: main.o
	g++ -std=c++23 -Wall -Wextra main.o -o main
main.o: main.cpp
	g++ -std=c++23 -Wall -Wextra -c main.cpp
hello.o: hello.cpp
	g++ -std=c++23 -Wall -Wextra -c hello.cpp
clean:
	rm -f main main.o hello.o
.phony: clean


