#ifndef _NW4R_ARITHMETIC_H
#define _NW4R_ARITHMETIC_H

#include "nw4r/math/math_arithmetic.h"
#include "nw4r/db/db_assert.h"

namespace nw4r{
	namespace math{
		using namespace db;

		inline float FSqrt(float x){
        	if (x < 0.0f) {
        	    db::Warning("arithmetic.h",0x273,"FSqrt: Input is out of the domain.");
        	}
	
        	return FrSqrt(x);
    	}
	}
}

#endif
