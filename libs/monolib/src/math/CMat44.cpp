#include "monolib/math.hpp"

namespace ml{
    CMat44 CMat44::zero = CMat44(
    0,0,0,0,
    0,0,0,0,
    0,0,0,0,
    0,0,0,0
    );

    CMat44 CMat44::identity = CMat44(
    1,0,0,0,
    0,1,0,0,
    0,0,1,0,
    0,0,0,1
    );
} //namespace ml
