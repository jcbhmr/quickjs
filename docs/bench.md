# QuickJS Benchmark

## Results

Here are some results on the [bench-v8 version 7 benchmark](https://github.com/mozilla/arewefastyet/tree/master/benchmarks/v8-v7).

| Engine | QuickJS | DukTape | XS | MuJS | JerryScript | Hermes | V8 --jitless | V8 (JIT) |
| Executable size | 620K | 331K | 1.2M | 244K | 211K | 27M | 28M | 28M |
| Richards | 777 | 218 | 444 | 187 | 238 | 818 | 1036 | 29745 |
| DeltaBlue | 761 | 266 | 553 | 245 | 209 | 651 | 1143 | 65173 |
| Crypto | 1061 | 202 | 408 | 113 | 255 | 1090 | 884 | 34215 |
| RayTrace | 915 | 484 | 1156 | 392 | 286 | 937 | 2989 | 69781 |
| EarleyBoyer | 1417 | 620 | 1175 | 315 | - | 1728 | 4583 | 48254 |
| RegExp | 251 | 156 | - | 155 | - | 335 | 2142 | 7637 |
| Splay | 1641 | 1389 | 1048 | 36.7 | - | 1602 | 4303 | 26150 |
| NavierStokes | 1856 | 1003 | 836 | 109 | 394 | 1522 | 1377 | 36766 |
| **Total score\
(w/o RegExp)** | 1138 | 468 | 738 | 159 | - | 1127 | 1886 | 41576 |
| **Total score** | 942 | 408 | - | 158 | - | 968 | 1916 | 33640 |

(Higher scores are better).

## Test details

All tested JS engines are interpreters and may run with limited resources. The performance of the V8 engine is also given as a reference for a high performance Javascript engine using just-in-time compilation and optimized for this benchmark.

The bench-v8 source code is provided in the QuickJS tests archive (`tests/bench-v8` directory).

The programs were compiled with gcc 4.9.2 on a Fedora 21. They were run on a Core i5 4570 CPU at 3.2 GHz.

The executable size is measured by summing the size of all the resources necessary to run the Engine with the exception of the system C library. For all engines except V8 it consists in a single executable file.

- [QuickJS](https://bellard.org/quickjs): version 2019-07-09, qjs executable, 64 bits, compiled with -O2.
- [DukTape](https://duktape.org/): version 2.3.0, duk executable, 64 bits, compiled with -O2.
- [XS](https://github.com/Moddable-OpenSource/moddable): version 8.8.0, xst executable, 64 bits, compiled with -O3. The engine cannot correctly run the RegExp test, so it was disabled.
- [MuJS](https://mujs.com/): version 1.0.6, mujs executable, 64 bits, compiled with -O2. JS_STACKSIZE and JS_ENVLIMIT were increased to 32768 to run EarleyBoyer. REG_MAXSUB was increased to 12 to run RegExp.
- [JerryScript](http://jerryscript.net/): git version 2b8c4286, jerry executable, 64 bits. The engine could not run EarleyBoyer, RegExp and Splay.
- [Hermes](https://hermesengine.dev/): version 0.1.0, 64 bit Linux binary downloaded from [here](https://github.com/facebook/hermes/releases). The benchmark was run with the -O option (=enable expensive optimizations).
- [V8](https://v8.dev/): version 7.7.289, Linux 64 bit executable downloaded from [here](https://storage.googleapis.com/chromium-v8/official/canary/v8-linux64-rel-7.7.289.zip).

Other Javascript engines can be added on demand provided they can run the benchmark.

[[back]](https://bellard.org/quickjs)
