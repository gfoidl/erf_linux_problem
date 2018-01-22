#!/bin/bash

g++ -O3 -S -masm=intel erf1.cpp
clang++ -O3 -S -masm=intel erf1.cpp
clang++ -Ofast -S -masm=intel erf1.cpp 
gfortran -O3 -S -masm=intel erf1.f95
