STD := c++17
SOURCES := $(shell find . -name "*.cpp")
OUT := parashu
FLAGS :=
CXX := g++

build: src/
	mkdir build
	${CXX} -o parashu-engine ${SOURCES} -o build/${OUT} ${FLAGS} -std=${STD}
clean: build/
	rm -r build
