#!/bin/bash

g++ -o libGcc.so -Ofast -std=c++11 -shared -fPIC special_functions.cpp
