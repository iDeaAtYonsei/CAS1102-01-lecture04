# TODO: Implement a Makefilw

# Requirements:
# Use C++23 standard.
# Compilation should generate object files.
# Link object files to create an executable program.
# Implement a 'clean' rule to remove build artifacts (e.g., .o and executable).
main: main.o
		g++ -std=c++23 -Wall -Wextra main.o -o main
hello: hello.o
		g++ -std=c++23 -Wall -Wextra hello.o -o hello
main.o: main.cpp
		g++ -std=c++23 -Wall -Wextra -c main.cpp
hello.o: hello.cpp
		g++ -std=c++23 -Wall -Wextra -c hello.cpp
clean:
		rm -f main main.o
		rm -f hello hello.o
.phony: clean