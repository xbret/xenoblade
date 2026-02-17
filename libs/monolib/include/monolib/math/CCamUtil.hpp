#pragma once

#include "monolib/math/CVec3.hpp"

namespace ml {
    struct CCamUtil {
        static void getXYZ2ZXY(CVec3& outVec, const CVec3& vec);
    };
} //namespace ml
