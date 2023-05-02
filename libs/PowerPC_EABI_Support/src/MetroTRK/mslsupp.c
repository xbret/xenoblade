#include "types.h"
#include "PowerPC_EABI_Support/MetroTRK/target_options.h"
#include "PowerPC_EABI_Support/MetroTRK/trk.h"

int __read_file(u32 r3, char* r4, u32* r5, void* r6);
int __write_file(u32 r3, char* r4, u32* r5, void* r6);
int __access_file(u32 r3, char* r4, u32* r5, void* r6, u32 r7);


int __read_console(u32 r3, char* r4, u32* r5, void* r6){
    if(GetUseSerialIO() == 0) return 1;
    return __read_file(0, r4, r5, r6);
}

int __TRK_write_console(u32 r3, char* r4, u32* r5, void* r6){
    if(GetUseSerialIO() == 0) return 1;
    return __write_file(1, r4, r5, r6);
}

int __read_file(u32 r3, char* r4, u32* r5, void* r6){
    return __access_file(r3, r4, r5, r6, 0xD1);
}

int __write_file(u32 r3, char* r4, u32* r5, void* r6){
    return __access_file(r3, r4, r5, r6, 0xD0);
}


int __access_file(u32 r3, char* r4, u32* r5, void* r6, u32 r7){
    u32 sp8;

    if(!GetTRKConnected()) return 1;

    sp8 = *r5;
    u32 r0 = TRKAccessFile(r7, r3, &sp8, r4);
    *r5 = sp8;

    switch((u8)r0){
        case 0:
            return 0;
        case 2:
            return 2;
        default:
            return 1;
    }
}
