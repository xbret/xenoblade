#include "wchar.h"
#include "mem.h"

void wmemcpy(wchar_t* dest, const wchar_t* src, size_t n){
    memcpy(dest,src,n*2);
}

//unused
void wmemcpy_s(){
}

//unused
void wmemmove(){
}

//unused
void wmemmove_s(){
}

//unused
void wmemset(){
}

wchar_t* wmemchr(wchar_t* s, wchar_t c, int n) {
    s32 i;

    for(i = 0; i != n; s++, i++){
        if(*s == c) return s;
    }

    return 0;
}

//unused
void wmemcmp(){
}