#ifndef METROTRK_SUPPORT
#define METROTRK_SUPPORT

#include "PowerPC_EABI_Support/MetroTRK/dstypes.h"
#include "PowerPC_EABI_Support/MetroTRK/trk.h"
#include "PowerPC_EABI_Support/MetroTRK/msgbuf.h"

#ifdef __cplusplus
extern "C"{
#endif

DSError TRK_SuppAccessFile(ui32, ui8*, size_t*, DSIOResult*, bool, bool);
DSError TRK_RequestSend(MessageBuffer*, int*);
DSError HandleOpenFileSupportRequest(const char*, ui8, ui32*, DSIOResult*);
DSError HandleCloseFileSupportRequest(int, DSIOResult*);
DSError HandlePositionFileSupportRequest(ui32, ui32*, ui8, DSIOResult*);

#ifdef __cplusplus
}
#endif
#endif
