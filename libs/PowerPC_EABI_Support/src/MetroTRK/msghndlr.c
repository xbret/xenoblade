#include "PowerPC_EABI_Support/MetroTRK/msghndlr.h"
#include "PowerPC_EABI_Support/MetroTRK/msgxtrct.h"
#include "PowerPC_EABI_Support/MetroTRK/mem_TRK.h"
#include "PowerPC_EABI_Support/MetroTRK/dolphin_trk_glue.h"
#include "PowerPC_EABI_Support/MetroTRK/nubevent.h"
#include "PowerPC_EABI_Support/MetroTRK/msg.h"
#include "PowerPC_EABI_Support/MetroTRK/msgbuf.h"
#include "PowerPC_EABI_Support/MetroTRK/target_options.h"
#include "revolution/OS.h"

extern void __TRK_copy_vectors();
extern void __TRKreset();

static bool IsTRKConnected;
static ui32 g_CurrentSequence;

bool GetTRKConnected(){
	return IsTRKConnected;
}

//unused
void SetTRKConnected(bool value){
	IsTRKConnected = value;
}

static DSError TRKSendACK(MessageBuffer* b){
	return TRK_MessageSend(b);
}

static DSError TRKStandardACK(MessageBuffer* b, MessageCommandID commandId, DSReplyError replyError){
	msgbuf_t reply;
	ui32 nextSequence;

	TRK_memset((void*)&reply, 0, sizeof(msgbuf_t));
	nextSequence = g_CurrentSequence + 1;
	reply.commandId = commandId;
	reply.msgLength = sizeof(msgbuf_t);
	reply.replyError = replyError;
	reply.unkC = nextSequence;
	g_CurrentSequence = nextSequence + 1;
	TRK_WriteUARTN((void*)&reply, sizeof(msgbuf_t));
	return kNoError;
}

//unused
DSError TRKDoError(MessageBuffer* b){
	return kNoError;
}

//unused
DSError TRKDoUnsupported(MessageBuffer* b){
	TRKStandardACK(b,0x80,kDSReplyUnsupportedCommandError);
	return kNoError;
}

DSError TRK_DoConnect(MessageBuffer* b){
	IsTRKConnected = true;
	return TRKStandardACK(b,0x80,kDSReplyNoError);
}

DSError TRKDoDisconnect(MessageBuffer* b){
	NubEvent event;

	IsTRKConnected = false;
	TRKStandardACK(b,0x80,kDSReplyNoError);
	TRKConstructEvent(&event, 1);
	TRKPostEvent(&event);
	return kNoError;
}

DSError TRKDoReset(MessageBuffer* b){
	TRKStandardACK(b,0x80,kDSReplyNoError);
	__TRKreset();
	return kNoError;
}

DSError TRKDoOverride(MessageBuffer* b){
	TRKStandardACK(b,0x80,kDSReplyNoError);
	__TRK_copy_vectors();
	return kNoError;
}


/*
Message parameters:
0x4: command (ui8)
0x8: options (ui8)
0xc: length (ui16)
0x10: start (ui16)
0x14: register data (void*)
*/
DSError TRKDoReadMemory(MessageBuffer* b){
	DSError result = kNoError;
	DSReplyError replyError;
	ui8 options;
	ui32 test;
	ui32 start;
	ui32 length;
	msgbuf_t reply3;

	options = b->fData[8];
	start = *(ui32*)(b->fData + 16);
	length = *(ui16*)(b->fData + 12);
	
	if(options & DS_MSG_MEMORY_EXTENDED){
		return TRKStandardACK(b, kDSReplyACK, kDSReplyUnsupportedOptionError);
	}

	if (result == 0) {
		ui8 buf[0x820] ALIGN(32);
		
		size_t tempLength = length;

		result = TRKTargetAccessMemory(buf, start, &tempLength, options & DS_MSG_MEMORY_USERVIEW ? 0 : 1, true);
		TRKResetBuffer(b, 0);

		if(result == kNoError){
			TRK_memset(&reply3,0,sizeof(msgbuf_t));
			reply3.replyError = result;
			reply3.msgLength = tempLength + sizeof(msgbuf_t);
			reply3.commandId = kDSReplyACK;
			reply3.unkC = g_CurrentSequence;
			g_CurrentSequence++;
			TRK_AppendBuffer(b,(ui8*)&reply3,sizeof(msgbuf_t));

			if (options & DS_MSG_MEMORY_SPACE_DATA) {
				result = TRK_AppendBuffer(b, buf + (start & 0x1F), tempLength);
			}else {
				result = TRK_AppendBuffer(b, buf, tempLength);
			}
		}
	}

	if(result != kNoError){
		switch(result) {
			case kCWDSException:
			replyError = kDSReplyCWDSException;
			break;
	  		case kInvalidMemory:
			replyError = kDSReplyInvalidMemoryRange;
			break;
			case kInvalidProcessId:
			replyError = kDSReplyInvalidProcessId;
			break;
			case kInvalidThreadId:
			replyError = kDSReplyInvalidThreadId;
			break;
			case kOsError:
			replyError = kDSReplyOsError;
			break;
			default:
			replyError = kDSReplyCWDSError;
			break;
		}

		return TRKStandardACK(b, kDSReplyACK, replyError);
	}
	
	return TRKSendACK(b);
}

/*
Message parameters:
0x4: command (ui8)
0x8: options (ui8)
0xc: first register (ui16)
0x10: last register (ui16)
0x14: register data (void*)
*/
DSError TRKDoWriteMemory(MessageBuffer* b){
	DSError result = kNoError;
	DSReplyError replyError;
	ui8 options;
	ui32 start;
	ui32 length;
	msgbuf_t reply3;

	options = b->fData[8];
	start = *(ui32*)(b->fData + 16);
	length = *(ui16*)(b->fData + 12);
	
	if(options & DS_MSG_MEMORY_EXTENDED){
		return TRKStandardACK(b, kDSReplyACK, kDSReplyUnsupportedOptionError);
	}

	if (result == kNoError) {
		ui8 buf[0x820] ALIGN(32);

		size_t tempLength = length;

		TRK_SetBufferPosition(b,0x40);
		result = TRK_ReadBuffer(b,buf,tempLength);
		result = TRKTargetAccessMemory(buf, start, &tempLength, options & DS_MSG_MEMORY_USERVIEW ? 0 : 1, false);
		TRKResetBuffer(b, 0);
	
		if(result == kNoError){
			TRK_memset(&reply3,0,sizeof(msgbuf_t));
			reply3.msgLength = sizeof(msgbuf_t);
			reply3.commandId = kDSReplyACK;
			reply3.replyError = result;
			reply3.unkC = g_CurrentSequence;
			g_CurrentSequence++;
			result = TRK_AppendBuffer(b,(ui8*)&reply3,sizeof(msgbuf_t));
		}
	}

	if(result != kNoError){
		switch(result) {
			case kCWDSException:
			replyError = kDSReplyCWDSException;
			break;
	  		case kInvalidMemory:
			replyError = kDSReplyInvalidMemoryRange;
			break;
			case kInvalidProcessId:
			replyError = kDSReplyInvalidProcessId;
			break;
			case kInvalidThreadId:
			replyError = kDSReplyInvalidThreadId;
			break;
			case kOsError:
			replyError = kDSReplyOsError;
			break;
			default:
			replyError = kDSReplyCWDSError;
			break;
		}

		return TRKStandardACK(b, kDSReplyACK, replyError);
	}
	
	return TRKSendACK(b);
}

/*
Message parameters:
0x4: command (ui8)
0x8: options (ui8)
0xC: first register (ui16)
0x10: last register (ui16)
0x14: register data (ui32[])
*/
DSError TRKDoReadRegisters(MessageBuffer* b){
	DSError error;
	DSReplyError replyError;
	ui8 options;
	ui16 firstRegister;
	ui16 lastRegister;
	size_t registersLength;
	msgbuf_t local_50;
	
	options = b->fData[8];
	firstRegister = *(ui16*)(b->fData + 12);
	lastRegister = *(ui16*)(b->fData + 16);

	if(firstRegister > lastRegister){
		return TRKStandardACK(b, kDSReplyACK, kDSReplyInvalidRegisterRange);
	}

	local_50.commandId = kDSReplyACK;
	local_50.msgLength = 0x468;
	local_50.unkC = g_CurrentSequence;
	g_CurrentSequence++;

	TRKResetBuffer(b,0);
	TRKAppendBuffer_ui8(b,(ui8*)&local_50,sizeof(msgbuf_t));

	//???
	error = TRKTargetAccessDefault(0, 36, b, &registersLength, true);

	if(error == kNoError){
		error = TRKTargetAccessFP(0, 33, b, &registersLength, true);
	}
	if(error == kNoError){
		error = TRKTargetAccessExtended1(0, 0x60, b, &registersLength, true);
	}
	if(error == kNoError){
		error = TRKTargetAccessExtended2(0, 31, b, &registersLength, true);
	}

	//Check if there was an error, and respond accordingly
	if(error != kNoError){
		switch(error){
			case kUnsupportedError:
			replyError = kDSReplyUnsupportedOptionError;
			break;
			case kInvalidRegister:
			replyError = kDSReplyInvalidRegisterRange;
			break;
			case kCWDSException:
			replyError = kDSReplyCWDSException;
			break;
			case kInvalidProcessId:
			replyError = kDSReplyInvalidProcessId;
			break;
			case kInvalidThreadId:
			replyError = kDSReplyInvalidThreadId;
			break;
			case kOsError:
			replyError = kDSReplyOsError;
			break;
			default:
			replyError = kDSReplyCWDSError;
		}

		return TRKStandardACK(b, kDSReplyACK, replyError);
	}else{
		//No error, send ack
		return TRKSendACK(b);
	}
}

/*
Message parameters:
0x4: command (ui8)
0x8: options (ui8)
0xC: first register (ui16)
0x10: last register (ui16)
0x14: register data (ui32[])
*/
DSError TRKDoWriteRegisters(MessageBuffer* b){
	DSError error;
	DSReplyError replyError;
	ui8 options;
	ui16 firstRegister;
	ui16 lastRegister;
	size_t registersLength;
	msgbuf_t local_50;
	
	options = b->fData[8];
	firstRegister = *(ui16*)(b->fData + 12);
	lastRegister = *(ui16*)(b->fData + 16);

	TRK_SetBufferPosition(b,0);

	if(firstRegister > lastRegister){
		return TRKStandardACK(b, kDSReplyACK, kDSReplyInvalidRegisterRange);
	}

	TRK_SetBufferPosition(b,0x40);

	switch(options){
		case kDSRegistersDefault:
		error = TRKTargetAccessDefault(firstRegister, lastRegister, b, &registersLength, false);
		break;
		case kDSRegistersFP:
		error = TRKTargetAccessFP(firstRegister, lastRegister, b, &registersLength, false);
		break;
		case kDSRegistersExtended1:
		error = TRKTargetAccessExtended1(firstRegister, lastRegister, b, &registersLength, false);
		break;
		case kDSRegistersExtended2:
		error = TRKTargetAccessExtended2(firstRegister, lastRegister, b, &registersLength, false);
		break;
		default:
		//invalid option
		error = kUnsupportedError;
		break;
	}

	TRKResetBuffer(b,0);

	if (error == kDSReplyNoError) {
		TRK_memset(&local_50, 0, sizeof(msgbuf_t));
		local_50.msgLength = sizeof(msgbuf_t);
		local_50.commandId = kDSReplyACK;
		local_50.replyError = error;
		local_50.unkC = g_CurrentSequence;
		g_CurrentSequence = g_CurrentSequence + 1;
		error = TRK_AppendBuffer(b, (ui8*)&local_50, sizeof(msgbuf_t));
	}

	//Check if there was an error, and respond accordingly
	if(error != kNoError){
		switch(error){
			case kUnsupportedError:
			replyError = kDSReplyUnsupportedOptionError;
			break;
			case kInvalidRegister:
			replyError = kDSReplyInvalidRegisterRange;
			break;
			case kMessageBufferReadError:
			replyError = kDSReplyPacketSizeError;
			break;
			case kCWDSException:
			replyError = kDSReplyCWDSException;
			break;
			case kInvalidProcessId:
			replyError = kDSReplyInvalidProcessId;
			break;
			case kInvalidThreadId:
			replyError = kDSReplyInvalidThreadId;
			break;
			case kOsError:
			replyError = kDSReplyOsError;
			break;
			default:
			replyError = kDSReplyCWDSError;
		}

		return TRKStandardACK(b, kDSReplyACK, replyError);
	}else{
		//No error, send ack
		return TRKSendACK(b);
	}
}

DSError TRKDoContinue(MessageBuffer* b){
	DSError result;
	
	if(!TRKTargetStopped()){
		result = TRKStandardACK(b, kDSReplyACK, kDSReplyNotStopped);
	}else{
		TRKStandardACK(b, kDSReplyACK, kDSReplyNoError);
		result = TRKTargetContinue();
	}

	return result;
}

/*
Message parameters:
0x4: command (ui8)
0x8: options (ui8, DSMessageStepOptions enum value)
If kDSStepIntoCount/kDSStepOverCount:
0xC: count (ui8, instructions to step over)
If kDSStepIntoRange/kDSStepOverRange:
0x10: range start (ui32)
0x14: range end (ui32)
*/
DSError TRKDoStep(MessageBuffer *b){
	DSError result;
	ui8 options;
	ui8 count;
	ui32 rangeStart;
	ui32 rangeEnd;
	ui32 pc;

	TRK_SetBufferPosition(b, 0);

	options = b->fData[8];
	rangeStart = *(ui32*)(b->fData + 16);
	rangeEnd = *(ui32*)(b->fData + 20);

	switch(options){
	//Count step
	case kDSStepIntoCount:
	case kDSStepOverCount:
		//Continue if the step count is at least 1
		count = b->fData[12];
		if(count >= 1){
			break;
		}
		return TRKStandardACK(b,kDSReplyACK,kDSReplyParameterError);
	//Range step
	case kDSStepIntoRange:
	case kDSStepOverRange:
		pc = TRKTargetGetPC();
		//Continue if the current pc is within the step range
		if(pc >= rangeStart && pc <= rangeEnd){
			break;
		}
		return TRKStandardACK(b,kDSReplyACK,kDSReplyParameterError);
	default:
		//Invalid option value
		return TRKStandardACK(b,kDSReplyACK,kDSReplyUnsupportedOptionError);
	}

	if(!TRKTargetStopped()){
		return TRKStandardACK(b,kDSReplyACK,kDSReplyNotStopped);
	}else{
		result = TRKStandardACK(b,kDSReplyACK,kDSReplyNoError);

		switch(options){
		//Count step
		case kDSStepIntoCount:
		case kDSStepOverCount:
			result = TRKTargetSingleStep(count, options == kDSStepOverCount);
			break;
		//Range step
		case kDSStepIntoRange:
		case kDSStepOverRange:
			result = TRKTargetStepOutOfRange(rangeStart, rangeEnd, options == kDSStepOverRange);
			break;
		}
	}

	return result;
}

DSError TRKDoStop(MessageBuffer* b){
	msgbuf_t reply;
	ui8 replyError;

	switch(TRKTargetStop()){
		case kNoError:
		replyError = 0;
		break;
		case kInvalidProcessId:
		replyError = kDSReplyInvalidProcessId;
		break;
		case kInvalidThreadId:
		replyError = kDSReplyInvalidThreadId;
		break;
		case kOsError:
		replyError = kDSReplyOsError;
		break;
		default:
		replyError = kDSReplyError;
		break;
	}

	return TRKStandardACK(b,kDSReplyACK,replyError);
}

/*
Doesn't exist in standard MetroTRK, might be GC/Wii exclusive
Message parameters:
0x4: command? (ui8?)
0x8:
0xC: options? (ui8?)
*/
DSError TRKDoSetOption(MessageBuffer *b){
	ui8 options = b->fData[12];

	if(b->fData[8] == 1) {
		OSReport("\nMetroTRK Option : SerialIO - ");

		if(options != 0){
			OSReport("Enable\n");
		}else{
			OSReport("Disable\n");
		}

		SetUseSerialIO(options);
	}

	return TRKStandardACK(b,kDSReplyACK,kDSReplyNoError);
}
