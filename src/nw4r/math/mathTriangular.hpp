
#ifndef _NW4R_MATH_TRIANGULAR
#define _NW4R_MATH_TRIANGULAR

#include "types.h"

namespace nw4r {
namespace math {

namespace detail {
struct SinCosSample {
  float sin_val;
  float cos_val;
  float sin_delta;
  float cos_delta;
};

extern const SinCosSample gSinCosTbl[256 + 1];
} // namespace detail

// PAL 0x80085110
float SinFIdx(float fidx);

// PAL 0x80085180
float CosFIdx(float fidx);

// PAL 0x800851e0
void SinCosFIdx(MWREG float*, MWREG float*, MWREG float);

// PAL 0x80085250
float AtanFIdx(float);

// PAL: 0x800853c0
float Atan2FIdx(float, float);

} // namespace math
} // namespace nw4r

#endif