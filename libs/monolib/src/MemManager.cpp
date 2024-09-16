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
	u32 MemManager::regionIndex1 = -1;
	u32 MemManager::regionIndex2 = -1;
	bool MemManager::lbl_80665E38 = true;
	bool MemManager::lbl_80665E39 = true;
	int MemManager::arenaMemorySize = 0x600000;

	Region::~Region(){
		u32 regionIndex = mRegionIndex;
		if(regionIndex != MemManager::regionIndex1 && regionIndex != MemManager::regionIndex2 && mStartAddress != 0){
			MemManager::deallocate((void*)mStartAddress);
		}

		regionIndex = mRegionIndex;
		if(regionIndex == MemManager::regionIndex1){
			MemManager::regionIndex1 = -1;
		}else if(regionIndex == MemManager::regionIndex2){
			MemManager::regionIndex2 = -1;
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

	MemBlock* Region::func_804336F0(MemBlock* memBlock, u32 param2, u32 size, u32 param4){
		return nullptr;
	}

	MemBlock* Region::func_804339B8(MemBlock* arg1) {
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


	MemBlock* Region::func_80433AA8(MemBlock* entry) {

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
	    regionIndex1 = addRegion((MemBlock*)maxMemoryAddress, (u32)OSGetMEM1ArenaHi() - maxMemoryAddress, "Mem1");
	    regionIndex2 = addRegion((MemBlock*)OSGetMEM2ArenaLo(),MEM2_END_ADDR - (u32)OSGetMEM2ArenaLo(), "Mem2");
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

	int MemManager::createRegion(int regionIndex, int offset, const char* name) {
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

	int MemManager::getRegionIndex1(){
		return regionIndex1;
	}

	int MemManager::getRegionIndex2(){
		return regionIndex2;
	}

	int MemManager::getRegionIndex2_2(){
		return regionIndex2;
	}

	bool MemManager::deleteRegion(int regionIndex){
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

	void MemManager::func_8043442C(int regionIndex, u32 r4, u32 r5){
	}

	void MemManager::func_80434450(int regionIndex, u32 r4, u32 r5){
	}

	void MemManager::func_804344D8(void* r3){
	}

	u32 MemManager::func_804346A0(int regionIndex){
		Region* region = getRegion(regionIndex);
		return region->mSize;
	}

	void MemManager::func_804346BC(int regionIndex){
	}

	//int Region::func_80434704(u32 r4, u32 r5, u32* r6){
	//}

	void MemManager::func_80434770(int regionIndex){
	}

	void MemManager::func_804347D8(int regionIndex){
	}

	void MemManager::func_80434830(int regionIndex){
	}

	void MemManager::func_804348A4(int regionIndex, u8 val){
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

	void* MemManager::malloc(size_t size, int regionIndex){
		Region* region = MemManager::getRegion(regionIndex);
		return region->allocate(0, size, 4);
	}

	void* MemManager::malloc_array(size_t size, int regionIndex){
		Region* region = MemManager::getRegion(regionIndex);
		return region->allocate(0, size, 4);
	}

	void MemManager::func_80434AA4(u32 r3, int regionIndex, u32 r5){
	}

	void* MemManager::allocateArray(u32 r3, int index, u32 r5){
		return nullptr;
	}

}

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
