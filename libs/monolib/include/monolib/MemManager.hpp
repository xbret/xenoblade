#pragma once

#include "types.h"
#include <string.h>

namespace mtl{

struct MemBlock {
    MemBlock* prev;
    MemBlock* next;
    void* data;
    u32 size;
    u16 heapIndex;
    u8 filler[14]; //0x12

    //MemBlock(){}

    static void* dummyDataPtr(){
    return (void*)0xA7FB94C7;
    }

    void init(u32 size, int heapIndex){
        memset(this, 0, sizeof(MemBlock)); //Wipe all values in the struct
        prev = nullptr;
        next = 0;
        this->size = size;
        data = dummyDataPtr();
        this->heapIndex = heapIndex & 0xFF;
    }
};

struct Heap{
    MemBlock* head; //0x0
    MemBlock* tail; //0x4
    MemBlock* unk8;
    MemBlock* unkC;
    u32 startAddress; //0x10
    u32 endAddress; //0x14
    u32 unk18;
    u32 size; //0x1C
    u32 freeBytes; //0x20
    char name[64]; //0x24
    int nameLength; //0x64
    int regionIndex; //0x68
    u8 unk6C;
    u8 unk6D[3];

    //Heap();

     void init(){
        head = nullptr;
        tail = nullptr;
        unk8 = nullptr;
        unkC = nullptr;
        startAddress = 0;
        endAddress = 0;
        unk18 = 0;
        size = 0;
        freeBytes = 0;
        name[0] = '\0'; //Set the first character to 0 to mark it as empty
        nameLength = 0;
        regionIndex = -1;
        //temp_r1->unk1C = temp_r1;
        unk6C = 0;
    }
};

extern Heap heapArray[80]; 
extern int arenaMemorySize;
extern int lbl_80665E28;
extern int lbl_80665E2C;
extern int regionIndex1;
extern int regionIndex2;
extern bool lbl_80665E38;
extern bool lbl_80665E39;
extern s32 lbl_80667E50;
extern bool lbl_80667E54;

#define MEM2_END_ADDR 0x935E0000


void* allocate(Heap* heap, u32 param2, u32 size, u32 param4);
MemBlock* MemManager_804339B8(Heap*, MemBlock*);
MemBlock* MemManager_80433AA8(Heap*, MemBlock*);
void MemManager_setArenaMemorySize(u32, u32);
void* heap_malloc(size_t size, int memBlockIndex);
void* heap_malloc_1(size_t size, int memBlockIndex);
int getHeapIndex();

#define VoidToMemBlock(p) (MemBlock*)((u32)p - 0x20)

static inline Heap* getHeap(u32 index){
    return &(heapArray[index & 0xFF]);
}

}

void operator delete(void*) throw();
void operator delete[](void*) throw();

/*Operator new seems to have been inlined in Monolithsoft's code, with it following this general pattern:

int r4; //seems to often be the result of getHeapIndex, but not always
void* p = heap_malloc(sizeof(Class),r4);
Class* c;

if(p != null){
    c = Class(p,...); //can be any one of the class's constructors, with/without params
}

bl getHeapIndex
mr r4, r3
li r3, size
bl heap_malloc
cmpwi r3, 0
beq .skip
bl constructor
.skip
*/

/* Allocates the needed amount of memory for the class through heap_malloc, and returns it
Not sure what the second param is
The second parameter is often the result from getHeapIndex. They might've used some
type of macro for those cases? */
inline void* operator new(size_t size){
	int memBlockIndex = mtl::getHeapIndex();
    return mtl::heap_malloc(size,memBlockIndex);
}
