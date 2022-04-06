#pragma once

#include "types.h"

#define FLOAT_LARGE 1e14f
#define FLOAT_SMALL -1e14f
#define FLOAT_MAX_HEX 0xD3D3D3D3
#define FLOAT_MAX_HEX_NEG 0xF3F3F3F3
#define FLOAT_NAN 0xFFFFFFFF
#define FLOAT_TO_HEX(f) (*(u32*)&f)

namespace ml{
	namespace math{
		bool isErrFloat(float f);
	}
}
