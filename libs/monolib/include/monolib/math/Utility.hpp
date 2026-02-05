#pragma once

#include <nw4r/math.h>

#define PI 3.14159265f
#define DEG2RAD(x) ((x)*(PI/180.0f))

//Utility math functions
namespace ml{
    namespace math{

    inline float abs(float x){
        return (double)nw4r::math::FAbs(x);
    }

    inline float sqrt(float x){
        return nw4r::math::FSqrt(x);
    }

    inline float sin(float x){
        return nw4r::math::SinRad(x);
    }

    inline float cos(float x){
        return nw4r::math::CosRad(x);
    }

    inline float asin(float x){
        if (x < -1.0f) x = -1.0f;
        else if(x > 1.0f) x = 1.0f;
        return nw4r::math::AsinRad(x);
    }

    inline float acos(float x){
        if (x < -1.0f) x = -1.0f;
        else if(x > 1.0f) x = 1.0f;
        return nw4r::math::AcosRad(x);
    }

    inline float atan2(float y, float x){
        return nw4r::math::Atan2FIdx(y, x);
    }

    inline float atan2Deg(float y, float x){
        return nw4r::math::Atan2Deg(y, x);
    }

    inline float atan2Rad(float y, float x){
        return nw4r::math::Atan2Rad(y, x);
    }

    inline float clamp(float x, float min, float max) {
        if (x >= max) x = max;
        else if (x <= min) x = min;
        return x;
    }

    inline float dot(const float* vec){
        return vec[0]*vec[0] + vec[1]*vec[1] + vec[2]*vec[2];
    }

    } // namespace math
} // namespace ml
