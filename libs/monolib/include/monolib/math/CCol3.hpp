#pragma once

namespace ml {
    struct CCol3{
        float r;
        float g;
        float b;

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

        CCol3(float r, float g, float b){
            this->r = r;
            this->g = g;
            this->b = b;
        }
    };
} //namespace ml
