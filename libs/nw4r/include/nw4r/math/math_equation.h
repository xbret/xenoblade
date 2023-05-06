#ifndef NW4R_MATH_EQUATION_H
#define NW4R_MATH_EQUATION_H
#include "nw4r/types_nw4r.h"

namespace nw4r
{
	namespace math
	{
        inline float FSelect(register float val, register float zero, register float notzero)
        {
            asm
            {
                fsel zero, val, zero, notzero
            }

            return zero;
        }
	}
}

#endif
