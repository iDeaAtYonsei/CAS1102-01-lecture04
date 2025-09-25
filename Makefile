# TODO: Implement a Makefilw
# Lecture 04, p.60: Makefile의 가독성과 유지보수를 위해 변수를 사용합니다.
# 사용할 C++ 컴파일러를 g++로 지정합니다.
CXX = g++
# 컴파일 옵션을 지정합니다. 강의에서 요구하는 C++23 표준을 사용하고,
# -Wall -Wextra 옵션으로 유용한 경고들을 모두 켭니다.
CXXFLAGS = -std=c++23 -Wall -Wextra

# 최종적으로 만들어질 실행 파일의 이름을 'hello'로 지정합니다.
TARGET = hello

# Lecture 04, p.48: 컴파일 과정은 '컴파일'과 '링크'로 나뉩니다.
# 먼저 각 소스(.cpp)를 오브젝트(.o) 파일로 만들어야 합니다.

# 현재 폴더에 있는 모든 .cpp 파일을 자동으로 찾아냅니다. (main.cpp, hello.cpp)
SOURCES = $(wildcard *.cpp)
# .cpp 파일 목록을 기반으로 .o(오브젝트) 파일 목록을 만듭니다.
# 예: main.cpp -> main.o, hello.cpp -> hello.o
OBJECTS = $(SOURCES:.cpp=.o)

# 'make' 라고만 입력했을 때 실행될 기본 규칙입니다. 최종 목표(TARGET)를 만듭니다.
all: $(TARGET)

# Lecture 04, p.62: 최종 실행 파일(hello)을 '링크'하는 규칙입니다.
# $(OBJECTS)에 포함된 모든 .o 파일들이 준비되어야 이 규칙을 실행할 수 있습니다.
$(TARGET): $(OBJECTS)
	# $@: 규칙의 목표(TARGET, 즉 'hello')를 의미하는 자동 변수입니다.
	# $^: 규칙의 모든 의존성 파일(OBJECTS)을 의미하는 자동 변수입니다.
	$(CXX) $(CXXFLAGS) -o $@ $^

# Lecture 04, p.61: .cpp 파일 하나를 .o 파일 하나로 '컴파일'하는 규칙입니다.
# %.o: %.cpp 는 '.cpp'파일로부터 '.o'파일을 만드는 패턴을 정의합니다.
%.o: %.cpp
	# -c 옵션은 '링크는 하지 말고 컴파일만 하라'는 의미입니다. (p.50 참고)
	# $<: 첫 번째 의존성 파일(.cpp 파일)을 의미하는 자동 변수입니다.
	# $@: 규칙의 목표(.o 파일)를 의미하는 자동 변수입니다.
	$(CXX) $(CXXFLAGS) -c $< -o $@

# Lecture 04, p.58: 'make clean' 명령어를 위한 규칙입니다.
clean:
	# rm -f: 컴파일 과정에서 생긴 파일들을 모두 삭제하여 깨끗하게 정리합니다.
	rm -f $(TARGET) $(OBJECTS)

# .PHONY: all 과 clean 은 실제 파일 이름이 아니므로, 가상 타겟으로 지정하여
# 혹시 모를 충돌을 방지합니다.
.PHONY: all clean
# Requirements:
# Use C++23 standard.
# Compilation should generate object files.
# Link object files to create an executable program.
# Implement a 'clean' rule to remove build artifacts (e.g., .o and executable).