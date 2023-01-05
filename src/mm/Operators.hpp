#ifndef _MM_OPERATORS_HPP
#define _MM_OPERATORS_HPP

#include "types.h"

struct HeapListEntry {
    HeapListEntry* prev;
    HeapListEntry* next;
    u32 unk8;
    u32 size; //0xC
    u16 unk10;
};

extern HeapListEntry* func_804339B8(void*, HeapListEntry*);
extern void func_80433AA8(void*, HeapListEntry*);

void operator delete(void*);
void operator delete[](void*);

extern u32 memoryAllocHeapArray[80][28];
extern f64 double_8066C9B8;

#endif