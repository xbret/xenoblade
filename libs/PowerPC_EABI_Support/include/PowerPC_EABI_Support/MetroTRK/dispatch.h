#ifndef METROTRK_DISPATCH
#define METROTRK_DISPATCH

#ifdef __cplusplus
extern "C"{
#endif

#include "types.h"
#include "PowerPC_EABI_Support/MetroTRK/trk.h"

DSError TRKDispatchMessage(MessageBuffer*);

#ifdef __cplusplus
}
#endif
#endif
