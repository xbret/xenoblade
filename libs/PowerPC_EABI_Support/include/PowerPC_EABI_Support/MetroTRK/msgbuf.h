#ifndef TRK_MSGBUF
#define TRK_MSGBUF

#include "types.h"
#include "PowerPC_EABI_Support/MetroTRK/trk.h"

#ifdef __cplusplus
extern "C"{
#endif

#define BUFFER_SIZE 0x800 + 0x80
#define NUM_BUFFERS 3

typedef struct MessageBuffer {
	BOOL fInUse; //0x0
	u32 fLength; //0x4
	u32 fPosition; //0x8
	u8 fData[BUFFER_SIZE]; //0xC
} MessageBuffer;


DSError TRK_InitializeMessageBuffers();
DSError TRK_GetFreeBuffer(int*, MessageBuffer**);
MessageBuffer* TRKGetBuffer(int);
void TRK_ReleaseBuffer(int);
void TRKResetBuffer(MessageBuffer*, BOOL);
DSError TRK_SetBufferPosition(MessageBuffer*, u32);
DSError TRK_AppendBuffer(MessageBuffer*, const void*, size_t);
DSError TRK_ReadBuffer(MessageBuffer*, void*, size_t);

inline DSError TRKAppendBuffer1_ui8(MessageBuffer* buffer, const ui8 data) {
	if (buffer->fPosition >= BUFFER_SIZE) {
		return TRKError301;
	}

	buffer->fData[buffer->fPosition++] = data;
	buffer->fLength++;
	return kNoError;
}

DSError TRKAppendBuffer1_ui16(MessageBuffer* buffer, const ui16 data);
DSError TRKAppendBuffer1_ui32(MessageBuffer* buffer, const ui32 data);
DSError TRKAppendBuffer1_ui64(MessageBuffer* buffer, const ui64 data);
DSError TRKAppendBuffer1_ui128(MessageBuffer* buffer, const ui128 data);

DSError TRKAppendBuffer_ui8(MessageBuffer* buffer, const ui8* data, int count);
DSError TRKAppendBuffer_ui16(MessageBuffer* buffer, const ui16* data, int count);
DSError TRKAppendBuffer_ui32(MessageBuffer* buffer, const ui32* data, int count);
DSError TRKAppendBuffer_ui64(MessageBuffer* buffer, const ui64* data, int count);
DSError TRKAppendBuffer_ui128(MessageBuffer* buffer, const ui128* data, int count);

DSError TRKReadBuffer1_ui8(MessageBuffer* buffer, ui8* data);
DSError TRKReadBuffer1_ui16(MessageBuffer* buffer, ui16* data);
DSError TRKReadBuffer1_ui32(MessageBuffer* buffer, ui32* data);
DSError TRKReadBuffer1_ui64(MessageBuffer* buffer, ui64* data);
DSError TRKReadBuffer1_ui128(MessageBuffer* buffer, ui128 data);

DSError TRKReadBuffer_ui8(MessageBuffer* buffer, ui8* data, int count);
DSError TRKReadBuffer_ui16(MessageBuffer* buffer, ui16* data, int count);
DSError TRKReadBuffer_ui32(MessageBuffer* buffer, ui32* data, int count);
DSError TRKReadBuffer_ui64(MessageBuffer* buffer, ui64* data, int count);
DSError TRKReadBuffer_ui128(MessageBuffer* buffer, ui128* data, int count);

#ifdef __cplusplus
}
#endif
#endif
