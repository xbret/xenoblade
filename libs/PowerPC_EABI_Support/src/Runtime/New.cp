#include <new>
#include "types.h"

//Unused file. Needed to generate rtti info for std::exception in the right place.

//Dummy function to force the rtti info to generate
void dummy(){
    throw std::bad_alloc();
}

/*
//unused
DECL_WEAK void* operator new(size_t count){
    return 0;
}

//unused
DECL_WEAK void operator delete(void* p) throw() {
}

//unused
DECL_WEAK void* operator new[](size_t count){
    return 0;
}

//unused
DECL_WEAK void operator delete[](void* p) throw() {
}
*/
