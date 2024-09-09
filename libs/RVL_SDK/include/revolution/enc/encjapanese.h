#ifndef RVL_SDK_ENC_JAPANESE_H
#define RVL_SDK_ENC_JAPANESE_H
#include <types.h>
#include <revolution/enc/encutility.h>
#ifdef __cplusplus
extern "C" {
#endif

ENCResult ENCConvertStringSjisToUnicode(UNKWORD r3, UNKWORD r4, UNKWORD r5, UNKWORD r6);
ENCResult ENCConvertStringUnicodeToSjis(UNKWORD r3, UNKWORD r4, UNKWORD r5, UNKWORD r6);

#ifdef __cplusplus
}
#endif
#endif
