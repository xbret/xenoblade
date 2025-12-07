#pragma once

#include <types.h>
#include "monolib/math/CPnt16.hpp"

namespace ml {
    struct CRect16 {
        s16 x;
        s16 y;
        s16 width;
        s16 height;
    
        CRect16(){
            x = 0;
            y = 0;
            width = 0;
            height = 0;
        }
    
        CRect16(s16 x, s16 y, s16 width, s16 height){
            this->x = x;
            this->y = y;
            this->width = width;
            this->height = height;
        }
    
        bool isInside(const CPnt16& point) const;
    };
} //namespace ml
