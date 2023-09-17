# Both
STD := c++17
SOURCES := $(shell find . -name "*.cpp")

# Linux Flags
L_CXX := g++
L_OUT := parashu
L_FLAGS :=

# Windows Flags
W_CXX := x86_64-w64-mingw32-g++
W_OUT := parashu.exe
W_FLAGS := -static-libgcc -static-libstdc++ -static

windows-cross:
	make build
	${W_CXX} -o parashu-engine ${SOURCES} -o build/${W_OUT} ${W_FLAGS} -std=${STD}

linux-native:
	make build
	${L_CXX} -o parashu-engine ${SOURCES} -o build/${L_OUT} ${L_FLAGS} -std=${STD}

build: src/
	mkdir build
clean: build/
	rm -r build
