#include "monolib/MemManager.hpp"

namespace mtl{

Region MemManager::regionArray[80]; 
s32 MemManager::lbl_80667E50;
bool lbl_80667E54;
BOOL lbl_80667E58;

int MemManager::lbl_80665E28 = 1;
int MemManager::lbl_80665E2C = 1;
u32 MemManager::regionIndex1 = -1;
u32 MemManager::regionIndex2 = -1;
bool MemManager::lbl_80665E38 = true;
bool MemManager::lbl_80665E39 = true;
int MemManager::arenaMemorySize = 0x600000;

#define VoidToMemBlock(p) (MemBlock*)((u32)p - 0x20)

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

MemBlock* Region::func_804339B8(MemBlock* arg1) {
	MemBlock* entryTemp = arg1;
	MemBlock* tempEntry1 = entryTemp->next;
	
	if (tempEntry1 != entryTemp) {
		memmove((void*)tempEntry1, entryTemp, sizeof(MemBlock));
		entryTemp = tempEntry1;
	}
	
	entryTemp->next = (MemBlock*)MemBlock::dummyDataPtr(); //set the pointer to a random known value
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

void* Region::allocate(u32 param2, u32 size, u32 param4){

}

void MemManager::initialize(){
}

void MemManager::terminate(){
	//Do cleanup for any active regions
	for(int i = 79; i >= 0; i--){
		Region* entry = &regionArray[i & 0xFF];
		if(entry->mStartAddress != 0){
			delete entry;
		}
	}
}

int MemManager::createRegion(int regionIndex, int offset, const char* name) {
	u32 newSize = offset + sizeof(MemBlock);
	
	
	if (offset == 0) {
		MemBlock* temp;
		MemBlock* pLargestEntry = findLargestEntry(regionIndex);
	  
		if (pLargestEntry == nullptr) newSize = 0;
		else newSize = pLargestEntry->size - sizeof(MemBlock);
	}

	int index = addRegion(createRegionHeadMemBlock(regionIndex,newSize), newSize, name);
	lbl_80667E54 = false;
	return index;
}

int MemManager::getRegionIndex1(){
}

int MemManager::getRegionIndex2(){
}

int MemManager::getRegionIndex2_2(){
}

void MemManager::deleteRegion(int regionIndex){
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

void* MemManager::malloc(size_t size, int memBlockIndex){
}

void* MemManager::malloc_array(size_t size, int memBlockIndex){
}

inline void MemManager::deallocate(void* p){
	if(p != nullptr){
		if(regionIndex1 != -1){
			MemBlock* entryToDelete = VoidToMemBlock(p);
			Region* region = &(regionArray[(u8)entryToDelete->regionIndex]);

			//this doesn't seem right
			if(entryToDelete->size - sizeof(MemBlock) - 1 > 0x7FFFFFF - sizeof(MemBlock) - 1){
				log(true); //Since monolithsoft removed their log function, this calls the math log lol
				return;
			}
		
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
			entry = unkInline1(region, entry);
		
			if (entry != nullptr) {
				entry = unkInline1(region, entry);
			
				if (entry != NULL) {
					region->func_80433AA8(entry);
				}
			}
			
			region->unk18--;
		}
	}
}

void* MemManager::allocateArray(u32 r3, int index, u32 r5){

}

}

//dummy operator new
void* operator new(u32 arg0){
	return 0;
}

void operator delete(void* p){
	mtl::MemManager::deallocate(p);
}



void operator delete[](void* p){
	mtl::MemManager::deallocate(p);
}
