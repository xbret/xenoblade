#include "types.h"
#include <typeinfo>


typedef struct type_info_struct type_info_struct;

typedef struct type_info_base_list {
	type_info_struct *baseTypeInfo;
	long offset;
}	type_info_base_list;

typedef struct type_info_ambighead {
	void* baseTypeInfo;
	long offset;
	long bases;
}	type_info_ambighead;

struct type_info_struct {
	char* typeName;
	type_info_base_list* baseList;
};

typedef struct RTTIVTableHeader {
	type_info_struct* typeInfo;
	long offset;
}	RTTIVTableHeader;

extern "C"{
    void* __get_typeid(void*, long);
    void* __dynamic_cast(void*, int, type_info_struct*, type_info_struct*, short);
}

static type_info_struct unknown_type = {"???"};

static int strequal(const char* s1, const char* s2){
    for(; *s1 == *s2; s1++, s2++){
        if (*s1 == 0) return 0;
    }
    return *(u8*)s1 - *(u8*)s2;
}

//unused
void* __get_typeid(void* obj, long offset){
    if(obj == NULL) throw std::bad_typeid();

    if((obj = **(void***)((char*)obj + offset)) == 0){
		return &unknown_type;
	}
	
	return obj;
}

void* __dynamic_cast(void* obj, int offset, type_info_struct* typeInfo, type_info_struct* subtypeInfo, short isReference) {
    RTTIVTableHeader* vtable_header;
    type_info_base_list* list;
    void* result;
    int i;
    int bases;
    long temp;

    if (obj == NULL) return NULL;
    
    vtable_header = *(RTTIVTableHeader**)((u32)obj + offset);
    
    if ( vtable_header->typeInfo != NULL) {
        result = (char*)obj + vtable_header->offset;
        if (typeInfo == NULL || strequal(vtable_header->typeInfo->typeName, typeInfo->typeName) == 0) {
                return result;
        }

        list = vtable_header->typeInfo->baseList;
    
       	if(list != NULL){
            for(; list->baseTypeInfo; list++){
                if (list->offset & 0x80000000) {
                    temp = (list->offset & 0x7FFFFFFF);
                    bases = ((type_info_ambighead*)list)->bases;
                    
                    if (vtable_header->offset + temp == 0 && strequal(list->baseTypeInfo->typeName, typeInfo->typeName) == 0) {
                        list = (type_info_base_list*)((type_info_ambighead*)list + 1);
                        
                        for(i = 0; i < bases; i++){
                            if (vtable_header->offset + list->offset == 0 && strequal(list->baseTypeInfo->typeName, subtypeInfo->typeName) == 0) {
                                return (char*)result + list->offset;    
                            }
                            list++;
                        }
                        
                        break;
                    }else{
                        list = (type_info_base_list*)((type_info_ambighead*)list + 1);
					    list += bases - 1;
                    }
                }else{
                    if (strequal(list->baseTypeInfo->typeName, typeInfo->typeName) == 0) {
                        return (char*)result + list->offset;
                    }
                }
            }
        }
    }
    
    if (isReference) throw std::bad_cast();
    return NULL;
}
