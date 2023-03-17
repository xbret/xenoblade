#include "mm/Vector.hpp"
#include "mm/FloatUtils.hpp"

namespace mm{
    Vec3 Vec3::zero = Vec3(0,0,0);
    Vec3 Vec3::unitX = Vec3(1,0,0);
    Vec3 Vec3::unitY = Vec3(0,1,0);
    Vec3 Vec3::unitZ = Vec3(0,0,1); 
    Vec3 Vec3::unit = Vec3(1,1,1);

    bool Vec3::isInvalid() const {
        return isInvalidFloat(x) || isInvalidFloat(y) || isInvalidFloat(z);
    }

}