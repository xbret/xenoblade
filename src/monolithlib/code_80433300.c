HeapListEntry* fn_804339B8(HeapListEntry** memoryAllocHeapArray_ptr, HeapListEntry* arg1) {
    HeapListEntry* var_r4 = arg1;
    HeapListEntry* temp_r31 = var_r4->unk8;
    
    if (temp_r31 != var_r4) {
        memmove((void*)temp_r31, var_r4, sizeof(HeapListEntry));
        var_r4 = temp_r31;
    }
    
    var_r4->unk8 = (HeapListEntry*)0xA7FB94C7; //why this number? weird
    HeapListEntry* var_r5 = memoryAllocHeapArray_ptr[0];

    while(var_r5 != NULL){
        if (var_r4 < var_r5) {
            if (var_r5->prev != NULL) {
                var_r5->prev->next = var_r4;
            }
            
            var_r4->prev = var_r5->prev;
            var_r5->prev = var_r4;
            var_r4->next = var_r5;
        
            if (var_r5 == memoryAllocHeapArray_ptr[0]) {
                memoryAllocHeapArray_ptr[0] = var_r4;
            }
            
            return var_r4;
        }
        
        var_r5 = var_r5->next;
    }


    if (var_r5 == NULL) {
        if (memoryAllocHeapArray_ptr[0] == NULL) {
            memoryAllocHeapArray_ptr[0] = var_r4;
            memoryAllocHeapArray_ptr[1] = var_r4;
            var_r4->prev = (HeapListEntry*)NULL;
            var_r4->next = (HeapListEntry*)NULL;
        } else {
            memoryAllocHeapArray_ptr[1]->next = var_r4;
            var_r4->prev = memoryAllocHeapArray_ptr[1];
            var_r4->next = (HeapListEntry*)NULL;
            memoryAllocHeapArray_ptr[1] = var_r4;
        }
    }
    return var_r4;
}


HeapListEntry* fn_80433AA8(HeapListEntry* arg0, HeapListEntry* arg1) {

    HeapListEntry* var_r31 = arg1;
    HeapListEntry* temp_r6 = arg1->prev;
    
    if (arg1->prev != NULL) {
        if ((u32)arg1 == (u32)temp_r6 + temp_r6->size) {
            temp_r6->size += arg1->size;
            if (arg1 == arg0->next) {
                arg0->next = temp_r6;
            }
            temp_r6->next = arg1->next;

            if (arg1->next != NULL) {
                arg1->next->prev = temp_r6;
                var_r31 = temp_r6;
            }
        }
    }
    
    HeapListEntry* var_r5 = var_r31->next;
    
    if (var_r5 != NULL) {
        HeapListEntry* temp_r6_2 = var_r5->prev;
        if (temp_r6_2 != NULL) {
            if ((u32)var_r5 == (u32)temp_r6_2 + temp_r6_2->size) {
                temp_r6_2->size += var_r5->size;
                if (var_r5 == arg0->next) {
                    arg0->next = temp_r6_2;
                }
                temp_r6_2->next = var_r5->next;
                if (var_r5->next != NULL) {
                    var_r5->next->prev = temp_r6_2;
                    var_r5 = temp_r6_2;
                }
            }
        }
        if (var_r5->next != NULL) {
            fn_80433AA8(arg0, var_r5->next);
        }
    }
    
    return var_r31;
}