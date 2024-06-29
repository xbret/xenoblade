#ifndef RVL_SDK_ENCJAPANESE_H
#define RVL_SDK_ENCJAPANESE_H
#include "types.h"
#ifdef __cplusplus
extern "C" {
#endif

void ENCConvertStringSjisToUnicode(u32 r3, u32 r4, u32 r5, u32 r6);
void ENCConvertStringUnicodeToSjis(u32 r3, u32 r4, u32 r5, u32 r6);

#ifdef __cplusplus
}
#endif
#endif
