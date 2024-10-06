#pragma once

#include "types.h"
#include <string.h>
#include <stddef.h>
#include <math.h> //Only included to make mwcc use log from math.h lol
#include "monolib/FixStr.hpp"

#define MEM2_END_ADDR 0x935E0000
#define MAX_REGIONS 80

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

        static MemBlock* fromVoidPointer(void* ptr){
            return (MemBlock*)((u32)ptr - 0x20);
        }
    };

    class MemManager {
    public:
        struct Region{
            ~Region();
            MemBlock* func_804336F0(MemBlock* memBlock, u32 param2, u32 size, u32 param4);
            MemBlock* func_804339B8(MemBlock* arg1);
            MemBlock* func_80433AA8(MemBlock* entry);
            MemBlock* func_80434704(u32 r4, u32 r5, u32* r6);
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
                mName.string[0] = '\0'; //Set the first character to 0 to mark it as empty
                mName.length = 0;
                mRegionIndex = -1;
                //temp_r1->unk1C = temp_r1;
                unk6C = 0;
            }

            inline MemBlock* unkInline1(MemBlock* entry){
                 MemBlock* prevEntry = entry->prev;

                if (entry->prev != nullptr) {
                    if((u32)entry == ((u32)prevEntry + prevEntry->size)) {
                        prevEntry->size += entry->size;

                        if (entry == mTail) {
                            mTail = prevEntry;
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

            MemBlock* mHead; //0x0
            MemBlock* mTail; //0x4
            MemBlock* unk8;
            MemBlock* unkC;
            u32 mStartAddress; //0x10
            u32 mEndAddress; //0x14
            u32 unk18;
            u32 mSize; //0x1C
            u32 mFreeBytes; //0x20
            ml::FixStr<64> mName; //0x24
            u32 mRegionIndex; //0x68
            u8 unk6C;
        };

    public:
        static void setArenaMemorySize(u32 val, bool b);
        static void initialize();
        static void terminate();
        static int createRegion(u32 regionIndex, int offset, const char* name);
        static int func_804341D0(int r3, int r4, const char* r5);
        static int getHeapIndex();
        static int getMem1RegionIndex();
        static int getMem2RegionIndex();
        static int getMem2RegionIndex_2();
        static bool deleteRegion(u32 regionIndex);
        static void* func_8043442C(u32 regionIndex, u32 r4, int r5);
        static void func_80434450(u32 regionIndex, u32 r4, int r5);
        static bool deallocate(void* p);
        static u32 func_804346A0(u32 regionIndex);
        static u32 func_804346BC(u32 regionIndex);
        static u32 func_80434770(u32 regionIndex);
        static void func_804347D8(u32 regionIndex);
        static void func_80434830(u32 regionIndex);
        static void func_804348A4(u32 regionIndex, u8 val);
        static u32 func_804348C0(u8* arg0, u32 arg1);
        static void func_80434A4C(u8 r3);
        static void func_80434A54(u8 r3);
        static void* malloc(size_t size, u32 regionIndex);
        static void* malloc_array(size_t size, u32 regionIndex);
        static void func_80434AA4(u32 r3, u32 regionIndex, int r5);
        static void* allocateArray(u32 r3, u32 regionIndex, int r5);
        //static void log(bool status);

        static inline Region* getRegion(u32 index){
            return (Region*)((u32)regionArray + (u8)index * sizeof(Region));
        }

        static inline Region* getRegionU32(u32 index){
            return (Region*)((u32)regionArray + (index * sizeof(Region)));
        }

        /*
        Attempts to add a new memory region entry into the array, looking for the first unused slot.
        If successful, it returns the corresponding index.
        */
        static inline int addRegion(MemBlock* head, u32 size, const char* name){
            //Find the first unused entry to use for the new region
            for(u32 i = 0; i < MAX_REGIONS; i++){
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
                    entry->mName.length = strlen(name);
                    strcpy(entry->mName.string, name); //Copy the name to the struct variable
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

        static inline MemBlock* createRegionHeadMemBlock1(u32 regionIndex, u32 size){
            Region* region = getRegion(regionIndex);
            u32 temp = 0;
            if(region->func_80434704(size, 0x10, &temp) == 0){
                return nullptr;
            }else{
                return (MemBlock*)region->allocate(temp, size, 0x10);
            }
        }

        static inline u32 unkInline(u32 param){
            u32 result = param;

            for(int j = 0; j < 8; j++){
                result <<= 1;
                if (result & 0x01000000) {
                    result ^= 0x01100000 ^ 0x2100;
                }
            }
            
            return result;
        }

        //TODO: is there a way to have this be a normal array without generating sinit stuff?
        static u8 regionArray[MAX_REGIONS * sizeof(Region)];
        static s32 lbl_80667E50;

        static int lbl_80665E28;
        static int lbl_80665E2C;
        static u32 mem1RegionIndex;
        static u32 mem2RegionIndex;
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
