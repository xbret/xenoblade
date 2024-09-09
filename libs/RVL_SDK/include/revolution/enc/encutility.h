#ifndef RVL_SDK_ENC_UTILITY_H
#define RVL_SDK_ENC_UTILITY_H
#include <types.h>
#ifdef __cplusplus
extern "C" {
#endif

typedef enum {
    ENC_RESULT_OK = 0,
    ENC_RESULT_3 = -3
} ENCResult;

typedef enum {
    ENC_BREAK_TYPE_NONE = 0,
    ENC_BREAK_TYPE_LF = 1,
    ENC_BREAK_TYPE_CR = 2,
    ENC_BREAK_TYPE_CRLF = 3
} ENCBreakType;

ENCResult ENCiCheckParameters(u32 r3, u32* r4, u32* r5, u32* r6, u32 r7,
u32* r8, int* r9, u32* r10);
ENCBreakType ENCiCheckBreakType(u8 char1, u8 char2);
ENCBreakType ENCiWriteBreakType(u8* dest, u32 size, ENCBreakType breakType, BOOL r6);

#ifdef __cplusplus
}
#endif
#endif
