#ifndef TRK_MSGBUF
#define TRK_MSGBUF

#include "types.h"
#include "PowerPC_EABI_Support/MetroTRK/trk.h"

#ifdef __cplusplus
extern "C"{
#endif

DSError TRKInitializeMessageBuffers();
int TRKGetFreeBuffer(int*, MessageBuffer*);
void* TRKGetBuffer(int);
void TRKReleaseBuffer(int);
void TRKResetBuffer(MessageBuffer*, u32);
DSError TRKSetBufferPosition(MessageBuffer*, u32);
DSError TRK_AppendBuffer(MessageBuffer*, u8*, int);
DSError TRKAppendBuffer_ui8(MessageBuffer*, u8*, int);

#ifdef __cplusplus
}
#endif
#endif
