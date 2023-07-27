#include "PowerPC_EABI_Support/MetroTRK/msgbuf.h"
#include "PowerPC_EABI_Support/MetroTRK/mem_TRK.h"
#include "PowerPC_EABI_Support/MetroTRK/nubinit.h"

typedef struct TRKMsgBufs{
	MessageBuffer buffers[NUM_BUFFERS];
} TRKMsgBufs;

TRKMsgBufs gTRKMsgBufs;


static void TRK_SetBufferUsed(MessageBuffer* b, bool state){
	b->fInUse = state;
}

DSError TRK_InitializeMessageBuffers(){
	for(int i = 0; i < NUM_BUFFERS; i++){
		TRK_SetBufferUsed(&gTRKMsgBufs.buffers[i],false);
	}

	return kNoError;
}

DSError TRK_GetFreeBuffer(int* bufferIndexPtr, MessageBuffer** destBufPtr){
	DSError error = kNoMessageBufferAvailable;
	*destBufPtr = NULL;

	for(int i = 0; i < NUM_BUFFERS; i++){
		MessageBuffer* buf = TRKGetBuffer(i);

		if(!buf->fInUse){
			TRKResetBuffer(buf, 1);
			TRK_SetBufferUsed(buf, true);
			error = kNoError;
			*destBufPtr = buf;
			*bufferIndexPtr = i;
			i = NUM_BUFFERS; //why not break? weird choice
		}
	}

	if(error == kNoMessageBufferAvailable){
		OSReport("MetroTRK - ERROR : No buffer available\n");
	}

	return error;
}

MessageBuffer* TRKGetBuffer(int index){
	MessageBuffer* buf = NULL;

	if(index >= 0 && index < NUM_BUFFERS){
		buf = &gTRKMsgBufs.buffers[index];
	}

	return buf;
}

void TRK_ReleaseBuffer(int index){
	if(index != -1 && index >= 0 && index < NUM_BUFFERS){
		TRK_SetBufferUsed(&gTRKMsgBufs.buffers[index],false);
	}
}

void TRKResetBuffer(MessageBuffer* buf, bool keepData){
	buf->fLength = 0;
	buf->fPosition = 0;

	if(!keepData){
		TRK_memset(buf->fData, 0, kMessageBufferSize);
	}
}

DSError TRK_SetBufferPosition(MessageBuffer* buf, ui32 pos){
	DSError error = kNoError;

	if(pos > kMessageBufferSize){
		error = kMessageBufferOverflow;
	}else{
		buf->fPosition = pos;
		//If the new position is past the current length,
		//update the length
		if(pos > buf->fLength){
			buf->fLength = pos;
		}
	}

	return error;
}

DSError TRK_AppendBuffer(MessageBuffer* buf, const void* data, size_t length){
	DSError error = kNoError; //r31
	ui32 bytesLeft;

	//Return if no bytes to append
	if(length == 0){
		return kNoError;
	}

	bytesLeft = kMessageBufferSize - buf->fPosition;

	//If there isn't enough space left in the buffer, change the number
	//of bytes to append to the remaning number of bytes
	if(bytesLeft < length){
		error = kMessageBufferOverflow;
		length = bytesLeft;
	}

	if(length == 1){
		//If the length of bytes to append is 1, just copy the byte over
		buf->fData[buf->fPosition] = ((ui8*)data)[0];
	}else{
		//Otherwise, use memcpy
		TRK_memcpy(buf->fData + buf->fPosition,data,length);
	}

	//Update the position and length
	buf->fPosition += length;
	buf->fLength = buf->fPosition;

	return error;
}

DSError TRK_ReadBuffer(MessageBuffer* buf, void* data, size_t length){
	DSError error = kNoError;
	ui32 bytesLeft;

	//Return if no bytes to read
	if(length == 0){
		return kNoError;
	}

	bytesLeft = buf->fLength - buf->fPosition;

	//If the number of bytes to read exceeds the buffer length, change
	//the length to the remaining number of bytes
	if(length > bytesLeft){
		error = kMessageBufferReadError;
		length = bytesLeft;
	}

	TRK_memcpy(data, buf->fData + buf->fPosition, length);
	buf->fPosition += length;
	return error;
}

//unused
DSError TRKAppendBuffer1_ui16(MessageBuffer* buffer, const ui16 data){
}

DSError TRKAppendBuffer1_ui32(MessageBuffer *buffer, const ui32 data) {
	ui8* bigEndianData;
	ui8* byteData;
	ui8 swapBuffer[sizeof(data)];

	if (gTRKBigEndian) {
		bigEndianData = (ui8*)&data;
	}
	else {
		byteData = (ui8*)&data;
		bigEndianData = swapBuffer;

		bigEndianData[0] = byteData[3];
		bigEndianData[1] = byteData[2];
		bigEndianData[2] = byteData[1];
		bigEndianData[3] = byteData[0];
	}

	return TRK_AppendBuffer(buffer, (const void*)bigEndianData, sizeof(data));
}


DSError TRKAppendBuffer1_ui64(MessageBuffer* buffer, const ui64 data) {
	ui8* bigEndianData;
	ui8* byteData;
	ui8 swapBuffer[sizeof(data)];

	if (gTRKBigEndian) {
		bigEndianData = (ui8*)&data;
	}
	else {
		byteData = (ui8*)&data;
		bigEndianData = swapBuffer;

		bigEndianData[0] = byteData[7];
		bigEndianData[1] = byteData[6];
		bigEndianData[2] = byteData[5];
		bigEndianData[3] = byteData[4];
		bigEndianData[4] = byteData[3];
		bigEndianData[5] = byteData[2];
		bigEndianData[6] = byteData[1];
		bigEndianData[7] = byteData[0];
	}

	return TRK_AppendBuffer(buffer, (const void*)bigEndianData, sizeof(data));
}

//unused
DSError TRKAppendBuffer1_ui128(MessageBuffer* buffer, const ui128 data){
}

DSError TRKAppendBuffer_ui8(MessageBuffer *buffer, const ui8* data, int count) {
	DSError err;
	int i;

	for (i = 0, err = kNoError; err == kNoError && i < count; i++) {
		err = TRKAppendBuffer1_ui8(buffer, data[i]);
	}

	return err;
}

//unused
DSError TRKAppendBuffer_ui16(MessageBuffer* buffer, const ui16* data, int count){
}

DSError TRKAppendBuffer_ui32(MessageBuffer *buffer, const ui32* data, int count) {
	DSError err;
	int i;

	for (i = 0, err = kNoError; err == kNoError && i < count; i++) {
		err = TRKAppendBuffer1_ui32(buffer, data[i]);
	}

	return err;
}

//unused
DSError TRKAppendBuffer_ui64(MessageBuffer* buffer, const ui64* data, int count) {
}

//unused
DSError TRKAppendBuffer_ui128(MessageBuffer* buffer, const ui128* data, int count){
}

DSError TRKReadBuffer1_ui8(MessageBuffer *buffer, ui8 *data) {
	return TRK_ReadBuffer(buffer, (void*)data, 1);
}

//unused
DSError TRKReadBuffer1_ui16(MessageBuffer* buffer, ui16* data){
}

DSError TRKReadBuffer1_ui32(MessageBuffer* buffer, ui32 *data) {
	DSError err;

	ui8* bigEndianData;
	ui8* byteData;
	ui8 swapBuffer[sizeof(data)];

	if (gTRKBigEndian) {
		bigEndianData = (ui8*)data;
	}
	else {
		bigEndianData = swapBuffer;
	}

	err = TRK_ReadBuffer(buffer, (void*)bigEndianData, sizeof(*data));

	if (!gTRKBigEndian && err == kNoError) {
		byteData = (ui8*)data;

		byteData[0] = bigEndianData[3];
		byteData[1] = bigEndianData[2];
		byteData[2] = bigEndianData[1];
		byteData[3] = bigEndianData[0];
	}

	return err;
}

DSError TRKReadBuffer1_ui64(MessageBuffer *buffer, ui64* data) {
	DSError err;

    ui8* bigEndianData;
    ui8* byteData;
    ui8 swapBuffer[sizeof(data)];

    if (gTRKBigEndian) {
        bigEndianData = (ui8*)data;
    }
    else {
        bigEndianData = swapBuffer;
    }

    err = TRK_ReadBuffer(buffer, (void*)bigEndianData, sizeof(*data));

    if (!gTRKBigEndian && err == 0) {
        byteData = (ui8*)data;

        byteData[0] = bigEndianData[7];
        byteData[1] = bigEndianData[6];
        byteData[2] = bigEndianData[5];
        byteData[3] = bigEndianData[4];
        byteData[4] = bigEndianData[3];
        byteData[5] = bigEndianData[2];
        byteData[6] = bigEndianData[1];
        byteData[7] = bigEndianData[0];
    }

    return err;
}

//unused
DSError TRKReadBuffer1_ui128(MessageBuffer* buffer, ui128 data){
}

DSError TRKReadBuffer_ui8(MessageBuffer *buffer, ui8* data, int count) {
	DSError err;
	int i;

	for (i = 0, err = kNoError; err == kNoError && i < count; i++) {
		err = TRKReadBuffer1_ui8(buffer, &(data[i]));
	}

	return err;
}

//unused
DSError TRKReadBuffer_ui16(MessageBuffer* buffer, ui16* data, int count){
}

DSError TRKReadBuffer_ui32(MessageBuffer *buffer, ui32* data, int count) {
	DSError err;
	int i;

	for (i = 0, err = kNoError; err == kNoError && i < count; i++) {
		err = TRKReadBuffer1_ui32(buffer, &(data[i]));
	}

	return err;
}

//unused
DSError TRKReadBuffer_ui64(MessageBuffer* buffer, ui64* data, int count){
}

//unused
DSError TRKReadBuffer_ui128(MessageBuffer* buffer, ui128* data, int count){
}
