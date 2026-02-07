#include "monolib/math.hpp"
#include <revolution/MTX.h>

namespace ml{
    CQuat CQuat::zero = CQuat(0,0,0,0);
    CQuat CQuat::identity = CQuat(0,0,0,1);

    void CQuat::slerp(CQuat& outQuat, const CQuat& a, const CQuat& b, float t){
        C_QUATSlerp(a, b, outQuat, t);
    }

    void CQuat::setRotZXY(const CVec3* vec) {
        CMat34 mat;
        mat.setRotZXY(*vec);
        mat.getRotQuat(*this);
    }
    
    void CQuat::getRotZXY(CVec3* outVec) const {
        CMat34 mat;
        mat.setRotQuat(*this);
        mat.getRotZXY(*outVec);
    }
} //namespace ml
