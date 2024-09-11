#ifndef RVL_SDK_ENC_UNICODE_H
#define RVL_SDK_ENC_UNICODE_H
#include <types.h>
#include <revolution/enc/encutility.h>
#ifdef __cplusplus
extern "C" {
#endif

ENCResult ENCConvertStringUtf8ToUtf16(u16* dest, u32* destLength, u8* src, u32* srcLength);

#ifdef __cplusplus
}
#endif
#endif
