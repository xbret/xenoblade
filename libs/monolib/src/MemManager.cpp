#include "monolib/MemManager.hpp"
#include <revolution/OS.h>

namespace mtl{

    u8 MemManager::regionArray[MAX_REGIONS * sizeof(Region)]; 
    s32 MemManager::lbl_80667E50;
    bool lbl_80667E54;
    BOOL lbl_80667E58;
    bool lbl_80667E5C;

    int MemManager::lbl_80665E28 = 1;
    int MemManager::lbl_80665E2C = 1;
    u32 MemManager::mem1RegionIndex = -1;
    u32 MemManager::mem2RegionIndex = -1;
    bool MemManager::lbl_80665E38 = true;
    bool MemManager::lbl_80665E39 = true;
    int MemManager::arenaMemorySize = 0x600000;

    MemManager::Region::~Region(){
        u32 regionIndex = mRegionIndex;
        if(regionIndex != MemManager::mem1RegionIndex && regionIndex != MemManager::mem2RegionIndex && mStartAddress != 0){
            MemManager::deallocate((void*)mStartAddress);
        }

        regionIndex = mRegionIndex;
        if(regionIndex == MemManager::mem1RegionIndex){
            MemManager::mem1RegionIndex = -1;
        }else if(regionIndex == MemManager::mem2RegionIndex){
            MemManager::mem2RegionIndex = -1;
        }

        unk8 = nullptr;
        unkC = nullptr;
        mHead = nullptr;
        mTail = nullptr;
        mStartAddress = 0;
        mEndAddress = 0;
        mSize = 0;
        unk18 = 0;
        mFreeBytes = 0;
    }

    void MemManager::setArenaMemorySize(u32 val, bool b){
        arenaMemorySize = val;
        lbl_80667E58 = b;
    }

    MemBlock* MemManager::Region::func_804336F0(MemBlock* memBlock, u32 param2, u32 size, u32 param4){
        return nullptr;
    }

    MemBlock* MemManager::Region::func_804339B8(MemBlock* arg1) {
        MemBlock* entryTemp = arg1;
        MemBlock* tempEntry1 = (MemBlock*)entryTemp->data;

        if (tempEntry1 != entryTemp) {
            memmove((void*)tempEntry1, entryTemp, sizeof(MemBlock));
            entryTemp = tempEntry1;
        }

        entryTemp->data = MemBlock::dummyDataPtr(); //set the pointer to a random known value
        MemBlock* currentEntry = mHead;

        //Go to the end of the list
        while(currentEntry != nullptr){
            //Check if entryTemp comes before currentEntry in memory
            if (entryTemp < currentEntry) {
                if (currentEntry->prev != nullptr) {
                    currentEntry->prev->next = entryTemp;
                }

                entryTemp->prev = currentEntry->prev;
                currentEntry->prev = entryTemp;
                entryTemp->next = currentEntry;

                if (currentEntry == mHead) {
                    mHead = entryTemp;
                }

                return entryTemp;
            }

            //If we're not at the end, keep going
            currentEntry = currentEntry->next;
        }

        if (mHead == nullptr) {
            mHead = entryTemp;
            mTail = entryTemp;
            entryTemp->prev = nullptr;
            entryTemp->next = nullptr;
        } else {
            mTail->next = entryTemp;
            entryTemp->prev = mTail;
            entryTemp->next = nullptr;
            mTail = entryTemp;
        }

        return entryTemp;
    }


    MemBlock* MemManager::Region::func_80433AA8(MemBlock* entry) {

        MemBlock* temp_r6 = entry->prev;

        if (entry->prev != nullptr) {
            if ((u32)entry == (u32)temp_r6 + temp_r6->size) {
                temp_r6->size += entry->size;
                if (entry == mTail) {
                    mTail = temp_r6;
                }
                temp_r6->next = entry->next;

                if (entry->next != nullptr) {
                    entry->next->prev = temp_r6;
                    entry = temp_r6;
                }
            }
        }

        //var_r5 = unkInline1(menEntry,entry);
        MemBlock* var_r5 = entry->next;

        if (var_r5 != nullptr) {
            MemBlock* temp_r6_2 = var_r5->prev;
            if (temp_r6_2 != nullptr) {
                if ((u32)var_r5 == (u32)temp_r6_2 + temp_r6_2->size) {
                    temp_r6_2->size += var_r5->size;
                    if (var_r5 == mTail) {
                        mTail = temp_r6_2;
                    }
                    temp_r6_2->next = var_r5->next;
                    if (var_r5->next != nullptr) {
                        var_r5->next->prev = temp_r6_2;
                        var_r5 = temp_r6_2;
                    }
                }
            }

            //var_r5 = unkInline1(menEntry,entry);
            var_r5 = var_r5->next;

            if (var_r5 != nullptr) {
                var_r5 = func_80433AA8(var_r5);
            }
        }

        return entry;
    }

    //void* Region::allocate(u32 param2, u32 size, u32 param4){

    //}

    void MemManager::initialize(){
        lbl_80667E50 = 0;
        lbl_80665E39 = true;

        //Initialize the mem region array
        for(u8 i = 0; i < MAX_REGIONS; i++){
            Region* entry = getRegion(i);
            if (entry != nullptr) {
                entry->init();
            }
        }
    
        u32 arenaLo = (u32)OSGetMEM1ArenaLo();
        u32 maxMemoryAddress = arenaMemorySize + 0x80000000;
        u32 arenaHi = (u32)OSGetMEM1ArenaHi(); //unused
    
        int memory = maxMemoryAddress - arenaLo;
        if (maxMemoryAddress < arenaLo) {
            memory = arenaLo - maxMemoryAddress;
        }
        //Remaining program region %x / maximum %x
        OSReport("プログラム領域残り %x / 最大 %x\n", memory, arenaMemorySize);
        if (arenaLo >= maxMemoryAddress) {
            //Program region exceeded the limit
            OSReport("プログラム領域が限界を超えました");
        }
        lbl_80665E38 = true;
        u32 mem2ArenaHi = (u32)OSGetMEM2ArenaHi(); //unused
        mem1RegionIndex = addRegion((MemBlock*)maxMemoryAddress, (u32)OSGetMEM1ArenaHi() - maxMemoryAddress, "Mem1");
        mem2RegionIndex = addRegion((MemBlock*)OSGetMEM2ArenaLo(), MEM2_END_ADDR - (u32)OSGetMEM2ArenaLo(), "Mem2");
    }

    void MemManager::terminate(){
        //Do cleanup for any active regions
        for(int i = 79; i >= 0; i--){
            Region* entry = MemManager::getRegion(i);
            if(entry->mStartAddress != 0){
                entry->~Region();
            }
        }
    }

    int MemManager::createRegion(u32 regionIndex, int offset, const char* name) {
        u32 newSize = offset + sizeof(MemBlock);


        if (offset == 0) {
            MemBlock* pLargestEntry = findLargestEntry(regionIndex);

            if (pLargestEntry == nullptr) newSize = 0;
            else newSize = pLargestEntry->size - sizeof(MemBlock);
        }

        int index = addRegion(createRegionHeadMemBlock(regionIndex,newSize), newSize, name);
        lbl_80667E54 = false;
        return index;
    }

    int MemManager::func_804341D0(int regionIndex, int offset, const char* name){
        u32 newSize = offset + sizeof(MemBlock);


        if (offset == 0) {
            MemBlock* pLargestEntry = findLargestEntry(regionIndex);

            if (pLargestEntry == nullptr) newSize = 0;
            else newSize = pLargestEntry->size - sizeof(MemBlock);
        }
        
        
        int index = addRegion(createRegionHeadMemBlock1(regionIndex, newSize), newSize, name);
        lbl_80667E54 = false;
        return index;
    }

    int MemManager::getMem1RegionIndex(){
        return mem1RegionIndex;
    }

    int MemManager::getMem2RegionIndex(){
        return mem2RegionIndex;
    }

    int MemManager::getMem2RegionIndex_2(){
        return mem2RegionIndex;
    }

    bool MemManager::deleteRegion(u32 regionIndex){
        bool r0;
        u8 tempIndex = regionIndex & 0xFF;
        if(tempIndex >= MAX_REGIONS){
            r0 = false;
        }else{
            Region* region = getRegion(tempIndex);
            u32 startAddress = region->mStartAddress;
            r0 = startAddress > 0;
        }
        if(r0 == false){
            return false;
        }

        Region* region = getRegion(tempIndex);
        region->~Region();
        return true;
    }

    void* MemManager::func_8043442C(u32 regionIndex, u32 r4, int r5){
        Region* region = getRegion(regionIndex);
        return region->allocate(0, r4, r5);
    }

    void MemManager::func_80434450(u32 regionIndex, u32 r4, int r5){
    }

    bool MemManager::deallocate(void* p) {
        if(p == nullptr){
            return true;
        }

        if(mem1RegionIndex == -1){
            return true;
        }

        MemBlock* entryToDelete = MemBlock::fromVoidPointer(p);
        Region* region = MemManager::getRegion(entryToDelete->regionIndex);

        //this doesn't seem right
        if(entryToDelete->size - sizeof(MemBlock) - 1 > 0x7FFFFFF - sizeof(MemBlock) - 1){
            log(true); //Since monolithsoft removed their log function, this calls the math log lol
        }else{
            region->mFreeBytes += entryToDelete->size;

            //Remove the entry from the linked list
            if(entryToDelete->prev != nullptr){
                entryToDelete->prev->next = entryToDelete->next;
            }
            if(entryToDelete->next != nullptr) {
                entryToDelete->next->prev = entryToDelete->prev;
            }

            if (region->unk8 == entryToDelete) {
                region->unk8 = entryToDelete->next;
            }

            if (region->unkC == entryToDelete) {
                region->unkC = entryToDelete->prev;
            }

            MemBlock* entry = region->func_804339B8(entryToDelete);
            entry = region->unkInline1(entry);

            if (entry != nullptr) {
                entry = region->unkInline1(entry);

                if (entry != NULL) {
                    region->func_80433AA8(entry);
                }
            }

            region->unk18--;
        }

        return true;
    }

    u32 MemManager::func_804346A0(u32 regionIndex){
        Region* region = getRegion(regionIndex);
        return region->mSize;
    }

    u32 MemManager::func_804346BC(u32 regionIndex){
        Region* region = getRegion(regionIndex);
        MemBlock* block = region->unk8;

        if(block == nullptr){
            return 0;
        }

        u32 result = 0;

        while(block != nullptr){
            u32 r0 = block->size;
            block = block->next;
            result += r0;
        }

        return result;
    }

    MemBlock* MemManager::Region::func_80434704(u32 r4, u32 r5, u32* r6){
        if(mHead == nullptr){
            return nullptr;
        }

        MemBlock* r3 = mTail;
        u32 r7 = r4 + 0x100;
        while(r3 != 0){
            u32 r0 = r3->size;
            if(r0 >= r7){
                u32 r8 = ((u32)r3 + r0) - r4;
                u32 r0_3 = r8 % r5;

                if(r0_3 != 0){
                    r8 -= r0_3;
                }

                r6[0] = r8;
                if(r3 <= MemBlock::fromVoidPointer((void*)r8)) return r3;
            }
            r3 = r3->prev;
        }

        return nullptr;
    }

    u32 MemManager::func_80434770(u32 regionIndex){
        Region* region = getRegion(regionIndex);
        MemBlock* r4;
        MemBlock* r5 = region->mHead;

        if(r5 == nullptr){
            r5 = nullptr; //Why set it to zero again? lol
        }else{
            r4 = r5;

            while(r4 != nullptr){
                if(r5->size < r4->size){
                    r5 = r4;
                }

                r4 = r4->next;
            }
        }

        if(r5 == nullptr){
            return 0;
        }

        return r5->size - sizeof(MemBlock);
    }

    void MemManager::func_804347D8(u32 regionIndex){
    }

    void MemManager::func_80434830(u32 regionIndex){
    }

    void MemManager::func_804348A4(u32 regionIndex, u8 val){
        Region* region = getRegion(regionIndex);
        region->unk6C = val;
    }

    u32 MemManager::func_804348C0(u8* arg0, u32 arg1) {
        if (arg0 == NULL) {
            return 0xFFFF;
        }

        u32 var_r5 = 0;

        for(int i = 0; i < arg1; i++){
            var_r5 |= (s8)*arg0;
            for(int j = 0; j < 8; j++){
                var_r5 *= 2;
                if (var_r5 & 0x01000000) {
                    var_r5 ^= 0x01100000 ^ 0x2100;
                }
            }
            arg0++;
        }

        for(int i = 0; i < 2; i++){
            for(int j = 0; j < 8; j++){
                var_r5 *= 2;
                if (var_r5 & 0x01000000) {
                    var_r5 ^= 0x01100000 ^ 0x2100;
                }
            }
        }
        return (var_r5 >> 8) & 0xFFFF;
    }

    void MemManager::func_80434A4C(u8 r3){
        lbl_80665E39 = r3;
    }

    void MemManager::func_80434A54(u8 r3){
        lbl_80667E5C = r3;
    }

    void* MemManager::malloc(size_t size, u32 regionIndex){
        Region* region = MemManager::getRegion(regionIndex);
        return region->allocate(0, size, 4);
    }

    void* MemManager::malloc_array(size_t size, u32 regionIndex){
        Region* region = MemManager::getRegion(regionIndex);
        return region->allocate(0, size, 4);
    }

    void MemManager::func_80434AA4(u32 r3, u32 regionIndex, int r5){
    }

    void* MemManager::allocateArray(u32 r3, u32 regionIndex, int r5){
        if(r5 < 0){
            Region* region = getRegion(regionIndex);
            u32 r1_8 = 0;
            int r31 = -r5;
            if(region->func_80434704(r3, r31, &r1_8) == nullptr){
                return nullptr;
            }
            return region->allocate(r1_8, r3, r31);
        }

        Region* region = getRegion(regionIndex);
        return region->allocate(0, r3, r5);
    }

}

//No way they did this shit
#pragma ecplusplus on

//dummy operator new
void* operator new(size_t size){
    return 0;
}

void operator delete(void* p){
    mtl::MemManager::deallocate(p);
}

void operator delete[](void* p){
    mtl::MemManager::deallocate(p);
}

#pragma ecplusplus off
