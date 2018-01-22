#!/bin/bash

g++ -std=c++11 -O3 -o erf_test special_functions.cpp main.cpp
clang++ -std=c++11 -O3 -o erf_test_clang_O3 special_functions.cpp main.cpp
clang++ -std=c++11 -Ofast -o erf_test_clang_Ofast special_functions.cpp main.cpp