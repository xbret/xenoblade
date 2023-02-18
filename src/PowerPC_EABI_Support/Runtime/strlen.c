#include "stl/string.h"

size_t strlen(const char* str){
    int length = -1;
    u8* p = (u8*)str - 1;

    do{
        length++;
    }while(*++p);

    return length;
}