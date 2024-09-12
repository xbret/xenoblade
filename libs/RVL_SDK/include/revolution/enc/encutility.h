#ifndef RVL_SDK_ENC_UTILITY_H
#define RVL_SDK_ENC_UTILITY_H
#include <types.h>
#ifdef __cplusplus
extern "C" {
#endif

typedef enum {
    ENC_ERR_NOT_LOADED = -7,
    ENC_ERR_UNSUPPORTED,
    ENC_ERR_UNKNOWN_ENCODING,
    ENC_ERR_INVALID_FORMAT,
    ENC_ERR_INVALID_PARAM,
    ENC_ERR_NO_MAP_RULE,
    ENC_ERR_NO_BUF_LEFT,
    ENC_OK = 0,
} ENCResult;

typedef enum ENCBreakType {
    ENC_BR_KEEP,
    ENC_BR_CRLF,
    ENC_BR_CR,
    ENC_BR_LF
} ENCBreakType;

typedef struct ENCContext {
    u32 encoding;
    ENCBreakType brtype;
    u32 state;
    u16 nomap;
    u16 invalid;
} ENCContext;

ENCResult ENCiCheckParameters(BOOL destNotNull, u32* destLength, s32* newDestLength, BOOL* destParamsValid,
BOOL srcNotNull, u32* srcLength, s32* newSrcLength, BOOL* srcParamsValid);
u32 ENCiCheckBreakType(u32 char1, u32 char2);
u32 ENCiWriteBreakType(u8* dest, u32 size, ENCBreakType breakType, BOOL write);

#ifdef __cplusplus
}
#endif
#endif
