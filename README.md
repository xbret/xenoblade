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
* [devkitPro](https://devkitpro.org/wiki/Getting_Started)
* gcc

### Instructions

* WINDOWS ONLY STEP:
	- Launch msys2(Provided by devkitPro) and run the command `pacman -S gcc`.
	
1. Download GC_WII_COMPILERS.zip from (https://cdn.discordapp.com/attachments/727918646525165659/917185027656286218/GC_WII_COMPILERS.zip) and extract the contents to tools/.
2. Run `make -j` in a command prompt or terminal.
	- -j Allows make to use multiple threads, speeding up the process.

