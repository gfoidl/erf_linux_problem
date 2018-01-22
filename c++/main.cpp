#include <iostream>
#include <chrono>
#include <cmath>
#include "special_functions.h"

using namespace std;

int main()
{
    for (int k = 0; k < 3; ++k)
    {
        const int N = 1000000000;
        double x    = ((double)rand() / (RAND_MAX));
        double r1   = 0, r2 = 0, r3 = 0;

        auto start = chrono::high_resolution_clock::now();
        for (int i = 0; i < N; ++i)
            r1 += erf(x);
        auto end  = chrono::high_resolution_clock::now();
        auto time = chrono::duration_cast<chrono::microseconds>(end - start);
        cout << "erf : " << time.count() * 1e-6 << endl;

        start = chrono::high_resolution_clock::now();
        for (int i = 0; i < N; ++i)
            r2 += erf1(x);
        end  = chrono::high_resolution_clock::now();
        time = chrono::duration_cast<chrono::microseconds>(end - start);
        cout << "erf1: " << time.count() * 1e-6 << endl;

        start = chrono::high_resolution_clock::now();
        for (int i = 0; i < N; ++i)
            r3 += erf2(x);
        end = chrono::high_resolution_clock::now();
        time = chrono::duration_cast<chrono::microseconds>(end - start);
        cout << "erf2: " << time.count() * 1e-6 << endl;

        cout << endl;
        cout << "x:  " << x << endl;
        cout << "r1: " << r1 << endl;
        cout << "r2: " << r2 << endl;
        cout << "r3: " << r3 << endl;
        cout << endl;
    }
}