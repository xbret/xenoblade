#include "monolib/math.hpp"

namespace ml{
    CVec3 CVec3::zero = CVec3(0,0,0);
    CVec3 CVec3::unitX = CVec3(1,0,0);
    CVec3 CVec3::unitY = CVec3(0,1,0);
    CVec3 CVec3::unitZ = CVec3(0,0,1);
    CVec3 CVec3::unit = CVec3(1,1,1);

    //Checks whether any values in the vector are invalid.
    bool CVec3::isErr() const {
        return math::isErrFloat(x) || math::isErrFloat(y) || math::isErrFloat(z);
    }

} //namespace ml
