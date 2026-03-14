#pragma once

namespace ml {
    struct CCol3{
        CCol3(){}
        CCol3(float r, float g, float b){
            set(r, g, b);
        }

        void set(float r, float g, float b){
            this->r = r;
            this->g = g;
            this->b = b;
        }

        void clamp(float min, float max){
            if(r > max) r = max;
            else if(r < min) r = min;
            if(g > max) g = max;
            else if(g < min) g = min;
            if(b > max) b = max;
            else if(b < min) b = min;
        }

        /* Nesting the variables in a nameless makes mwcc use lwz/stw for struct copies,
        which is more efficient than lfs/stfd. */
        struct{
            float r;
            float g;
            float b;
        };

        static CCol3 white;
        static CCol3 gray;
        static CCol3 black;
        static CCol3 red;
        static CCol3 green;
        static CCol3 blue;
        static CCol3 yellow;
        static CCol3 cyan;
        static CCol3 magenta;
        static CCol3 salmon;
        static CCol3 orange;
    };
} //namespace ml
