#ifndef RVL_SDK_SI_SIBIOS_H
#define RVL_SDK_SI_SIBIOS_H
#include "types.h"
#ifdef __cplusplus
extern "C" {
#endif

void SIInit(void);
u32 SIGetType(s32 chan);
void SISetCommand(s32 chan, u32 command);
void SITransferCommands(void);
void SISetXY(u32 line, u8 count);

#ifdef __cplusplus
}
#endif
#endif
