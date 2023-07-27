#include "PowerPC_EABI_Support/MetroTRK/support.h"
#include "PowerPC_EABI_Support/MetroTRK/msghndlr.h"
#include "revolution/OS.h"

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
	CommandReply reply;
	
  
	if(data == NULL || *count == 0){
		return kParameterError;
	}
		
	for (exit = false, *io_result = kDSIONoError, i = 0, error = kNoError;
		!exit && i < *count && error == kNoError && *io_result == 0; i += length) {
		TRK_memset(&reply, 0, sizeof(CommandReply));
		
		length = DS_MAXREADWRITELENGTH;
			
		if (*count - i <= DS_MAXREADWRITELENGTH) {
			length = *count - i;
		}
			
		reply.commandId = read ? kDSReadFile : kDSWriteFile;  

		if(read){
			reply.unk0 = 0x40;
		}else {
			reply.unk0 = length + 0x40;
		}
	  
		reply.replyErrorInt = file_handle;
		*(ui16*)&reply.unkC = length;
		
		TRK_GetFreeBuffer(&bufferId,&buffer);
		error = TRKAppendBuffer_ui8(buffer,(const ui8*)&reply,0x40);
		
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
			if(buffer->fLength < DS_MIN_REPLY_LENGTH) {
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
		error = kError800;
	}
	
	return error;
}

DSError HandleOpenFileSupportRequest(const char* path, ui8 replyError, ui32* param_3, DSIOResult* ioResult){
	DSError error;
	int bufferId2;
	int bufferId1;
	MessageBuffer* tempBuffer;
	MessageBuffer* buffer;
	CommandReply reply;
	
	TRK_memset(&reply,0,sizeof(CommandReply));
	*param_3 = 0;
	reply.commandId = kDSOpenFile;
	reply.unk0 = TRK_strlen(path) + 0x41;
	reply.replyError = replyError;
	*(ui16*)&reply.unkC = TRK_strlen(path) + 1;
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
	CommandReply reply;
	
	TRK_memset(&reply,0,sizeof(CommandReply));
	reply.commandId = kDSCloseFile;
	reply.unk0 = DS_MIN_REPLY_LENGTH;
	reply.replyErrorInt = replyError;
	error = TRK_GetFreeBuffer(&bufferId,&buffer1);
	
	if (error == kNoError) {
		error = TRKAppendBuffer_ui8(buffer1, (ui8*)&reply, sizeof(CommandReply));
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
	CommandReply reply;
	
	TRK_memset(&reply, 0, sizeof(CommandReply));
	reply.commandId = 0xd4;
	reply.unk0 = DS_MIN_REPLY_LENGTH;
	reply.replyErrorInt = param_1;
	reply.unkC = *param_2;
	reply.unk10[0] = param_3;
	error = TRK_GetFreeBuffer(&bufferId1,&buffer1);
	
	if (error == kNoError) {
		error = TRKAppendBuffer_ui8(buffer1, (ui8*)&reply, sizeof(CommandReply));
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

