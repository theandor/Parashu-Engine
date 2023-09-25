#!/usr/bin/bash

echo Downloading Dependecies for cross compiling the engine

mkdir windep

# Dependecies Downloading

curl -L https://github.com/libsdl-org/SDL/releases/download/release-2.28.3/SDL2-devel-2.28.3-mingw.tar.gz > windep/SDL2-devel-2.28.3-mingw.tar.gz


# Dependecies Extraction

extraction() { # Extracts contents of tar.gz into folder
    echo "Extracting $1"
    mkdir windep/extracts
    tar -xf $1 -C windep/extracts
}


extraction "windep/SDL2-devel-2.28.3-mingw.tar.gz"

# Dependecies Installation

cd windep/extracts

sudo mv SDL2-2.28.3/x86_64-w64-mingw32/bin/* /usr/x86_64-w64-mingw32/bin/
sudo mv SDL2-2.28.3/x86_64-w64-mingw32/include/* /usr/x86_64-w64-mingw32/include

# Cleanup

rm -rf ../../windep
