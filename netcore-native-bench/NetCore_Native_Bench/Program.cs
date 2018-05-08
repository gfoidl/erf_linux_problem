using System;
using System.Runtime.InteropServices;
using BenchmarkDotNet.Attributes;
using BenchmarkDotNet.Running;

namespace NetCore_Native_Bench
{
    class Program
    {
        static void Main()
        {
            var bench = new Bench();
            bench.GlobalSetup();
            try
            {
                bench.Clang();
                double[] arr1 = bench.GetResult();

                bench.Gcc();
                double[] arr2 = bench.GetResult();

                bench.Fortran();
                double[] arr3 = bench.GetResult();

                Console.WriteLine(Equal(arr1, arr2));
                Console.WriteLine(Equal(arr1, arr3));
            }
            catch (Exception ex)
            {
                Console.ForegroundColor = ConsoleColor.Red;
                Console.Error.WriteLine(ex.Message);
                Console.ResetColor();
            }
            finally
            {
                bench.GlobalCleanup();
            }
#if !DEBUG
            BenchmarkRunner.Run<Bench>();
#endif
        }
        //---------------------------------------------------------------------
        private static bool Equal(double[] arr1, double[] arr2)
        {
            for (int i = 0; i < arr1.Length; ++i)
                if (Math.Abs(arr1[i] - arr2[i]) > 1e-6) return false;

            return true;
        }
    }
    //-------------------------------------------------------------------------
    public unsafe class Bench
    {
        private double* _values;
        private double* _result;
        //---------------------------------------------------------------------
        //[Params(10_000, 100_000)]
        public int N { get; set; } = 10_000;
        //---------------------------------------------------------------------
        public double[] GetResult() => new Span<double>(_result, this.N).ToArray();
        //---------------------------------------------------------------------
        [GlobalSetup]
        public void GlobalSetup()
        {
            double* values = (double*)Marshal.AllocHGlobal(sizeof(double) * this.N);
            _values        = values;
            _result        = (double*)Marshal.AllocHGlobal(sizeof(double) * this.N);

            var rnd = new Random();
            for (int i = 0; i < this.N; ++i)
                values[i] = rnd.NextDouble();
        }
        //---------------------------------------------------------------------
        [GlobalCleanup]
        public void GlobalCleanup()
        {
            Marshal.FreeHGlobal((IntPtr)_values);
            Marshal.FreeHGlobal((IntPtr)_result);
        }
        //---------------------------------------------------------------------
        [Benchmark(Baseline = true)]
        public void Clang() => NativeClang.gaussian_error_function_vector(_values, _result, this.N);
        //---------------------------------------------------------------------
        [Benchmark]
        public void Gcc() => NativeGcc.gaussian_error_function_vector(_values, _result, this.N);
        //---------------------------------------------------------------------
        [Benchmark]
        public void Fortran() => NativeFortran.gaussian_error_function_vector(_values, _result, this.N);
        //---------------------------------------------------------------------
        internal static class NativeClang
        {
            [DllImport("Clang")]
            public static extern void gaussian_error_function_vector(double* x, double* y, int n);
        }
        //---------------------------------------------------------------------
        internal static class NativeGcc
        {
            [DllImport("Gcc")]
            public static extern void gaussian_error_function_vector(double* x, double* y, int n);
        }
        //---------------------------------------------------------------------
        internal static class NativeFortran
        {
            [DllImport("Fortran")]
            public static extern void gaussian_error_function_vector(double* x, double* y, int n);
        }
    }
}
