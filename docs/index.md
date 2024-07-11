# QuickJS Javascript Engine

## News

- 2024-01-13:
  - New release ([Changelog](https://bellard.org/quickjs/Changelog))
- 2023-12-09:
  - New release ([Changelog](https://bellard.org/quickjs/Changelog))

## Introduction

QuickJS is a small and embeddable Javascript engine. It supports the [ES2023](https://tc39.github.io/ecma262/2023) specification including modules, asynchronous generators, proxies and BigInt.

It optionally supports mathematical extensions such as big decimal floating point numbers (BigDecimal), big binary floating point numbers (BigFloat) and operator overloading.

Main Features:

- Small and easily embeddable: just a few C files, no external dependency, 210 KiB of x86 code for a simple `hello world` program.
- Fast interpreter with very low startup time: runs the 76000 tests of the [ECMAScript Test Suite](https://github.com/tc39/test262) in less than 2 minutes on a single core of a desktop PC. The complete life cycle of a runtime instance completes in less than 300 microseconds.
- Almost complete [ES2023](https://tc39.github.io/ecma262/2023) support including modules, asynchronous generators and full Annex B support (legacy web compatibility).
- Passes nearly 100% of the ECMAScript Test Suite tests when selecting the ES2023 features. A summary is available at [Test262 Report](https://test262.fyi/).
- Can compile Javascript sources to executables with no external dependency.
- Garbage collection using reference counting (to reduce memory usage and have deterministic behavior) with cycle removal.
- Mathematical extensions: BigDecimal, BigFloat, operator overloading, bigint mode, math mode.
- Command line interpreter with contextual colorization implemented in Javascript.
- Small built-in standard library with C library wrappers.

## [Benchmark](https://bellard.org/quickjs/bench.html)

## Online Demo

An online demonstration of the QuickJS engine with its mathematical extensions is available at [numcalc.com](http://numcalc.com/). It was compiled from C to WASM/asm.js with Emscripten.

`qjs` and `qjscalc` can be run in [JSLinux](https://bellard.org/jslinux/vm.html?url=alpine-x86.cfg).

## Documentation

QuickJS documentation: [HTML version](https://bellard.org/quickjs/quickjs.html), [PDF version](https://bellard.org/quickjs/quickjs.pdf).

Specification of the JS Bignum Extensions: [HTML version](https://bellard.org/quickjs/jsbignum.html), [PDF version](https://bellard.org/quickjs/jsbignum.pdf).

## Download

- QuickJS source code: [quickjs-2024-01-13.tar.xz](https://bellard.org/quickjs/quickjs-2024-01-13.tar.xz)
- QuickJS extras (contain the unicode files needed to rebuild the unicode tables and the bench-v8 benchmark): [quickjs-extras-2024-01-13.tar.xz](https://bellard.org/quickjs/quickjs-extras-2024-01-13.tar.xz)
- Official [GitHub mirror](https://github.com/bellard/quickjs).
- Binary releases are available in [jsvu](https://github.com/GoogleChromeLabs/jsvu), [esvu](https://github.com/devsnek/esvu) and [here](https://bellard.org/quickjs/binary_releases).
- [Cosmopolitan](https://github.com/jart/cosmopolitan) binaries running on Linux, Mac, Windows, FreeBSD, OpenBSD, NetBSD for both the ARM64 and x86_64 architectures: [quickjs-cosmo-2024-01-13.zip](https://bellard.org/quickjs/binary_releases/quickjs-cosmo-2024-01-13.zip).
- Typescript compiler compiled with QuickJS: [quickjs-typescript-4.0.0-linux-x86.tar.xz](https://bellard.org/quickjs/quickjs-typescript-4.0.0-linux-x86.tar.xz)
- Babel compiler compiled with QuickJS: [quickjs-babel-linux-x86.tar.xz](https://bellard.org/quickjs/quickjs-babel-linux-x86.tar.xz)

## Sub-projects

QuickJS embeds the following C libraries which can be used in other projects:

- **libregexp**: small and fast regexp library fully compliant with the Javascript ES2023 specification.
- **libunicode**: small unicode library supporting case conversion, unicode normalization, unicode script queries, unicode general category queries and all unicode binary properties.
- **libbf**: small library implementing arbitrary precision IEEE 754 floating point operations and transcendental functions with exact rounding. It is maintained as a [separate project](https://bellard.org/libbf).

## Links

- [QuickJS Development](https://www.freelists.org/list/quickjs-devel) mailing list
- [Small Javascript programs](https://bellard.org/quickjs/pi.html) to compute one billion digits of pi.

## Licensing

QuickJS is released under the [MIT license](https://opensource.org/licenses/MIT).

Unless otherwise specified, the QuickJS sources are copyright Fabrice Bellard and Charlie Gordon.

---

Fabrice Bellard - <https://bellard.org/>
