# Makefile
# C++23, object file 생성, 링크, clean 규칙 포함

CXX      := g++
CXXFLAGS := -std=c++23 -Wall -Wextra -O2 -MMD -MP
TARGET   := app

SRCS := main.cpp hello.cpp
OBJS := $(SRCS:.cpp=.o)
DEPS := $(OBJS:.o=.d)

.PHONY: all clean

# 기본 빌드
all: $(TARGET)

# 오브젝트 파일들을 링크해서 실행파일 생성
$(TARGET): $(OBJS)
	$(CXX) $(OBJS) -o $@

# 개별 cpp → o 파일 컴파일
%.o: %.cpp main.h
	$(CXX) $(CXXFLAGS) -c $< -o $@

# 빌드 산출물(.o, .d, 실행파일) 제거
clean:
	$(RM) $(OBJS) $(DEPS) $(TARGET)

# 자동 생성된 헤더 의존성 포함
-include $(DEPS)
