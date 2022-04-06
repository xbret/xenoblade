#ifndef _NW4R_TRIANGULAR_H
#define _NW4R_TRIANGULAR_H

#include <cmath>
#include "nw4r/math/math_triangular.h"
#include "nw4r/db/db_assert.h"

namespace nw4r{
	namespace math{

		using namespace db;

		inline float AsinRad(float x){
			bool inRange = x <= 1.0f && x >= -1.0f;
	
			if(!inRange){
				Warning("triangular.h",0xe4,"AsinRad: Input is out of the domain.");
			}
	
			return asin(x);
		}

		inline float AcosRad(float x){
			bool inRange = x <= 1.0f && x >= -1.0f;
	
			if(!inRange){
				Warning("triangular.h",0xef,"AcosRad: Input is out of the domain.");
			}
	
			return acos(x);
		}

	}
}

#endif
