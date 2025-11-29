#pragma once

namespace ml {
    
    struct CCol4{
        float r;
        float g;
        float b;
        float a;

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

        CCol4(float r, float g, float b, float a){
            this->r = r;
            this->g = g;
            this->b = b;
            this->a = a;
        }
    };

} //namespace ml
