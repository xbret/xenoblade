#pragma once

#include "types.h"
#include "monolib/Math.hpp"

namespace ml{
	struct CAttrTransform{
        CVec3 vec1; //0x0
        CVec3 rotation; //0xC
        CMat34 mtx1; //0x18
        CMat34 mtx2; //0x48
        CMat34 mtx3; //0x78
        CQuat unkA8;
        CVec3 unkB8;
        CVec3 unkC4;
        CQuat unkD0;
        u32 flags; //0xE0

        CAttrTransform(){
            clear();
        }

        void clear();
        void update();
    };
}
