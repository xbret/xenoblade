#pragma once

#include <types.h>

namespace ml {
    struct CPnt16{
        CPnt16(){}

        CPnt16(s16 x, s16 y){
            set(x,y);
        }

        void set(s16 x, s16 y){
            this->x = x;
            this->y = y;
        }

        /* Nesting the variables in a nameless makes mwcc use lwz/stw for struct copies,
        which is more efficient than lhz/sth. */
        struct{
            s16 x;
            s16 y;
        };
    };
} //namespace ml
