#ifndef RVL_SDK_MTX_QUAT_H
#define RVL_SDK_MTX_QUAT_H
#include <types.h>

#include <revolution/MTX/mtxtypes.h>
#ifdef __cplusplus
extern "C" {
#endif


void PSQUATAdd(const Quaternion* a, const Quaternion* b, Quaternion* sum);
void PSQUATMultiply(const Quaternion* a, const Quaternion* b, Quaternion* prod);
void PSQUATScale(const Quaternion* in, Quaternion* out, f32 scale);
f32 PSQUATDotProduct(const Quaternion* a, const Quaternion* b);
void PSQUATNormalize(const Quaternion* in, Quaternion* out);
void PSQUATInverse(const Quaternion* in, Quaternion* out);
void C_QUATMtx(Quaternion* quat, const Mtx mtx);
void C_QUATLerp(const Quaternion* a, const Quaternion* b, Quaternion* out,
                f32 t);
void C_QUATSlerp(const Quaternion* a, const Quaternion* b, Quaternion* out,
                 f32 t);

#ifdef __cplusplus
}
#endif
#endif
