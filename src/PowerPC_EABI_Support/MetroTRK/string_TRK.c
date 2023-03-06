#include "PowerPC_EABI_Support/MetroTRK/trk.h"

int TRK_strlen(const char* s) {
    u8 c;
    int result = -1;
    u8* sTemp = (u8*)s - 1;
    
    do {
        c = sTemp[1];
        sTemp++;
        result++;
    } while (c != 0);

    return result;
}