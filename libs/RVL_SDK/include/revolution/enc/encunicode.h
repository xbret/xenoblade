#ifndef RVL_SDK_ENC_UNICODE_H
#define RVL_SDK_ENC_UNICODE_H
#include <types.h>
#include <revolution/enc/encutility.h>
#ifdef __cplusplus
extern "C" {
#endif

ENCResult ENCConvertStringUtf8ToUtf16(u16* r3, u32* r4, u8* r5, u32* r6);

#ifdef __cplusplus
}
#endif
#endif
