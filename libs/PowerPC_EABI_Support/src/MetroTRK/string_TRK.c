#include "PowerPC_EABI_Support/MetroTRK/string_TRK.h"

int TRK_strlen(const char* s) {
    ui8 c;
    int result = -1;
    ui8* sTemp = (ui8*)s - 1;
    
    do {
        c = sTemp[1];
        sTemp++;
        result++;
    } while (c != 0);

    return result;
}
