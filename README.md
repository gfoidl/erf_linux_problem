# erf (Error function) Problem on Linux

Problem with [erf](http://mathworld.wolfram.com/Erf.html) on Linux

It is strange that the variant [erf1](c++/special_functions.cpp) is a lot of slower than [erf2](c++/special_functions.cpp).

It is strange all the way -- even (or especially :wink:) on Windows. Here the C++ standardlib implementation is slowest. On Linux this is the fastest.

On Windows _erf1_ and _erf2_ are similar, performance wise. 
On Linux _erf1_ is a disaster. I don't know why.

[erf1](fortran/erf_test.f95) compiled with Fortran (gfortran) yields super speeds.
