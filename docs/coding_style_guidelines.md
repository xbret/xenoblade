# Style Guidelines

These guidelines mainly apply to the code for the game itself and Criware. For the SDK and NW4R, I would recommend following along with the style used for each one.

Note that the project has a [format file](../.clang-format), so for a more concrete list of some of the guidelines, you can look at that.

## Table of Contents

1. [Data Types](#data-types)
2. [Comments](#comments)
3. [Indentation](#indentation)
4. [Naming](#naming)
5. [Struct/Class Members](#structclass-members)
6. [Includes/Headers](#includes-headers)
7. [Formatting](#formatting)

## Data Types

As with most similar projects, the code makes use of a set of typedefs for the main data
types (can be found in [this file](../include/types.h)).

These are the main examples of ones to use:

- `unsigned char` -> `u8`
- `signed char` -> `s8`
- `unsigned short` -> `u16`
- `signed short` -> `s16`
- `unsigned long` -> `u32`
- `signed long` -> `s32`
- `unsigned long long` -> `u64`
- `signed long long` -> `s64`

The only exception is for `float` and `double`, where not using `f32` and `f64` is prefered.

It's important to note that `int` and `s32` aren't the same, and shouldn't be used interchangeably.

## Comments

- Single line:
 	```cpp
	//mogu mogu
	```
- Multiline:
	```cpp
	/* Butterflies shining
	in the moonlight, shimmering
	Then disappearing */
	```

## Indentation

Generally, brackets should be like this:
```cpp
if(something){
	//something
}else{
	//something else
}

if(isTrue) print("True");
else print("False");
```

Indentation for switch blocks:
```cpp
switch(itUp){
	case 0:
		//stuff
		break;
	default:
		break;
}
```

For member initialization lists, you should put everything on the same line if short
enough. If there's too many, you can put each on its own line:
```cpp
Apple::Apple() : mFirst() {}

ChoccyMilk::ChoccyMilk() :
mFirst(1),
mSecond(2),
mThird(3) {}
```

Namespaces should have indentation per level + ending comment:
```cpp
namespace One {
	namespace Two {
		//:>
	} // namespace Two
} // namespace One
```

## Naming

In general, this project tries to be faithful to Monolithsoft's original naming scheme, but takes a few liberties when it comes to the Hungarian notation style that was originally used, specifically for variable/parameter names. However, if an official name is known for something like a class or namespace, it ideally should be used.

Variable/parameter/member names should be written with camel case:
```cpp
void findThing(int whatToFind, Finder* finder){
	int trackerVal = finder->mTrackerVal;
}
```

Function names should generally also should use camel case, but in some cases Monolithsoft devs used uppercase ones, in which case that style should be used. 
The main example is for callback functions (like in IWorkEvent, CWorkThread, and CProcess):
```cpp
class Banana : IWorkEvent {
	virtual void OnEvent(){
	}
};
```

Member variables should be prefixed with m:
```cpp
class Banana {
    bool mIsRipe;
};
```

Static variables/members should be prefixed with s:
```cpp
static int sCount;

class Bell {
    static Bell* sInstance;
};
```

Using the p prefix for pointers isn't necessary, but if you really want, you can:
```cpp
void something(void* pBleh){
    void* pAnother = pBleh;
}
```

In most cases, the type shouldn't be included as in Hungarian notation, but it's fine for static constant variables
(such as strings), and if you want, pointers:
```cpp
static const char* scString = ":3";

class Fruit {
	int* mpFruit;
	static int* spValue;

	static void SetValue(int* pValue){
		spValue = pValue;
	}
};
```

## Struct/Class Members

If adding offsets for members, it should look like this:
```cpp
struct Struct {
    u8 thing1; //0x0
    u32 thing2; //0x4
    u16 thing3; //0x8
};
```

Unknown/padding variables should be named like this, but if you want to
name them otherwise, you can. The main important thing is to include the offset:
```cpp
struct UnkStruct {
	u8 unk0;
	u8 unk1;
	u8 pad2[6];
}
```

## Includes/Headers

### Header Guards

All include files should have ``#pragma once`` at the start to prevent multiple inclusions.

Include paths need to be the entire path, not just the filename.

**Note**: for the RVL SDK/NW4R/Criware, header guards should be used.

### Forward Declarations

In header files with classes/struct declarations, there often are several other structs/classes that get referenced through the type of
variables and return types of functions, usually either in the form of pointers of that type, or just the type itself. If a class has
a non pointer variable of that class (meaning it includes a full copy of it within itself), it needs to have an include to the respective
header to let the compiler know what variables the member contains. **However**, pointers don't need this, and instead can work by creating
a "forward declaration", which is a simple declaration of that type. For example, instead of this:

```cpp
#include "Fruit.h" //Contains the Fruit class

class Shop {
	Fruit* fruit;
};
```

This can be done instead:

```cpp
class Fruit; //Forward declaration for Fruit

class Shop {
	Fruit* fruit;
};
```

This works since the compiler doesn't need to know the details of the class, just the type that the variable points to. This is useful as it limits
the amount of headers that not just headers, but regular code files need to include.


## Formatting

Here are the general rules for formatting:

- 4 spaces for tabs
- 120 characters maximum per line
