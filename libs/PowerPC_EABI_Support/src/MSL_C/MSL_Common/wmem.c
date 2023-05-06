#include <wchar.h>
#include <string.h>

wchar_t* wmemcpy(wchar_t* dest, const wchar_t* src, size_t n){
    memcpy(dest,src,n * sizeof(wchar_t));
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
