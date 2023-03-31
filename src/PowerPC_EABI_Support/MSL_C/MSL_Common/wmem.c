#include "stl/wchar.h"
#include "stl/mem.h"

void wmemcpy(wchar_t* dest, const wchar_t* src, size_t n){
    memcpy(dest,src,n*2);
}

wchar_t* wmemchr(wchar_t* s, wchar_t c, int n) {
    s32 i;

    for(i = 0; i != n; s++, i++){
        if(*s == c) return s;
    }

    return 0;
}