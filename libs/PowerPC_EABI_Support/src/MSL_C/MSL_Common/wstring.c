#include "PowerPC_EABI_Support/MSL_C/MSL_Common/wstring.h"

size_t wcslen(const wchar_t *str) {
    size_t len = -1;
    wchar_t* p = (wchar_t*)str - 1;

    do {
        len++;
    } while(*++p);

    return len;
}

//unused
void wcsnlen_s(){
}

wchar_t* wcscpy(wchar_t *dest, const wchar_t *src) {
    const wchar_t* p = (wchar_t*)src - 1;
    wchar_t* q = (wchar_t*)dest - 1;

    while (*++q = *++p);
    return dest;
}

//unused
void wcscpy_s(){
}

wchar_t* wcsncpy(wchar_t *dest, const wchar_t *src, size_t num) {
    const wchar_t* p = (const wchar_t*)src - 1;
    wchar_t* q = (wchar_t*)dest - 1;
    wchar_t zero = 0;

    num++;

    while (--num) {
        if (!(*++q = *++p)) {
            while (--num) {
                *++q = 0;
            }

            break;
        }
    }

    return dest;
}

//unused
void wcsncpy_s(){
}

//unused
wchar_t* wcscat(wchar_t*, const wchar_t*){
}

//unused
void wcscat_s(){
}

//unused
void wcsncat(){
}

//unused
void wcsncat_s(){
}

int wcscmp(const wchar_t *str1, const wchar_t *str2) {
    const wchar_t* p1 = (wchar_t *)str1 - 1;
    const wchar_t* p2 = (wchar_t *)str2 - 1;
    wchar_t	c1, c2;

    while ((c1 = *++p1) == (c2 = *++p2)) {
        if (!c1) {
            return 0;
        }
    }

    return c1 - c2;
}

//unused
void wcsncmp(){
}

wchar_t* wcschr(const wchar_t *str, const wchar_t chr) {
    const wchar_t* p = (wchar_t*)str - 1;
    wchar_t c = (chr & 0xFFFF);
    wchar_t ch;

    while (ch = (*++p& 0xFFFF)) {
        if (ch == c) {
            return ((wchar_t*)p);
        }
    }
    
    return (c ? 0 : (wchar_t*)p);
}

//unused
void wcscoll(){
}

//unused
void wcsxfrm(){
}

//unused
void wcsrchr(){
}

//unused
void wcspbrk(){
}

//unused
void wcsspn(){
}

//unused
void wcscspn(){
}

//unused
void wcstok(){
}

//unused
void wcsstr(){
}
