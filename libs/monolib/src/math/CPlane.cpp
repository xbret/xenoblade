#include "monolib/math.hpp"

namespace ml {

    void CPlane::set(const CVec3& r4, const CVec3& r5, const CVec3& r6){
        CVec3 vec1;
        CVec3::sub(vec1, r5, r4);
        CVec3 vec2;
        CVec3::sub(vec2, r6, r4);
        CVec3 vec3;
        CVec3::cross(vec3, vec1, vec2);
        vec = vec3;
        normalize();
        unkC = -CVec3::dot(vec, r4);
    }

    //TODO: not sure if the first parameter is CPlane or something else
    void CPlane::getCross(const CPlane& r4, const CVec3& r5, const CVec3& r6){
        float f2 = CVec3::dot(r4.vec, r5);
        float f1 = CVec3::dot(r4.vec, r6);
        float scale = (-(r4.unkC + f2))/f1;
        CVec3 r1_20;
        CVec3::scale(r1_20, r6, scale);
        CVec3::add(vec, r5, r1_20);
    }

}
