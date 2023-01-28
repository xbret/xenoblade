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

extern HeapListEntry* fn_804339B8(void*, HeapListEntry*);
extern void fn_80433AA8(void*, HeapListEntry*);
extern void* mm_malloc(size_t size, int param);

extern u32 memoryAllocHeapArray[80][28];
extern double double_8066C9B8;


void operator delete(void*);
void operator delete[](void*);

/* Allocates the needed amount of memory for the class through mm_malloc, and returns it
Not sure what the second param is
The second parameter is often the result from fn_804375B4. They might've used some
type of macro for those cases? */
inline void* operator new(size_t size, int param){
    return mm_malloc(size,param);
}

#endif