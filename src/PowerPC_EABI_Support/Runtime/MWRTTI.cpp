#include "types.h"
#include "stl/typeinfo" //#include <typeinfo>


//idk what this is
extern const u32 lbl_8050CE10[4] = {0,0,0,0};

namespace std{
    //supposed to be in NMWException
    terminate_handler thandler = dthandler;
}

CW_FORCE_STRINGS(MWRTTI_cpp, "???", "!std::exception!!std::bad_typeid!!");

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
    void* __dynamic_cast(void*, int, type_info_struct*, type_info_struct*, short);
}

static inline int strEqual(const char* s1, const char* s2){
    for(; *s1 == *s2; s1++, s2++){
        if (*s1 == 0) return 0;
    }
    return *(u8*)s1 - *(u8*)s2;
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
        if (typeInfo == NULL || strEqual( vtable_header->typeInfo->typeName, typeInfo->typeName) == 0) {
                return result;
        }

        list = vtable_header->typeInfo->baseList;
    
       	if(list != NULL){
            for(; list->baseTypeInfo; list++){
                if (list->offset & 0x80000000) {
                    temp = (list->offset & 0x7FFFFFFF);
                    bases = ((type_info_ambighead*)list)->bases;
                    
                    if (vtable_header->offset + temp == 0 && strEqual(list->baseTypeInfo->typeName, typeInfo->typeName) == 0) {
                        list = (type_info_base_list*)((type_info_ambighead*)list + 1);
                        
                        for(i = 0; i < bases; i++){
                            if (vtable_header->offset + list->offset == 0 && strEqual(list->baseTypeInfo->typeName, subtypeInfo->typeName) == 0) {
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
                    if (strEqual(list->baseTypeInfo->typeName, typeInfo->typeName) == 0) {
                        return (char*)result + list->offset;
                    }
                }
            }
        }
    }
    
    if (isReference) throw std::bad_cast();
    return NULL;
}
