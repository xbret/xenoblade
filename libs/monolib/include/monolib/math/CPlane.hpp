#pragma once

#include "monolib/math/CVec3.hpp"

namespace ml {
    struct CPlane {
        CPlane(const CVec3& pos, const CVec3& p1, const CVec3& p2){
            set(pos, p1, p2);
        }

        CPlane* set(const CVec3& pos, const CVec3& p1, const CVec3& p2);
        static void getCross(CVec3& outVec, const CPlane& plane, const CVec3& rayOrigin, const CVec3& rayDir);

        void normalize(){
            mNormal.normalizeSub();
        }

        CVec3 mNormal; //0x0
        float mDist; //0x4
    };

} // namespace ml
