#ifndef METROTRK_SUPPORT
#define METROTRK_SUPPORT

#include "types.h"
#include "PowerPC_EABI_Support/MetroTRK/trk.h"
#include "PowerPC_EABI_Support/MetroTRK/msgbuf.h"

#ifdef __cplusplus
extern "C"{
#endif

DSError TRK_SuppAccessFile(u32, u8*, size_t*, DSIOResult*, BOOL, BOOL);
DSError TRK_RequestSend(MessageBuffer*, int*);
DSError HandleOpenFileSupportRequest(const char*, u8, u32*, DSIOResult*);
DSError HandleCloseFileSupportRequest(int, DSIOResult*);
DSError HandlePositionFileSupportRequest(u32, u32*, u8, DSIOResult*);

#ifdef __cplusplus
}
#endif
#endif
