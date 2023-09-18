STD := -std=c++17
SOURCES := $(wildcard src/*.cpp)
OUT := parashu
FLAGS := -Wall -Werror
CXX := g++

.PHONY: build clean

build: src/
	mkdir build
	${CXX} -o parashu-engine ${SOURCES} -o build/${OUT} ${FLAGS} ${STD}
clean: build/
	rm -r build
