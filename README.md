# Xenoblade
WIP Decompilation of Xenoblade (JP)

```diff
- INFORMATION! -

The ROM this repository builds is mostly shiftable, however there still are a few issues.
You should still for the most part be able to add/remove code as you see fit.
```

It builds the following DOL:

xenoblade.jp.dol: `sha1: a564033aee46988743d8f5e6fdc50a8c65791160`

## Building

### Required Tools
* [devkitPro](https://devkitpro.org/wiki/Getting_Started)
* gcc

### Instructions

* WINDOWS ONLY STEP:
	- Launch msys2(Provided by devkitPro) and run the command `pacman -S gcc`.
	
1. Download GC_WII_COMPILERS.zip from (https://cdn.discordapp.com/attachments/727918646525165659/917185027656286218/GC_WII_COMPILERS.zip) and extract the Wii folder to tools/mwcc_compiler/.
2. Run `make -j` in a command prompt or terminal.
	- -j Allows make to use multiple threads, speeding up the process.

* OPTIONAL:
	- To generate a linker map (takes a considerable amount of time), run `make MAPGENFLAG=1 -j`
