#ifndef _REVOSDK_QUAT_H
#define _REVOSDK_QUAT_H

#include "types.h"

#ifdef __cplusplus
extern "C" {
#endif // ifdef __cplusplus

typedef struct {
  float x, y, z, w;
} Quaternion;

void PSQUATAdd(const Quaternion*, const Quaternion*, Quaternion*);
void PSQUATMultiply(const Quaternion*, const Quaternion*, Quaternion*);
void PSQUATScale(const Quaternion*, Quaternion*, float);
float PSQUATDotProduct(const Quaternion*, const Quaternion*);
void PSQUATNormalize(const Quaternion*, Quaternion*);
void PSQUATInverse(const Quaternion*, Quaternion*);
void C_QUATMtx(Quaternion*, const Mtx);
void C_QUATLerp(const Quaternion*, const Quaternion*, Quaternion*, float);
void C_QUATSlerp(const Quaternion*, const Quaternion*, Quaternion*, float);


#ifdef __cplusplus
}
#endif

#endif
