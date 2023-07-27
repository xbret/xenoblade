#ifndef _TRK_TARGET_OPTIONS_H
#define _TRK_TARGET_OPTIONS_H

#include "PowerPC_EABI_Support/MetroTRK/dstypes.h"

#ifdef __cplusplus
extern "C"{
#endif

void SetUseSerialIO(ui8);
ui8 GetUseSerialIO(void);

#ifdef __cplusplus
}
#endif
#endif
