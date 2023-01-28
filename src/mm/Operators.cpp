#include "mm/Operators.hpp"
#include "fdlibm.h"

//Compiled with the ec++ flag? without it the compiler requires throw() to be added for the operators, which messes them up

//based on xcde
//namespace mtl{
//    namespace MemManager{


u32 memoryAllocHeapArray[80][28]; //bss
u32 lbl_80665E30 = -1;


/*Operator new seems to have been inlined in Monolithsoft's code, with it following this general pattern:

int r4; //seems to often be the result of fn_804375B4, but not always
void* p = mm_malloc(sizeof(Class),r4);
Class* c;

if(p != null){
    c = Class(p,...); //can be any one of the class's constructors, with/without params
}

bl fn_804375B4
mr r4, r3
li r3, size
bl mm_malloc
cmpwi r3, 0
beq .skip
bl constructor
.skip
*/

//doesn't seem like operator new
void* operator new(u32 arg0) {
    return 0;
}


void operator delete(void* p) {
    if(p != NULL){
        if(lbl_80665E30 != -1){
            HeapListEntry* temp_r4 = (HeapListEntry*)((u32)p - 0x20);
            u32* memoryAllocHeapArray_ptr = memoryAllocHeapArray[(u8)temp_r4->unk10];
            
            if((temp_r4->size - 0x21) > 0x07FFFFDE){
                log(true);
                return;
            }
        
            memoryAllocHeapArray_ptr[8] += temp_r4->size;
        
            if(temp_r4->prev != NULL){
                temp_r4->prev->next = temp_r4->next;
            }
        
            if(temp_r4->next != NULL) {
                temp_r4->next->prev = temp_r4->prev;
            }
        
            if (memoryAllocHeapArray_ptr[2] == (u32)temp_r4) {
                memoryAllocHeapArray_ptr[2] = (u32)temp_r4->next;
            }
        
            if (memoryAllocHeapArray_ptr[3] == (u32)temp_r4) {
                memoryAllocHeapArray_ptr[3] = (u32)temp_r4->prev;
            }
        
            HeapListEntry* var_r3 = fn_804339B8(memoryAllocHeapArray_ptr, temp_r4);
            HeapListEntry* temp_r5 = var_r3->prev;
        
            if (temp_r5 != NULL) {   
                if ((u32)var_r3 == ((u32)temp_r5 + temp_r5->size)) {
                    temp_r5->size += var_r3->size;
                
                    if ((u32)var_r3 == memoryAllocHeapArray_ptr[1]) {
                        memoryAllocHeapArray_ptr[1] = (u32)temp_r5;
                    }
                
                    temp_r5->next = var_r3->next;
                
                    if (var_r3->next != NULL) {
                        var_r3->next->prev = temp_r5;
                        var_r3 = temp_r5;
                    }
                }
            }
        
            HeapListEntry* var_r4 = var_r3->next;
        
            if (var_r4 != NULL) {
                HeapListEntry* temp_r5_2 = var_r4->prev;
            
                if (temp_r5_2 != NULL) {
                    if((u32)var_r4 == ((u32)temp_r5_2 + temp_r5_2->size)) {
                        temp_r5_2->size += var_r4->size;
                    
                        if ((u32)var_r4 == memoryAllocHeapArray_ptr[1]) {
                            memoryAllocHeapArray_ptr[1] = (u32)temp_r5_2;
                        }
                    
                        temp_r5_2->next = var_r4->next;
                    
                        if (var_r4->next != NULL) {
                            var_r4->next->prev = temp_r5_2;
                            var_r4 = temp_r5_2;
                        }
                    }
                }

                var_r4 = var_r4->next;
            
                if (var_r4 != NULL) {
                    fn_80433AA8(memoryAllocHeapArray_ptr, var_r4);
                }
            }
            
            memoryAllocHeapArray_ptr[6]--;
        }
    }
}

//Same as delete
void operator delete[](void* p) {
}