# QuickJS Next Generation

⚡ The small quick embeddable JavaScript runtime \
🔀 Friendly & cooperative fork of [bellard/quickjs](https://github.com/bellard/quickjs)

<table align=center><td>

```c
// TODO: Add example code
```

<tr><td>

```js
// TODO: Add example code
import {} from "std";
import {} from "os";

console.log(`Hello ${}`);
```

</table>

<p align=center>
  <a href="https://bellard.org/quickjs/">QuickJS website</a>
  | <a href="https://example.org/quickjs-ng/">QuickJS Next Generation website</a>
</p>

🤏 Small project \
⏱ Super quick startup time \
🏃‍♂️ Speedy enough for your needs \
🎨 Super-duper easy to embed in your own program \
🔗 Has [bindings for many other programming languages](#TODO)

👀 You might be looking for [language-specific bindings and packages]() such as those for [Rust](), [C++](), [Python](), [Go](), [WebAssembly](), [JavaScript](), or [others]().

## Installation

The _simplest_ way to get your hands on QuickJS Next Generation is to use the [precompiled binaries and library artifacts]() from [the GitHub releases page](). The _easiest_ way is to use a pre-packaged release via a C package manager/system like [CPM.cmake](), [Conan](), or [Vcpkg]().

```cmake
# TODO: Add CMake example
```

TODO: Reformat this prose into a `<dl>`

You can also install & add this project using your other favorite C package management strategy. The public headers are in `include/` and there's a `CMakeLists.txt` ready for use as a subproject. The project produces a `qjs`/`qjs.exe` and `qjsc`/`qjsc.exe` binary artifact along with a `libqjs.a`/`qjs.lib` static library artifact.

## Usage

## Development

In October 2023 [@bnoordhuis] and [@saghul] decided to fork the [QuickJS] project with
the aim of reigniting it. They reached out to the original authors ([@bellard] and [@chqrlie])
about their intentions.

As of December 2023 the initial goal was somewhat accomplished. [@bellard] resumed working on
the project and both parties have been pulling patches from each other since.

As of early 2024 both projects agree the proper path forward involves merging both projects
and combining the efforts. While that may take a while, since both projects diverged in certain
areas, there is willingness to go in this direction from both sides.

[QuickJS]: https://bellard.org/quickjs
[@bellard]: https://github.com/bellard
[@bnoordhuis]: https://github.com/bnoordhuis
[@chqrlie]: https://github.com/chqrlie
[@saghul]: https://github.com/saghul
