using System;
using System.Diagnostics;
using static erf_linux_problem_net.SpecialFunctions;

namespace erf_linux_problem_net
{
	class Program
	{
		static void Main(string[] args)
		{
			// JIT:
			double tmp = Erf1(0.2);
			tmp        = Erf2(0.3);

			var rnd       = new Random();
			var stopwatch = new Stopwatch();

			for (int k = 0; k < 3; ++k)
			{
#if DEBUG
				const int N = 1000000;
#else
				const int N = 1000000000;
#endif
				double x    = rnd.NextDouble();
				double r1   = 0, r2 = 0;

				stopwatch.Restart();
				for (int i = 0; i < N; ++i)
					r1 += Erf1(x);
				stopwatch.Stop();
				Console.WriteLine($"Erf1: {stopwatch.ElapsedMilliseconds * 1e-3}");

				stopwatch.Restart();
				for (int i = 0; i < N; ++i)
					r2 += Erf2(x);
				stopwatch.Stop();
				Console.WriteLine($"Erf2: {stopwatch.ElapsedMilliseconds * 1e-3}");

				Console.WriteLine();
				Console.WriteLine($"x:  {x}");
				Console.WriteLine($"r1: {r1}");
				Console.WriteLine($"r2: {r2}");
				Console.WriteLine();
			}
		}
	}
}