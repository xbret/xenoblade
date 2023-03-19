#pragma once

#include "types.h"


namespace mtl{
namespace heap{

struct HeapEntry {
    HeapEntry* prev;
    HeapEntry* next;
    void* data;
    u32 size;
    u16 memRegionIndex;
    u8 filler[14]; //0x12

    //HeapEntry(){}

    static void* dummyDataPtr(){
    return (void*)0xA7FB94C7;
    }

    void init(u32 size, int memRegionIndex){
        memset(this, 0, sizeof(HeapEntry)); //Wipe all values in the struct
        prev = nullptr;
        next = 0;
        this->size = size;
        data = dummyDataPtr();
        this->memRegionIndex = memRegionIndex & 0xFF;
    }
};

struct MemRegion{
    HeapEntry* head; //0x0
    HeapEntry* tail; //0x4
    HeapEntry* unk8;
    HeapEntry* unkC;
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

    //MemRegion();

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

MemRegion memRegionArray[80]; 
int arenaMemorySize;
int lbl_80665E28;
int lbl_80665E2C;
int mem1RegionIndex;
int mem2RegionIndex;
bool lbl_80665E38;
bool lbl_80665E39;
s32 lbl_80667E50;
bool lbl_80667E54;

#define MEM2_END_ADDR 0x935E0000


void* allocate(MemRegion* memRegion, u32 param2, u32 size, u32 param4);
    HeapEntry* func_804339B8(MemRegion*, HeapEntry*);
    HeapEntry* func_80433AA8(MemRegion*, HeapEntry*);
    void* malloc(size_t size, int memBlockIndex);

    #define VoidToHeapEntry(p) (HeapEntry*)((u32)p - 0x20)

static inline MemRegion* getMemRegion(u32 index){
    return &(memRegionArray[index & 0xFF]);
}

}
}

void operator delete(void*);
void operator delete[](void*);

/*Operator new seems to have been inlined in Monolithsoft's code, with it following this general pattern:

int r4; //seems to often be the result of getMemRegionIndex, but not always
void* p = heap_malloc(sizeof(Class),r4);
Class* c;

if(p != null){
    c = Class(p,...); //can be any one of the class's constructors, with/without params
}

bl getMemRegionIndex
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
The second parameter is often the result from getMemRegionIndex. They might've used some
type of macro for those cases? */
inline void* operator new(size_t size, int memBlockIndex){
    return mtl::malloc(size,memBlockIndex);
}