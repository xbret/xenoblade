#include "monolib/math.hpp"

namespace ml {

    //Sets this plane from the given position, and two given points on the plane.
    CPlane* CPlane::set(const CVec3& pos, const CVec3& p1, const CVec3& p2){
        CVec3 temp1, temp2, cross;
        CVec3::sub(temp1, p1, pos);
        CVec3::sub(temp2, p2, pos);
        CVec3::cross(cross, temp1, temp2);

        mNormal = cross;
        normalize();
        mDist = -CVec3::dot(pos,mNormal);

        return this;
    }

    //Calculates the intersection point of the given ray with this plane.
    /* BUG: No check is done to see if the first dot product is near or less than 0 (the ray won't intersect).
    In that specific case, the function will return a nonsense value. */
    void CPlane::getCross(CVec3& outVec, const CPlane& plane, const CVec3& rayOrigin, const CVec3& rayDir){
        //Calculate the time t at which the ray will intersect the plane
        float val1 = CVec3::dot(plane.mNormal, rayOrigin) + plane.mDist; //Distance is flipped, so + distance is used
        float val2 = CVec3::dot(plane.mNormal, rayDir);
        float t = -val1/val2;
        
        //Calculate the intersection point
        outVec.set(rayOrigin + rayDir*t);
    }

}
