#!/bin/bash

clang++ -o libClang.so -Ofast -std=c++11 -shared -fPIC special_functions.cpp
