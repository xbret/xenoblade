Xenoblade[![Build Status]][actions] ![Code Progress] ![Data Progress]
========

[Build Status]: https://github.com/xbret/xenoblade/actions/workflows/build.yml/badge.svg
[actions]: https://github.com/xbret/xenoblade/actions/workflows/build.yml
[Code Progress]: https://img.shields.io/endpoint?label=Code&url=https%3A%2F%2Fprogress.deco.mp%2Fdata%2Fxenoblade%2Fjp%2Fdol%2F%3Fmode%3Dshield%26measure%3Dcode
[Data Progress]: https://img.shields.io/endpoint?label=Data&url=https%3A%2F%2Fprogress.deco.mp%2Fdata%2Fxenoblade%2Fjp%2Fdol%2F%3Fmode%3Dshield%26measure%3Ddata

Decompilation of Xenoblade (JP)



It builds the following DOL:

xenoblade.jp.dol: `sha1: a564033aee46988743d8f5e6fdc50a8c65791160`

> **Note**  
> The ROM this repository builds can be shifted. You are able to add
> and remove code as you see fit, for modding or research purposes.


## Building

### Required Tools
[Python 3.8+](https://www.python.org/downloads/)

### Instructions

1. Clone the repo using `git clone https://github.com/xbret/xenoblade/`

2. Run `configure.py` to automatically download/build any other necessary files for the project.

3. Enter `ninja` (recommended) or `make -j` in a command prompt or terminal.
	- `-j` Allows `make` to use multiple threads, speeding up the process.
	- `ninja` already implicitly uses the max amount of cores available, only use `-j` to *decrease* the thread count.
	- If just `-j` gives errors on your setup, try specifying a set number of threads, e.g. `make -j 4`.

* OPTIONAL STEPS:
	- To generate a linker map (takes a considerable amount of time), run `ninja -m` or  `make MAPGENFLAG=1 -j`.

* See [this video](https://youtu.be/CZXNQagqpkw) for a walkthrough of the steps on Windows (thanks Altafen for making this!).

### Decompilation workflow

- The project is compatible with [objdiff](https://github.com/encounter/objdiff), which is highly recommended for local decompilation testing. Objdiff can be built from source, or the latest stable build obtained from GitHub actions (recommended).

- To obtain the latest stable build:
	1. Navigate to the `Actions` tab of the objdiff repo.
	2. Select the latest `main` workflow.
	3. Scroll to the bottom of the page and download the `stable` release for your platform (Mac, Linux, Windows).
	4. Extract contents of `.zip` to obtain an executable version.

- To set up objdiff for this project:
	1. Run `objdiff.exe`.
	2. Set:
		- Project dir: `/path/to/cloned/xenoblade`.
		- Custom make program: `ninja` or `make`, depending on what was used to build previously.
			- If specifying the name isn't enough, it's likely the program isn't on your `PATH`; try an absolute path instead.
		- (`make` only) Build config: `None`.
		- (`make` only) Select target build dir: `/path/to/cloned/xenoblade/build/xenoblade.jp/asm`.
		- (`make` only) Select base build dir: `/path/to/cloned/xenoblade/build/xenoblade.jp/src`.
	3. Select desired object file to diff:
		- With `ninja`, an explorer viewer is provided after applying the previous settings.
		- With `make`, you must explicitly select the object each time (likely from `xenoblade/build/xenoblade.jp/asm/LIBRARY/OBJECTFILE.o`).
	4. Decomp it!

### Generating Context for decomp.me Scratches

- [decomp.me](https://decomp.me/) is an online decompilation sharing hub, allowing 'scratches' of functions to be generated and collaborated on.
- Stand-alone decompilation packages and tools such as decomp.me require information on the functions and structures of the project in order to parse extracted blocks correctly. The easiest way to do this is to pass the tool just the necessary 'context' for the file, i.e. a set of all the headers used by the file that's being worked on.
- A recursive context processing script is included in the repo ([tools/decompctx.py](https://github.com/xbret/xenoblade/tree/main/tools/decompctx.py)), which generates a `ctx.c` file in the root directory.
	- The contents of this can then be copied and pasted into the 'Context' section of a decomp.me scratch or similar.
- To use, call the generator via the terminal/command line from the root directory (replacing DIRECTORY and FILE as required):
	```python tools/decompctx.py src/DIRECTORY/FILE.cpp```
- Credit to encounter and the [Metroid Prime decomp project](https://github.com/PrimeDecomp/prime) for the script!
