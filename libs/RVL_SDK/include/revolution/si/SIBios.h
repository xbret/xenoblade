#ifndef RVL_SDK_SI_SIBIOS_H
#define RVL_SDK_SI_SIBIOS_H
#include <types.h>
#ifdef __cplusplus
extern "C" {
#endif

typedef enum {
    SI_CHAN_0,
    SI_CHAN_1,
    SI_CHAN_2,
    SI_CHAN_3,

    SI_MAX_CHAN,
    SI_CHAN_NONE = -1,
} SIChannel;

typedef enum {
    SI_TYPE_0,
    SI_TYPE_1,
    SI_TYPE_2,
    SI_TYPE_3,

    SI_MAX_TYPE
} SIType;

typedef void (*SICallback)(s32 chan, u32 status);

void SIInit(void);
u32 SIGetType(s32 chan);
void SISetCommand(s32 chan, u32 command);
void SITransferCommands(void);
void SISetXY(u32 line, u8 count);

#ifdef __cplusplus
}
#endif
#endif
