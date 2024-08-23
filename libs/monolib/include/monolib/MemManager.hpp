#pragma once

#include "types.h"
#include <string.h>
#include <stddef.h>
#include <math.h> //Only included to make mwcc use log from math.h lol

#define MEM2_END_ADDR 0x935E0000

namespace mtl{

	struct MemBlock {
		MemBlock* prev; //0x0
		MemBlock* next; //0x4
		void* data; //0x8
		u32 size; //0xC
		u16 regionIndex; //0x10
		u8 filler[14]; //0x12

		//MemBlock(){}

		static void* dummyDataPtr(){
		return (void*)0xA7FB94C7;
		}

		void init(u32 size, int regionIndex){
			memset(this, 0, sizeof(MemBlock)); //Wipe all values in the struct
			prev = nullptr;
			next = 0;
			this->size = size;
			data = dummyDataPtr();
			this->regionIndex = regionIndex & 0xFF;
		}
	};

	struct Region{
		~Region();
		MemBlock* func_804339B8(MemBlock* arg1);
		MemBlock* func_80433AA8(MemBlock* entry);
		void* allocate(u32 param2, u32 size, u32 param4);

		//Region();

		void init(){
			mHead = nullptr;
			mTail = nullptr;
			unk8 = nullptr;
			unkC = nullptr;
			mStartAddress = 0;
			mEndAddress = 0;
			unk18 = 0;
			mSize = 0;
			mFreeBytes = 0;
			mName[0] = '\0'; //Set the first character to 0 to mark it as empty
			mNameLength = 0;
			mRegionIndex = -1;
			//temp_r1->unk1C = temp_r1;
			unk6C = 0;
		}

		MemBlock* mHead; //0x0
		MemBlock* mTail; //0x4
		MemBlock* unk8;
		MemBlock* unkC;
		u32 mStartAddress; //0x10
		u32 mEndAddress; //0x14
		u32 unk18;
		u32 mSize; //0x1C
		u32 mFreeBytes; //0x20
		char mName[64]; //0x24
		int mNameLength; //0x64
		u32 mRegionIndex; //0x68
		u8 unk6C;
		u8 unk6D[3];
	};

	class MemManager {
	protected:
		static u32 func_804348C0(u8* arg0, u32 arg1);
		//static void log(bool status);

	public:
		static void setArenaMemorySize(u32 val, bool b);
		static void initialize();
		static void terminate();
		static int createRegion(int regionIndex, int offset, const char* name);
		static void deleteRegion(int regionIndex);
		static int getHeapIndex();
		static int getRegionIndex1();
		static int getRegionIndex2();
		static int getRegionIndex2_2();
		static inline void deallocate(void* p);
		static void* malloc(size_t size, int memBlockIndex);
		static void* malloc_array(size_t size, int memBlockIndex);
		static void* allocateArray(u32 r3, int index, u32 r5);

		static inline Region* getRegion(u32 index){
			return &(regionArray[index & 0xFF]);
		}

		/*
		Attempts to add a new memory region entry into the array, looking for the first unused slot.
		If successful, it returns the corresponding index.
		*/
		static inline int addRegion(MemBlock* head, u32 size, const char* name){
			//Find the first unused entry to use for the new region
			for(int i = 0; i < 0x50; i++){
				Region* entry = getRegion(i);
			   //Check if this slot is empty
				if (entry->mStartAddress == 0) {
					i = (lbl_80667E50++ << 8) | i;
					entry->mRegionIndex = i;
					entry->mStartAddress = (u32)head;
					entry->mEndAddress = (u32)head + size;
					entry->unk8 = nullptr;
					entry->unkC = nullptr;

					//Initialize the head entry of the heap
					head->init(size,i);

					entry->mHead = head;
					entry->mTail = head;
					entry->unk18 = 0;
					entry->mSize = size;
					entry->mFreeBytes = size;
					entry->unk6C = 0;
					entry->mNameLength = strlen(name);
					strcpy(entry->mName, name); //Copy the name to the struct variable
					return i;
				}
			}

			return -1; //No available slot was found, return -1
		}



		static inline MemBlock* findLargestEntry(u32 regionIndex){
			MemBlock* regionHead = getRegion(regionIndex)->mHead;      

				if (regionHead == nullptr) {
					return nullptr;
				} else {
					MemBlock* temp = regionHead;

					while(temp != nullptr) {
						if (regionHead->size < temp->size) {
							regionHead = temp;
						}
						temp = temp->next;
					}
				}
			return regionHead;
		}

		static inline MemBlock* createRegionHeadMemBlock(u32 regionIndex, u32 size){
			Region* region = getRegion(regionIndex);
			return (MemBlock *)region->allocate(0,size,0x10);
		}

		static inline u32 unkInline(u32 var_r5){
			for(int j = 0; j < 8; j++){
				var_r5 *= 2;
				if (var_r5 & 0x01000000) {
					var_r5 ^= 0x01100000 ^ 0x2100;
				}
			}
			return var_r5;
		}


		static inline MemBlock* unkInline1(Region* region, MemBlock* entry){
			 MemBlock* prevEntry = entry->prev;

			if (entry->prev != nullptr) {
				if((u32)entry == ((u32)prevEntry + prevEntry->size)) {
					prevEntry->size += entry->size;

					if (entry == region->mTail) {
						region->mTail = prevEntry;
					}

					prevEntry->next = entry->next;

					if (entry->next != nullptr) {
						entry->next->prev = prevEntry;
						entry = prevEntry;
					}
				}
			}

			return entry->next;
		}

		static Region regionArray[80];
		static s32 lbl_80667E50;

		static int lbl_80665E28;
		static int lbl_80665E2C;
		static u32 regionIndex1;
		static u32 regionIndex2;
		static bool lbl_80665E38;
		static bool lbl_80665E39;
		static int arenaMemorySize;
	};

}

inline void* operator new(size_t size, int index) {
	return mtl::MemManager::malloc(size, index);
}

inline void* operator new[](size_t size, int index){
	return mtl::MemManager::malloc_array(size, index);
}
