#pragma once

#include "types.h"
#include <string.h>
#include <stddef.h>

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

#define MEM2_END_ADDR 0x935E0000


void* allocate(Heap* heap, u32 param2, u32 size, u32 param4);
MemBlock* MemManager_804339B8(Heap*, MemBlock*);
MemBlock* MemManager_80433AA8(Heap*, MemBlock*);
void MemManager_setArenaMemorySize(u32, u32);
void heap_deleteRegion(int regionIndex);
void* heap_malloc(size_t size, int memBlockIndex);
void* heap_malloc_array(size_t size, int memBlockIndex);
int getHeapIndex();
int Heap_getRegionIndex1();
int Heap_getRegionIndex2();
int Heap_getRegionIndex2_2();
void* allocateHeap(u32 r3, int index, u32 r5);
int heap_createRegion(int regionIndex, int offset, const char* name);

#define VoidToMemBlock(p) (MemBlock*)((u32)p - 0x20)

static inline Heap* getHeap(u32 index){
	return &(heapArray[index & 0xFF]);
}

}

inline void* operator new(size_t size, int index) {
	return mtl::heap_malloc(size, index);
}

inline void* operator new[](size_t size, int index){
	return mtl::heap_malloc_array(size, index);
}
