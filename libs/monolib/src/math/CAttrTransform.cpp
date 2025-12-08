#include "monolib/math.hpp"

namespace ml{
    void CAttrTransform::clear() {
        vec1 = CVec3::zero;
        mRotation = CVec3::zero;
        PSMTXIdentity(mMtx1.m);
        unkB8 = CVec3::zero;
        unkC4 = CVec3::zero;
        PSMTXIdentity(mMtx2.m);
        PSMTXIdentity(mMtx3.m);
        unkD0.setIdentity();
        mFlags = 0;
    }

    void func_80433080(CQuat& quat, CVec3& vec){

        /*
        float dVar20 = r3.x + r3.x;
        float dVar17 = r3.y + r3.y;
        float dVar18 = r3.z + r3.z;
        float dVar14 = 1.0f;
                float dVar19 = -((r3.x * dVar18) - (r3.w * dVar17));

        dVar19 = clamp(dVar19, -1.0f, 1.0f); //unnecessary, asin function already does clamping
        float angle = asin(dVar19);
                float dVar16 = r3.x * dVar20;
        float dVar22 = r3.x * dVar17;
        dVar19 = r3.z * dVar18;
        r4.y = angle;
        float dVar21 = (r3.w * dVar18);
                
        if (angle < halfpi) {
            if (angle > -halfpi) {
                dVar17 *= r3.y;
                r4.x = DEG2RAD(atan2((r3.y * dVar18) + (r3.w * dVar20), 1.0f - (dVar16 + dVar17)));
                r4.z = DEG2RAD(atan2((dVar22 + dVar21),1.0f - (dVar17 + dVar19)));
            }else{
                r4.x = -DEG2RAD(atan2((dVar22 - dVar21),1.0f - (dVar16 + dVar19)));
                r4.z = 0.0f;
            }
        }else{
            r4.x = DEG2RAD(atan2((dVar22 - dVar21),1.0f - (dVar16 + dVar19)));
            r4.z = 0.0f;
        }
        */
    }
} //namespace ml
