#include "monolib/math.hpp"

namespace ml {
    //Not in XC3D
    void CCamUtil::getXYZ2ZXY(CVec3& outVec, const CVec3& vec){
        CMat33 mat;
        mat.setRotXYZ(vec);
        mat.getRotZXY(outVec);
    }
} // namespace ml
