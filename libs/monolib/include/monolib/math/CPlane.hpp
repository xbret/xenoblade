#pragma once

#include "monolib/math/CVec3.hpp"

namespace ml {
    struct CPlane {
        CPlane(){
        }
        CPlane(const CVec3& pos, const CVec3& p1, const CVec3& p2){
            set(pos, p1, p2);
        }

        CPlane* set(const CVec3& pos, const CVec3& p1, const CVec3& p2);
        static void getCross(CVec3& outVec, const CPlane& plane, const CVec3& rayOrigin, const CVec3& rayDir);

        void normalize(){
            mNormal.normalizeSub();
        }

        float getPointDistance(const CVec3& vec) const {
            return CVec3::dot(vec, mNormal) + mDist;
        }

        //Gets the side of the plane the point is on. (TODO: since the distance is flipped, true should be
        //the positive side, and false should be the negative side?)
        bool getSide(const CVec3& vec) const {
            if(getPointDistance(vec) < 0) return true;
            else return false;
        }

        //Determines if both points are on the same side of the plane.
        bool isSameSide(const CVec3& vec1, const CVec3& vec2) const {
            float f1 = getPointDistance(vec1);
            float f0 = getPointDistance(vec2);
            
            bool r3 = f1 >= 0;
            bool r0 = f0 >= 0;
            //TODO: is this some weird inline for calculating if only one of two conditions are true?
            return r3 ^ r0;
        }

        CVec3 mNormal; //0x0
        float mDist; //0x4
    };

} //namespace ml
