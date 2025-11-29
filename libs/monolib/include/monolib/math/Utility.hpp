#pragma once

#include <nw4r/math.h>

#define PI 3.14159265f
#define DEG2RAD(x) ((x)*(PI/180.0f))

namespace ml{

    //Helper functions
    inline float Asin(float x){
        if (x < -1.0f) x = -1.0f;
        else if(x > 1.0f) x = 1.0f;
        return nw4r::math::AsinRad(x);
    }

    inline float Clamp(float x, float min, float max) {
        if (x >= max) x = max;
        else if (x <= min) x = min;
        return x;
    }

} //namespace ml
