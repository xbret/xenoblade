#pragma once

#include <types.h>

namespace ml {
    struct CPnt16{
        s16 x;
        s16 y;

        CPnt16(){
            x = 0;
            y = 0;
        }
        CPnt16(s16 x, s16 y){
            this->x = x;
            this->y = y;
        }
    };
} //namespace ml
