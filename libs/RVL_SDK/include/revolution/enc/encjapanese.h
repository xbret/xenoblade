#ifndef RVL_SDK_ENC_JAPANESE_H
#define RVL_SDK_ENC_JAPANESE_H
#include <types.h>
#include <revolution/enc/encutility.h>
#ifdef __cplusplus
extern "C" {
#endif

ENCResult ENCConvertStringSjisToUnicode(u16* dest, u32* destLength, const u8* src, u32* srcLength);
ENCResult ENCConvertStringUnicodeToSjis(u8* dest, u32* destLength, const u16* src, u32* srcLength);

#ifdef __cplusplus
}
#endif
#endif
