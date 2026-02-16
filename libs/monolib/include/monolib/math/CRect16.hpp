#pragma once

#include <types.h>
#include "monolib/math/CPnt16.hpp"

namespace ml {
    struct CRect16 {
        CRect16(){
        }
    
        CRect16(s16 x, s16 y, s16 width, s16 height){
            set(x, y, width, height);
        }

        CRect16(const CPnt16& pos, const CPnt16& size){
            set(pos, size);
        }

        void set(s16 x, s16 y, s16 width, s16 height){
            mPos.x = x;
            mPos.y = y;
            mSize.x = width;
            mSize.y = height;
        }

        void set(const CPnt16& pos, const CPnt16& size){
            mPos.x = pos.x;
            mPos.y = pos.y;
            mSize.x = size.x;
            mSize.y = size.y;
        }
    
        bool isInside(const CPnt16& point) const;

        CPnt16 mPos;
        CPnt16 mSize;

        static CRect16 zero;
    };
} //namespace ml
