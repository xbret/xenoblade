#include "monolib/math/CVec3.hpp"
#include "monolib/math/FloatUtils.hpp"

namespace ml{
    CVec3 CVec3::zero = CVec3(0,0,0);
    CVec3 CVec3::unitX = CVec3(1,0,0);
    CVec3 CVec3::unitY = CVec3(0,1,0);
    CVec3 CVec3::unitZ = CVec3(0,0,1);
    CVec3 CVec3::unit = CVec3(1,1,1);

    //Checks whether any values in the vector are invalid.
    bool CVec3::isErr() const {
        return isErrFloat(x) || isErrFloat(y) || isErrFloat(z);
    }

} //namespace ml
