#pragma once

#include <types.h>

namespace ml{
    namespace math{
        void mtInit(u32 seed);
        int mtRand();
        int mtRand(int max);
        int mtRand(int min,int max);
    } //namespace math
} //namespace ml
