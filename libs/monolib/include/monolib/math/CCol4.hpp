#pragma once

#include <types.h>


#define COLOR_TO_U32(r, g, b, a) (((u8)(255 * r) << 24) | ((u8)(255 * g) << 16) | ((u8)(255 * b) << 8) | (u8)(255 * a))

namespace ml {
    
    struct CCol4{
        CCol4(){}
        CCol4(float r, float g, float b, float a){
            set(r,g,b,a);
        }

        void set(float r, float g, float b, float a){
            this->r = r;
            this->g = g;
            this->b = b;
            this->a = a;
        }

        void clamp(float min, float max){
            if(r > max) r = max;
            else if(r < min) r = min;
            if(g > max) g = max;
            else if(g < min) g = min;
            if(b > max) b = max;
            else if(b < min) b = min;
            if(a > max) a = max;
            else if(a < min) a = min;
        }

        u32 toU32() const {
            return COLOR_TO_U32(r, g, b, a);
        }

        /* Nesting the variables in a nameless makes mwcc use lwz/stw for struct copies,
        which is more efficient than lfs/stfd. */
        struct{
            float r;
            float g;
            float b;
            float a;
        };

        static CCol4 white;
        static CCol4 gray;
        static CCol4 black;
        static CCol4 red;
        static CCol4 green;
        static CCol4 blue;
        static CCol4 yellow;
        static CCol4 cyan;
        static CCol4 magenta;
        static CCol4 salmon;
        static CCol4 orange;
        static CCol4 zero;

    };

} //namespace ml
