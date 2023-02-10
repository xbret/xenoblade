
# Contribution Guide


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
float sqrt(float n){
	return sqrtf(n);
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

The final step is to change the path of the file in the corresponding library's Makefile, in this case PowerPC_EABI_Support. The Makefiles are located in each library/module's src folder. (for example, the one we need to modify is at src/PowerPC_EABI_Support/Makefile):

Before:
``$(BUILD_DIR)/asm/PowerPC_EABI_Support/MSL_C/MSL_Common/ansi_files.o\``
After:
``$(BUILD_DIR)/src/PowerPC_EABI_Support/MSL_C/MSL_Common/ansi_files.o\``

Now, you can try building the repository to make sure your new file matches. For a file this simple, as long as you formatted everything correctly, it should easily work. If not, find out what was wrong and keep trying to fix it.

## Style
There isn't a specific set of guidelines for the code style for this project, but there are a few general style preferences.

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

### Misc things
For now, headers use header guards, but I am considering switching to using #pragma once. This will be decided in the future.
