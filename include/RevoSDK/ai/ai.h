#ifndef RVL_SDK_AI_H
#define RVL_SDK_AI_H
#include "types.h"
#ifdef __cplusplus
extern "C" {
#endif

// Forward declarations
typedef struct OSContext;

typedef void (*AIDMACallback)(void);

typedef enum {
    AI_DSP_32KHZ,
    AI_DSP_48KHZ,
} AIDSPSampleRate;

AIDMACallback AIRegisterDMACallback(AIDMACallback callback);
void AIInitDMA(void* buffer, u32 length);
void AIStartDMA(void);
u32 AIGetDMABytesLeft(void);
void AIInit(void* stack);
void __AIDHandler(int intr, struct OSContext* ctx); //s16?

#ifdef __cplusplus
}
#endif
#endif
