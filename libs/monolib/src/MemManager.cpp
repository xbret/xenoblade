#include "monolib/MemManager.hpp"

/*Compiled with the ec++ flag? without it the compiler requires throw()
to be added for the operators, which messes them up*/

namespace mtl{

Heap heapArray[80]; 
int arenaMemorySize;
int lbl_80665E28;
int lbl_80665E2C;
u32 regionIndex1;
u32 regionIndex2;
bool lbl_80665E38;
bool lbl_80665E39;
s32 lbl_80667E50;



/*Attempts to add a new memory region entry into the array, looking for the first unused slot. If
successful, it returns the corresponding index.*/
static inline int addHeap(MemBlock* head, u32 size, const char* name){
    //Find the first unused entry to use for the new region
    for(int i = 0; i < 0x50; i++){
        Heap* entry = getHeap(i);
       //Check if this slot is empty
        if (entry->startAddress == 0) {
            i = (lbl_80667E50++ << 8) | i;
            entry->regionIndex = i;
            entry->startAddress = (u32)head;
            entry->endAddress = (u32)head + size;
            entry->unk8 = nullptr;
            entry->unkC = nullptr;

            //Initialize the head entry of the heap
            head->init(size,i);
            
            entry->head = head;
            entry->tail = head;
            entry->unk18 = 0;
            entry->size = size;
            entry->freeBytes = size;
            entry->unk6C = 0;
            entry->nameLength = strlen(name);
            strcpy(entry->name, name); //Copy the name to the struct variable
            return i;
        }
    }
    
    return -1; //No available slot was found, return -1
}

static inline MemBlock* findLargestEntry(u32 heapIndex){
    MemBlock* regionHead = getHeap(heapIndex)->head;      
        
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

static inline MemBlock* createRegionHeadMemBlock(u32 heapIndex, u32 size){
    return (MemBlock *)allocate(getHeap(heapIndex),0,size,0x10);
}

static inline MemBlock* unkInline1(Heap* heap, MemBlock* entry){
     MemBlock* prevEntry = entry->prev;
            
    if (entry->prev != nullptr) {
        if((u32)entry == ((u32)prevEntry + prevEntry->size)) {
            prevEntry->size += entry->size;
                    
            if (entry == heap->tail) {
                heap->tail = prevEntry;
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

void MemManager_setArenaMemorySize(u32 val, bool b){
    arenaMemorySize = val;
    lbl_80667E58 = b;
}


//requires func_align 4
MemBlock* MemManager_804339B8(Heap* heap, MemBlock* arg1) {
    MemBlock* entryTemp = arg1;
    MemBlock* tempEntry1 = entryTemp->unk8;
    
    if (tempEntry1 != entryTemp) {
        memmove((void*)tempEntry1, entryTemp, sizeof(MemBlock));
        entryTemp = tempEntry1;
    }
    
    entryTemp->unk8 = MemBlock::dummy(); //set the pointer to a random known value
    MemBlock* currentEntry = heap->head;

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
        
            if (currentEntry == heap->head) {
                heap->head = entryTemp;
            }
            
            return entryTemp;
        }

        //If we're not at the end, keep going
        currentEntry = currentEntry->next;
    }

    if (heap->head == nullptr) {
        heap->head = entryTemp;
        heap->tail = entryTemp;
        entryTemp->prev = nullptr;
        entryTemp->next = nullptr;
    } else {
        heap->tail->next = entryTemp;
        entryTemp->prev = heap->tail;
        entryTemp->next = nullptr;
        heap->tail = entryTemp;
    }
    
    return entryTemp;
}


MemBlock* MemManager_80433AA8(Heap* heap, MemBlock* entry) {

    MemBlock* temp_r6 = entry->prev;

    if (entry->prev != nullptr) {
        if ((u32)entry == (u32)temp_r6 + temp_r6->size) {
            temp_r6->size += entry->size;
            if (entry == heap->tail) {
                heap->tail = temp_r6;
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
                if (var_r5 == heap->tail) {
                    heap->tail = temp_r6_2;
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
            var_r5 = MemManager_80433AA8(heap, var_r5);
        }
    }
    
    return entry;
}


int createRegion(u32 heapIndex, u32 size, const char* name) {
    u32 newSize = size + sizeof(MemBlock);
    
    
    if (size == 0) {
        MemBlock* temp;
        MemBlock* pLargestEntry = findLargestEntry(heapIndex);
      
        if (pLargestEntry == nullptr) newSize = 0;
        else newSize = pLargestEntry->size - sizeof(MemBlock);
    }

    int regionIndex = addHeap(createRegionHeadMemBlock(heapIndex,newSize), newSize, name);
    lbl_80667E54 = false;
    return regionIndex;
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

//requires func_align 4
u32 MemManager_804348C0(u8* arg0, u32 arg1) {
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

//dummy operator new
void* operator new(u32 arg0) {
    return 0;
}

static inline void deallocate(void* p){
    if(p != nullptr){
        if(regionIndex1 != -1){
            MemBlock* entryToDelete = VoidToMemBlock(p);
            Heap* heap = &(heapArray[(u8)entryToDelete->heapIndex]);

            //this doesn't seem right
            if(entryToDelete->size - sizeof(MemBlock) - 1 > 0x7FFFFFF - sizeof(MemBlock) - 1){
                log(true); //Since monolithsoft removed their log function, this calls the math log lol
                return;
            }
        
            heap->freeBytes += entryToDelete->size;

            //Remove the entry from the linked list
            if(entryToDelete->prev != nullptr){
                entryToDelete->prev->next = entryToDelete->next;
            }
            if(entryToDelete->next != nullptr) {
                entryToDelete->next->prev = entryToDelete->prev;
            }
        
            if (heap->unk8 == entryToDelete) {
                heap->unk8 = entryToDelete->next;
            }
        
            if (heap->unkC == entryToDelete) {
                heap->unkC = entryToDelete->prev;
            }
        
            MemBlock* entry = MemManager_804339B8(heap, entryToDelete);
            entry = unkInline1(heap, entry);
        
            if (entry != nullptr) {
                entry = unkInline1(heap, entry);
            
                if (entry != NULL) {
                    MemManager_80433AA8(heap, entry);
                }
            }
            
            heap->unk18--;
        }
    }
}

}

void operator delete(void* p) {
    mtl::deallocate(p);
}



void operator delete[](void* p) {
    mtl::deallocate(p);
}
