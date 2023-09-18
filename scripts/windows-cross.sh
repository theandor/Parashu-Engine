#!/usr/bin/bash

make CXX=x86_64-w64-mingw32-g++ FLAGS="-static-libgcc -static-libstdc++ -static" build
