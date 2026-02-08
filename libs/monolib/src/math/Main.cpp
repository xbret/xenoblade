#include "monolib/math.hpp"
#include <revolution/OS.h>

namespace ml{
    namespace math{

        void initialize(){
            OSInitFastCast();
        }

    } // namespace math
} //namespace ml
