#pragma once

namespace ml {
    struct CVec4{
        struct{
        float x;
        float y;
        float z;
        float w;
        };

        static CVec4 zero;
        static CVec4 unitX;
        static CVec4 unitY;
        static CVec4 unitZ;
        static CVec4 unit;

        CVec4(float x, float y, float z, float w){
            this->x = x;
            this->y = y;
            this->z = z;
            this->w = w;
        }
    };
} //namespace ml
