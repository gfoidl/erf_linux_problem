#!/bin/bash

gfortran -o libFortran.so -Ofast -shared -fPIC -fno-underscoring special_functions.f95
