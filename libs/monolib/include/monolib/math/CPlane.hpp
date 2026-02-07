#pragma once

#include "monolib/math/CVec3.hpp"

namespace ml {
    struct CPlane {
        void set(const CVec3& r4, const CVec3& r5, const CVec3& r6);
        void getCross(const CPlane& r4, const CVec3& r5, const CVec3& r6);

        void normalize(){
            vec.normalizeSub();
        }

        CVec3 vec; //0x0
        float unkC;
    };

} // namespace ml
