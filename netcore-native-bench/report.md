``` ini

BenchmarkDotNet=v0.10.14, OS=ubuntu 16.04
Intel Core i7-7700HQ CPU 2.80GHz (Kaby Lake), 1 CPU, 4 logical and 4 physical cores
.NET Core SDK=2.2.100-preview1-008636
  [Host]     : .NET Core 2.1.0-preview3-26411-06 (CoreCLR 4.6.26411.07, CoreFX 4.6.26411.06), 64bit RyuJIT
  DefaultJob : .NET Core 2.1.0-preview3-26411-06 (CoreCLR 4.6.26411.07, CoreFX 4.6.26411.06), 64bit RyuJIT


```
|  Method |     Mean |     Error |    StdDev | Scaled | ScaledSD |
|-------- |---------:|----------:|----------:|-------:|---------:|
|   Clang | 65.97 us | 1.0149 us | 0.8996 us |   1.00 |     0.00 |
|     Gcc | 68.96 us | 1.3705 us | 2.7052 us |   1.05 |     0.04 |
| Fortran | 66.36 us | 0.4116 us | 0.3648 us |   1.01 |     0.01 |
