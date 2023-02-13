#ifndef MLIB_VM
#define MLIB_VM

#include "types.h"
#include "PowerPC_EABI_Support/Runtime/__mem.h"

/*#ifdef __cplusplus
extern "C" {
#endif*/


struct SBOpcode{
    const char* name; //0x0
    s16 unk4;
    s16 unk6;
};


inline int readInt(u8* array, int offset){
    return *(int*)(array + offset);
}
inline u32 readUInt(u8* array, int offset){
    return *(u32*)(array + offset);
}
inline void writeInt(u8* array, int offset, int val){
    *(int*)(array + offset) = val;
}
inline void writeUInt(u8* array, int offset, u32 val){
    *(u32*)(array + offset) = val;
}



/*#ifdef __cplusplus
}
#endif*/
#endif