#pragma once

#include "monolithlib/Math.hpp"

namespace ml{
	struct Transform{
        Vec3 vec1; //0x0
        Vec3 rotation; //0xC
        Mat34 mtx1; //0x18
        Mat34 mtx2; //0x48
        Mat34 mtx3; //0x78
        Quat unkA8;
        Vec3 unkB8;
        Vec3 unkC4;
        Quat unkD0;
        u32 flags; //0xE0

        Transform(){
            clear();
        }

        void clear();
        void update();
    };
}