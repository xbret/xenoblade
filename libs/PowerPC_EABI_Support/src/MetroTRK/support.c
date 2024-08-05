#include "PowerPC_EABI_Support/MetroTRK/support.h"
#include "PowerPC_EABI_Support/MetroTRK/msgcmd.h"
#include "revolution/OS.h"


// Custom structure used as temporary buffer for message data transmission
typedef struct
{
    u32 msg_length;
    u8 command[4];
    u8 handle[4];
    u16 length[2];
    u8 data[4];

    // most likely used for padding to 64 bytes
    // (as this is the length of the whole message)
    u8 unknown[0x2C];
} msgbuf_t;

DSError TRK_SuppAccessFile(ui32 file_handle, ui8* data, size_t* count, DSIOResult* io_result,
bool need_reply, bool read){
	DSError error;
	int replyBufferId;
	MessageBuffer* replyBuffer;
	int bufferId;
	MessageBuffer* buffer;
	ui32 length;
	ui32 i;
	ui8 replyIOResult;
	ui32 replyLength;
	bool exit;
	msgbuf_t reply;
	
  
	if(data == NULL || *count == 0){
		return kParameterError;
	}
		
	for (exit = false, *io_result = kDSIONoError, i = 0, error = kNoError;
		!exit && i < *count && error == kNoError && *io_result == 0; i += length) {
		TRK_memset(&reply, 0, sizeof(msgbuf_t));
		
		length = DS_MAXREADWRITELENGTH;
			
		if (*count - i <= DS_MAXREADWRITELENGTH) {
			length = *count - i;
		}
			
		reply.command[0] = read ? kDSReadFile : kDSWriteFile;  
		reply.msg_length = read ? TRK_MSG_HEADER_LENGTH : ((ui32)length + TRK_MSG_HEADER_LENGTH);
		*(DSFileHandle*)reply.handle = file_handle;
		reply.length[0] = (ui16)length;
		
		TRK_GetFreeBuffer(&bufferId,&buffer);
		error = TRKAppendBuffer_ui8(buffer,(const ui8*)&reply,TRK_MSG_HEADER_LENGTH);
		
		if (!read && error == kNoError) {
			error = TRKAppendBuffer_ui8(buffer,data + i,length);
		}
		
		if (error == kNoError) {
			if (need_reply) {
				error = TRK_RequestSend(buffer, &replyBufferId);
				if (error == kNoError) {
					replyBuffer = TRKGetBuffer(replyBufferId);
				}
				replyIOResult = (ui8)*(ui32*)(replyBuffer->fData + 0x10);
				replyLength = *(ui16*)(replyBuffer->fData + 0x14);
				if (read && error == kNoError && replyLength <= length) {
					TRK_SetBufferPosition(replyBuffer, 0x40);
					error = TRKReadBuffer_ui8(replyBuffer, data + i, replyLength);
					if (error == kMessageBufferReadError) {
						error = kNoError;
					}
				}
				
				if (replyLength != length) {
					length = replyLength;
					exit = true;
				}
				
				*io_result = replyIOResult;
				TRK_ReleaseBuffer(replyBufferId);
			}else{
				error = TRK_MessageSend(buffer);
			}
		}
		
		TRK_ReleaseBuffer(bufferId);
	}
		
	*count = i;
	return error;
}



DSError TRK_RequestSend(MessageBuffer* msgBuf, int* bufferId){
	DSError error;
	MessageBuffer* buffer;
	ui8 msgCmd;
	ui8 msgReplyError;
	bool badReply;
	
	
	error = TRK_MessageSend(msgBuf);
	if (error == kNoError) {
		badReply = false;
		
		while(true) {
			do {
				*bufferId = TRKTestForPacket();
			} while (*bufferId == -1);
			
			buffer = TRKGetBuffer(*bufferId);
			TRK_SetBufferPosition(buffer, 0);
			msgCmd = buffer->fData[4];
			if (msgCmd >= kDSReplyACK) break;
			TRKProcessInput(*bufferId);
			*bufferId = -1;
		}
		
		if (*bufferId != -1) {
			if(buffer->fLength < TRK_MSG_HEADER_LENGTH) {
				OSReport("MetroTRK - bad reply size %ld\n", buffer->fLength);
				badReply = true;
			}
			if (error == kNoError && !badReply) {
				msgReplyError = buffer->fData[8];
			}
			if (error == kNoError && !badReply) {
				if((int)msgCmd != kDSReplyACK || msgReplyError != kDSReplyNoError){
					badReply = true;
				}
			}
			if (error != kNoError || badReply) {
				TRK_ReleaseBuffer(*bufferId);
				*bufferId = -1;
			}
		}
	}
	
	if (*bufferId == -1) {
		OSReport("MetroTRK - failed in RequestSend\n");
		error = kWaitACKError;
	}
	
	return error;
}

DSError HandleOpenFileSupportRequest(const char* path, ui8 replyError, ui32* param_3, DSIOResult* ioResult){
	DSError error;
	int bufferId2;
	int bufferId1;
	MessageBuffer* tempBuffer;
	MessageBuffer* buffer;
	msgbuf_t reply;
	
	TRK_memset(&reply,0,sizeof(msgbuf_t));
	*param_3 = 0;
	reply.command[0] = kDSOpenFile;
	reply.msg_length = TRK_strlen(path) + TRK_MSG_REPLY_HEADER_LENGTH;
	reply.handle[0] = replyError;
	reply.length[0] = (ui16)(TRK_strlen(path) + 1);
	TRK_GetFreeBuffer(&bufferId1,&buffer);
	error = TRKAppendBuffer_ui8(buffer, (ui8 *)&reply, 0x40);
	
	if (error == kNoError) {
		error = TRKAppendBuffer_ui8(buffer, (ui8*)path, TRK_strlen(path) + 1);
	}
	
	if (error == kNoError) {
		*ioResult = kDSIONoError;
		error = TRK_RequestSend(buffer,&bufferId2);
		
		if (error == kNoError) {
			tempBuffer = TRKGetBuffer(bufferId2);
		}
		
		*ioResult = *(ui32*)(tempBuffer->fData + 0x10);
		*param_3 = *(ui32*)(tempBuffer->fData + 0x8);
		TRK_ReleaseBuffer(bufferId2);
	}
	TRK_ReleaseBuffer(bufferId1);
	return error;
}



DSError HandleCloseFileSupportRequest(int replyError, DSIOResult* ioResult){
	DSError error;
	int replyBufferId;
	int bufferId;
	MessageBuffer *buffer1;
	MessageBuffer *buffer2;
	msgbuf_t reply;
	
	TRK_memset(&reply,0, TRK_MSG_HEADER_LENGTH);
	reply.command[0] = kDSCloseFile;
	reply.msg_length = TRK_MSG_HEADER_LENGTH;
	*(DSFileHandle *)reply.handle = replyError;
	error = TRK_GetFreeBuffer(&bufferId,&buffer1);
	
	if (error == kNoError) {
		error = TRKAppendBuffer_ui8(buffer1, (ui8*)&reply, sizeof(msgbuf_t));
	}
	
	if (error == kNoError) {
		*ioResult = kDSIONoError;
		error = TRK_RequestSend(buffer1,&replyBufferId);
		
		if (error == kNoError) {
			buffer2 = TRKGetBuffer(replyBufferId);
		}
		
		if(error == kNoError){
			*ioResult = *(ui32*)(buffer2->fData + 0x10);
		}
		
		TRK_ReleaseBuffer(replyBufferId);
	}
	
	TRK_ReleaseBuffer(bufferId);
	return error;
}


DSError HandlePositionFileSupportRequest(ui32 param_1, ui32* param_2, ui8 param_3, DSIOResult* ioResult){
	DSError error;
	int bufferId2;
	int bufferId1;
	MessageBuffer *buffer1;
	MessageBuffer *buffer2;
	msgbuf_t reply;
	
	TRK_memset(&reply, 0, TRK_MSG_HEADER_LENGTH);
	reply.command[0] = kDSPositionFile;
	reply.msg_length = TRK_MSG_HEADER_LENGTH;
	*(DSFileHandle *)reply.handle = param_1;
	*(int*)reply.length = *param_2;
	reply.data[0] = param_3;
	error = TRK_GetFreeBuffer(&bufferId1,&buffer1);
	
	if (error == kNoError) {
		error = TRKAppendBuffer_ui8(buffer1, (ui8*)&reply, sizeof(msgbuf_t));
	}
	
	if (error == kNoError) {
		*ioResult = kDSIONoError;
		*param_2 = -1;
		error = TRK_RequestSend(buffer1,&bufferId2);

		if(error == kNoError){
			buffer2 = TRKGetBuffer(bufferId2);
		
			if (buffer2 != NULL) {
				*ioResult = *(ui32*)(buffer2->fData + 0x10);
				*param_2 = *(ui32*)(buffer2->fData + 0x18);
			}
		}
		
		TRK_ReleaseBuffer(bufferId2);
	}
	
	TRK_ReleaseBuffer(bufferId1);
	return error;
}

