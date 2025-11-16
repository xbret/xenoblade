
# Contribution Guide

This is guide to help you get started with how to contribute on this project and other similar projects to this one.

## Style

These guidelines mainly apply to the code for the game itself and Criware. For the SDK and NW4R, I would recommend following along with the style used for each one.

Note that the project has a clang format file which can format the code properly, so for a more concrete list of some of the guidelines, you can check the file.

### Comments
 - Single line: ``//mogu mogu``
 - Multiline:
	 ```
	 /* Butterflies shining
	in the moonlight, shimmering
	 Then disappearing */
	 ```

### Brackets
Generally, brackets should be like this:
```
if(something){
	//something
}else{
	//something else
}
```

For one line statements, this is acceptable:
```
if(isTrue) print("True");
else print("False");
```

### Variable names
Variable names should be written with camel case. In certain cases, some Hungarian notation type prefixes are used:

Member functions should be prefixed with m:
```
class Banana {
    bool mIsRipe;
}
```

Static variables/members should be prefixed with s:
```
static int sCount;

class Banana {
    static Banana* sInstance;
}
```

Using the p prefix for pointers isn't necessary, but if you really want, you can:
```
void something(void* pBleh){
    void* pAnother = pBleh;
}
```

In most cases, the type shouldn't be included as in Hungarian notation, but it's fine for static strings:
```
static const char* scString = ":3";
```

### Struct/Class Members
If adding offsets for members, it should look like this:
```
struct Struct {
    u8 thing1; //0x0
    u32 thing2; //0x4
    u16 thing3; //0x8
}
```

### Other
Header guards/#pragma once: header guards for Metrowerks and Wii SDK code, ``#pragma once`` otherwise

### Formatting

- 4 spaces for tabs
- 140 characters maximum per line

## Decompilation process
Here are the general steps you must go through to decompile a single file:

The first steps is to choose an assembly file that you want to decompile. If this is your first time decompiling, I would recommend choosing something that looks simple and manageable to you. For example, let's look at math_double.s, which is in the MSL library.

The file only has the following function:
```
.fn sqrtf, global

/* 802C7234 002907F4 94 21 FF F0 */ stwu r1, -0x10(r1)

/* 802C7238 002907F8 7C 08 02 A6 */ mflr r0

/* 802C723C 002907FC 90 01 00 14 */ stw r0, 0x14(r1)

/* 802C7240 00290800 48 00 42 29 */ bl sqrt

/* 802C7244 00290804 80 01 00 14 */ lwz r0, 0x14(r1)

/* 802C7248 00290808 FC 20 08 18 */ frsp f1, f1

/* 802C724C 0029080C 7C 08 03 A6 */ mtlr r0

/* 802C7250 00290810 38 21 00 10 */ addi r1, r1, 0x10

/* 802C7254 00290814 4E 80 00 20 */ blr

.endfn sqrtf
```

This function may look a bit complicated at first, but it can be simplified to this code:

```
float sqrtf(float n){
	return sqrt(n);
}
```

You might be wondering how a parameter gets passed to sqrtf here. There is no register explicitly set here, so at first glance it doesn't seem like this function takes any parameters. However, in this case, because it directly uses the first and only parameter of the function, which is already loaded into the register `f1` (float/double parameter), the function can just call sqrt directly.

The parts at the start and end (mflr, mtlr, etc...) make up the prologue/epilogue of the function, ensuring that the function has enough stack space and that the return address is saved for when the function is done.

`frsp` is used to convert the double value returned by sqrt to a float, and it then is returned.

In this case, this was the only function that needed to be decompiled, so now the asm file can be replaced. The function itself should go in a respective .c file (math_double.c in this case), with an accompanying header. Since this is a general math library obviously intended to have all functions lumped together for easy access, the function should go in the preexisting library header, or create one for all future decompiled functions to be added to. In this case, the .c file might look like this:

```
#include "msl/fdlibm.h"

float sqrtf(float n){
	return sqrt(n);
}
```

And the header file, fdlibm.h, might look like this, including the sqrt function from w_sqrt.c that was already decompiled:

```
#ifndef _FDLIBM_H
#define _FDLIBM_H

#ifdef __cplusplus
extern  "C" {
#endif // ifdef __cplusplus

double sqrt(double);

float sqrtf(float);

#ifdef __cplusplus
};
#endif // ifdef __cplusplus

#endif
```

The extra directives are to ensure the file isn't included multiple times (header guard, or the ifndef and define), and to have the function declarations still work when the file is included in a C++ file (#ifdef __cplusplus).

The final step is to change the matching status value of the file in the "configure.py" file. The entries for each file are located in the large table at the bottom. For example, for this file you can find the entry by just searching for `ansi_files`:

Before:

``Object(NonMatching, "PowerPC_EABI_Support/src/MSL_C/MSL_Common/ansi_files.c")``

After:

``Object(Matching, "PowerPC_EABI_Support/src/MSL_C/MSL_Common/ansi_files.c"),``

Now, you can try building the repository to make sure your new file matches. For a file this simple, as long as you formatted everything correctly, it should easily work. If not, find out what was wrong and keep trying to fix it.
