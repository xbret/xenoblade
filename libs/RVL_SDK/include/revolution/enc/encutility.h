#ifndef RVL_SDK_ENC_UTILITY_H
#define RVL_SDK_ENC_UTILITY_H
#include <types.h>
#ifdef __cplusplus
extern "C" {
#endif

typedef enum {
    ENC_RESULT_ERROR_3 = -3,
    ENC_RESULT_OK = 0,
} ENCResult;

typedef enum ENCBreakType {
    ENC_BR_KEEP,
    ENC_BR_CRLF,
    ENC_BR_CR,
    ENC_BR_LF
} ENCBreakType;

typedef enum {
    ENC_UNICODE_0,
    ENC_UNICODE_1,
    ENC_UNICODE_2,
    ENC_UNICODE_3,
    ENC_UNICODE_4
} ENCUnicodeType;

typedef struct ENCContext {
    UNKWORD encoding;
    ENCBreakType brtype;
    UNKWORD state;
    u16 nomap;
    u16 invalid;
} ENCContext;

ENCResult ENCiCheckParameters(BOOL r3, u32* r4, u32* r5, u32* r6, BOOL r7,
u32* r8, int* r9, u32* r10);
u32 ENCiCheckBreakType(u8 char1, u8 char2);
u32 ENCiWriteBreakType(u8* dest, u32 size, ENCBreakType breakType, BOOL r6);

#ifdef __cplusplus
}
#endif
#endif
