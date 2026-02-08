#include "monolib/math.hpp"

namespace ml {

    CPlane* CPlane::set(const CVec3& pos, const CVec3& p1, const CVec3& p2){
        CVec3 temp1;
        CVec3 temp2;
        CVec3 cross;
        CVec3::sub(temp1, p1, pos);
        CVec3::sub(temp2, p2, pos);
        CVec3::cross(cross, temp1, temp2);
        mNormal = cross;
        normalize();
        mDist = -CVec3::dot(pos,mNormal);
        return this;
    }

    void CPlane::getCross(CVec3& outVec, const CPlane& plane, const CVec3& rayOrigin, const CVec3& rayDir){
        /* BUG: No check is done to see if the first dot product is near or less than 0 (the ray won't intersect).
        In that specific case, the function will return a nonsense value. Additionally, the regular formula for the
        top value has - dist instead. Maybe the distance value is flipped, and this is intentional? */
        
        //Calculate the time t at which the ray will intersect the plane
        float val1 = CVec3::dot(plane.mNormal, rayOrigin) + plane.mDist;
        float val2 = CVec3::dot(plane.mNormal, rayDir);
        float t = -val1/val2;
        
        //Calculate the intersection point
        outVec.set(rayOrigin + rayDir*t);
    }

}
