#ifndef RVL_SDK_MTX_QUAT_H
#define RVL_SDK_MTX_QUAT_H
#include <revolution/mtx/mtx.h>
#include <types.h>
#ifdef __cplusplus
extern "C" {
#endif // ifdef __cplusplus


void PSQUATAdd(const Quaternion*, const Quaternion*, Quaternion*);
void PSQUATMultiply(const Quaternion*, const Quaternion*, Quaternion*);
void PSQUATScale(const Quaternion*, Quaternion*, f32);
f32 PSQUATDotProduct(const Quaternion*, const Quaternion*);
void PSQUATNormalize(const Quaternion*, Quaternion*);
void PSQUATInverse(const Quaternion*, Quaternion*);
void C_QUATMtx(Quaternion*, const Mtx);
void C_QUATLerp(const Quaternion*, const Quaternion*, Quaternion*, f32);
void C_QUATSlerp(const Quaternion*, const Quaternion*, Quaternion*, f32);


#ifdef __cplusplus
}
#endif

#endif
