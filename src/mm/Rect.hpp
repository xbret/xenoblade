#ifndef _MM_RECT_H
#define _MM_RECT_H

#include "types.h"

struct Rect {
    s16 x;
    s16 y;
    s16 width;
    s16 height;

    Rect(){
        x = 0;
        y = 0;
        width = 0;
        height = 0;
    }
};

#endif