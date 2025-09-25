# TODO: Implement a Makefilw

# Requirements:
# Use C++23 standard.
# Compilation should generate object files.
# Link object files to create an executable program.
# Implement a 'clean' rule to remove build artifacts (e.g., .o and executable).

# Makefile — WSL/Ubuntu & Windows(MSYS2/MinGW) 겸용 / C++23

# === 경로 설정 ===
SRCDIR   := .
INCDIR   := .
BUILDDIR := build

# === OS 감지: 리눅스(WSL) vs MinGW/MSYS ===
UNAME_S := $(shell uname -s)
ifeq ($(findstring MINGW,$(UNAME_S)),MINGW)
  EXE := .exe
else ifeq ($(findstring MSYS,$(UNAME_S)),MSYS)
  EXE := .exe
else
  EXE :=
endif

TARGET := app$(EXE)

# === 도구/옵션 ===
CXX      := g++
CXXFLAGS := -std=c++23 -Wall -Wextra -Wpedantic -O2 -I$(INCDIR) -MMD -MP
LDFLAGS  :=
LDLIBS   :=

# === 소스/오브젝트 ===
# 네가 올려둔 파일 이름에 맞춤: main.cpp, hello.cpp, main.h
SOURCES  := $(SRCDIR)/main.cpp $(SRCDIR)/hello.cpp
OBJECTS  := $(patsubst $(SRCDIR)/%.cpp,$(BUILDDIR)/%.o,$(SOURCES))
DEPS     := $(OBJECTS:.o=.d)

# === 기본 타겟 ===
.PHONY: all
all: $(TARGET)

# === 링크 ===
$(TARGET): $(OBJECTS)
	$(CXX) $(OBJECTS) -o $@ $(LDFLAGS) $(LDLIBS)

# === 컴파일 ===
$(BUILDDIR)/%.o: $(SRCDIR)/%.cpp | $(BUILDDIR)
	$(CXX) $(CXXFLAGS) -c $< -o $@

# === 빌드 디렉토리 ===
$(BUILDDIR):
	mkdir -p $(BUILDDIR)

# === 실행 편의 ===
.PHONY: run
run: $(TARGET)
	./$(TARGET)

# === 정리 ===
.PHONY: clean
clean:
	- rm -rf $(BUILDDIR) $(TARGET)

# === 헤더 의존성 ===
-include $(DEPS)

