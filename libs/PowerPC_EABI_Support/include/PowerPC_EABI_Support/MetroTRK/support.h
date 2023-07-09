#ifndef METROTRK_SUPPORT
#define METROTRK_SUPPORT

#include "types.h"
#include "PowerPC_EABI_Support/MetroTRK/trk.h"
#include "PowerPC_EABI_Support/MetroTRK/msgbuf.h"

#ifdef __cplusplus
extern "C"{
#endif

DSError TRK_RequestSend(MessageBuffer*, int*);

#ifdef __cplusplus
}
#endif
#endif
