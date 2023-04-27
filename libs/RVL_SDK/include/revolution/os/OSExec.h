#ifndef RVL_SDK_OS_EXEC_H
#define RVL_SDK_OS_EXEC_H
#include "types.h"
#ifdef __cplusplus
extern "C" {
#endif

typedef struct OSExecParams {
    u32 WORD_0x0;
    u32 WORD_0x4;
    char UNK_0x8[0x4];
    void* regionStart; // at 0xC
    void* regionEnd;   // at 0x10
    char UNK_0x14[0x1C - 0x14];
} OSExecParams;

extern BOOL __OSInReboot;
extern void* __OSNextPartitionType;

void __OSGetExecParams(OSExecParams* out);
void __OSLaunchMenu(void);
void __OSBootDol(u32, u32, u32*);

#ifdef __cplusplus
}
#endif
#endif
