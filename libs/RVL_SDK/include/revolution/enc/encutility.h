#ifndef RVL_SDK_ENC_UTILITY_H
#define RVL_SDK_ENC_UTILITY_H
#include <types.h>
#ifdef __cplusplus
extern "C" {
#endif

typedef enum {
    ENC_RESULT_ERROR_INVALID_CHAR = -4,
    ENC_RESULT_ERROR_INVALID_PARAM,
    ENC_RESULT_ERROR_2,
    ENC_RESULT_ERROR_OUT_OF_RANGE,
    ENC_RESULT_OK = 0,
} ENCResult;

typedef enum ENCBreakType {
    ENC_BR_KEEP,
    ENC_BR_CRLF,
    ENC_BR_CR,
    ENC_BR_LF
} ENCBreakType;

typedef struct ENCContext {
    UNKWORD encoding;
    ENCBreakType brtype;
    UNKWORD state;
    u16 nomap;
    u16 invalid;
} ENCContext;

ENCResult ENCiCheckParameters(BOOL destNotNull, u32* destLength, s32* newDestLength, BOOL* destParamsValid,
BOOL srcNotNull, u32* srcLength, s32* newSrcLength, BOOL* srcParamsValid);
u32 ENCiCheckBreakType(u8 char1, u8 char2);
u32 ENCiWriteBreakType(u8* dest, u32 size, ENCBreakType breakType, BOOL r6);

#ifdef __cplusplus
}
#endif
#endif
