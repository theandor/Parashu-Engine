#!/usr/bin/bash

# Goals: Compiles the makefile for windows, and aquires dependecies
# Assumptions: Using mingw32-g++ for x64, 
# Depends: Downloads from git, and links


make CXX=x86_64-w64-mingw32-g++ FLAGS="-static-libgcc -static-libstdc++ -static" build
