#include "PowerPC_EABI_Support/MetroTRK/custconn/CircleBuffer.h"
#include "PowerPC_EABI_Support/MetroTRK/custconn/MWCriticalSection_gc.h"
#include "PowerPC_EABI_Support/MetroTRK/trk.h"

ui32 CBGetBytesAvailableForRead(CircleBuffer* cb){
	return cb->mBytesToRead;
}

//unused
ui32 CBGetBytesAvailableForWrite(CircleBuffer* cb){
	return cb->mBytesToWrite;
}

void CircleBufferInitialize(CircleBuffer* cb, ui8* buf, ui32 size){
	cb->unk8 = buf;
	cb->unkC = size;
	cb->unk0 = buf;
	cb->unk4 = buf;
	cb->mBytesToRead = 0;
	cb->mBytesToWrite = size;
	MWInitializeCriticalSection(&(cb->mSection));
}

//unused
void CircleBufferTerminate(CircleBuffer* cb){
	MWTerminateCriticalSection(&(cb->mSection));
	memset(cb,0,sizeof(CircleBuffer) - 4);
}

int CircleBufferWriteBytes(CircleBuffer* cb, ui8* buf, ui32 size){
	ui32 r29;
	
	if(size > cb->mBytesToWrite) return -1;

	MWEnterCriticalSection(&(cb->mSection));

	r29 = cb->unkC - (cb->unk4 - cb->unk8);

	if(r29 >= size){
		memcpy(cb->unk4, buf, size);
		cb->unk4 += size;
	}else{
		memcpy(cb->unk4, buf, r29);
		memcpy(cb->unk8, buf + r29, size - r29);
		cb->unk4 = cb->unk8 + size - r29;
	}

	if(cb->unkC == cb->unk4 - cb->unk8){
		cb->unk4 = cb->unk8;
	}

	cb->mBytesToWrite -= size;
	cb->mBytesToRead += size;

	MWExitCriticalSection(&(cb->mSection));

	return 0;
}

int CircleBufferReadBytes(CircleBuffer* cb, ui8* buf, ui32 size){
	ui32 r29;

	if(size > cb->mBytesToRead) return -1;

	MWEnterCriticalSection(&(cb->mSection));

	r29 = cb->unkC - (cb->unk0 - cb->unk8);

	if(size < r29){
		memcpy(buf, cb->unk0, size);
		cb->unk0 += size;
	}else{
		memcpy(buf, cb->unk0, r29);
		memcpy(buf + r29, cb->unk8, size - r29);
		cb->unk0 = cb->unk8 + size - r29;
	}

	if(cb->unkC == cb->unk0 - cb->unk8){
		cb->unk0 = cb->unk8;
	}

	cb->mBytesToWrite += size;
	cb->mBytesToRead -= size;

	MWExitCriticalSection(&(cb->mSection));
	
	return 0;
}
