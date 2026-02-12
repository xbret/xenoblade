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

        CVec3 convertRayToNormal(const CVec3& rayStartPos, const CVec3& rayEndPos) const {
            CVec3 normal = rayEndPos - rayStartPos;
            normal.normalizeSub();
            return normal;
        }

        //Sets this plane from the given ray start/end position.
        void set(const CVec3& rayStartPos, const CVec3& rayEndPos){
            mNormal = convertRayToNormal(rayStartPos, rayEndPos);
            mDist = -CVec3::dot(rayStartPos, mNormal);
        }

        float getPointDistance(const CVec3& pos) const {
            return CVec3::dot(pos, mNormal) + mDist;
        }
        
        bool isWithinDistance(const CVec3& vec, float distance) const {
            if(getPointDistance(vec) < distance) return true;
            else return false;
        }

        bool isOnNegativeSide(const CVec3& vec) const {
            if(getPointDistance(vec) < 0) return true;
            else return false;
        }

        bool isOnPositiveSide(const CVec3& vec) const {
            if(getPointDistance(vec) >= 0) return true;
            else return false;
        }

        //Determines if the points are on different sides of the plane.
        bool isDifferentSide(const CVec3& vec1, const CVec3& vec2) const {
            float f0 = getPointDistance(vec2);
            float f1 = getPointDistance(vec1);
            
            bool r3 = f1 >= 0;
            bool r0 = f0 >= 0;
            //TODO: is this some weird inline for calculating if only one of two conditions are true?
            return r3 ^ r0;
        }

        CVec3 mNormal; //0x0
        float mDist; //0x4
    };

} //namespace ml
