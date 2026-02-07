#pragma once

#include <types.h>
#include "monolib/math/CVec3.hpp"
#include "monolib/math/CMat34.hpp"
#include "monolib/math/CQuat.hpp"

namespace ml{
    struct CAttrTransform{
        enum Flags{
            FLAG_0 = 1 << 0,
            FLAG_1 = 1 << 1,
            FLAG_2 = 1 << 2,
            FLAG_USE_ZXY = 1 << 3
        };

        CAttrTransform(){
            clear();
        }

        void clear();
        void update();

        CVec3 mPos; //0x0
        CVec3 mRot; //0xC
        CMat34 mMtx1; //0x18
        CMat34 mLocalMat; //0x48
        CMat34 mLocalMatInv; //0x78
        CQuat unkA8;
        CVec3 mPrevPos; //0xB8
        CVec3 mPrevRot; //0xC4
        CQuat mLocalQuat; //0xD0
        u32 mFlags; //0xE0
    };
} //namespace ml
