#include "PowerPC_EABI_Support/MetroTRK/msghndlr.h"
#include "PowerPC_EABI_Support/MetroTRK/mem_TRK.h"
#include "PowerPC_EABI_Support/MetroTRK/dolphin_trk_glue.h"
#include "PowerPC_EABI_Support/MetroTRK/nubevent.h"
#include "PowerPC_EABI_Support/MetroTRK/msg.h"
#include "PowerPC_EABI_Support/MetroTRK/msgbuf.h"
#include "PowerPC_EABI_Support/MetroTRK/target_options.h"
#include "revolution/OS.h"

typedef struct CommandReply {
	u32 unk0;
	u8 commandId;
	u8 unk5[3];
	u8 replyError;
	u8 unk9[3];
	u32 unkC;
	u8 unk10[0x30];
} CommandReply;

extern void __TRK_copy_vectors();
extern void __TRKreset();

static BOOL IsTRKConnected;
static u32 g_CurrentSequence;

BOOL GetTRKConnected(){
	return IsTRKConnected;
}

//unused
void SetTRKConnected(BOOL value){
	IsTRKConnected = value;
}

static DSError TRKSendACK(MessageBuffer* b){
	return TRK_MessageSend(b);
}

static DSError TRKStandardACK(MessageBuffer* b, MessageCommandID commandId, DSReplyError replyError){
	CommandReply reply;
	u32 nextSequence;

	TRK_memset((void*)&reply, 0, sizeof(CommandReply));
	nextSequence = g_CurrentSequence + 1;
	reply.commandId = commandId;
	reply.unk0 = 0x40;
	reply.replyError = replyError;
	reply.unkC = nextSequence;
	g_CurrentSequence = nextSequence + 1;
	TRKWriteUARTN((void*)&reply, sizeof(CommandReply));
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
	IsTRKConnected = TRUE;
	return TRKStandardACK(b,0x80,kDSReplyNoError);
}

DSError TRKDoDisconnect(MessageBuffer* b){
	TRKEvent event;

	IsTRKConnected = FALSE;
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
0x4: options (u8)
0x8: length (u16)
0xc: start (u16)
0x10: register data (void*)
*/
DSError TRKDoReadMemory(MessageBuffer* b){
	DSError result = kNoError;
	DSReplyError replyError;
	u8 options;
	u32 test;
	u32 start;
	u32 length;
	CommandReply reply3;

	options = b->fData[8];
	start = *(u32*)(b->fData + 16);
	length = *(u16*)(b->fData + 12);
	
	if(options & DS_MSG_MEMORY_EXTENDED){
		return TRKStandardACK(b, kDSReplyACK, kDSReplyUnsupportedOptionError);
	}

	if (result == 0) {
		u8 buf[0x820] ALIGN(32);
		
		size_t tempLength = length;

		result = TRKTargetReadInstruction(buf, start, &tempLength, options & DS_MSG_MEMORY_USERVIEW ? 0 : 1, 1);
		TRKResetBuffer(b, 0);

		if(result == kNoError){
			TRK_memset(&reply3,0,sizeof(CommandReply));
			reply3.replyError = result;
			reply3.unk0 = tempLength + 0x40;
			reply3.commandId = kDSReplyACK;
			reply3.unkC = g_CurrentSequence;
			g_CurrentSequence++;
			TRK_AppendBuffer(b,(u8*)&reply3,sizeof(CommandReply));

			if (options & DS_MSG_MEMORY_SPACE_DATA) {
				result = TRK_AppendBuffer(b, buf + (start & 0x1F), tempLength);
			}else {
				result = TRK_AppendBuffer(b, buf, tempLength);
			}
		}
	}

	if(result != kNoError){
		switch(result) {
			case TRKError702:
			replyError = kDSReplyCWDSException;
			break;
	  		case TRKError700:
			replyError = kDSReplyInvalidMemoryRange;
			break;
			case TRKError704:
			replyError = kDSReplyInvalidProcessId;
			break;
			case TRKError705:
			replyError = kDSReplyInvalidThreadId;
			break;
			case TRKError706:
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
0x4: options (u8)
0x8: first register (u16)
0xc: last register (u16)
0x10: register data (void*)
*/
DSError TRKDoWriteMemory(MessageBuffer* b){
	DSError result = kNoError;
	DSReplyError replyError;
	u8 options;
	u32 start;
	u32 length;
	CommandReply reply3;

	options = b->fData[8];
	start = *(u32*)(b->fData + 16);
	length = *(u16*)(b->fData + 12);
	
	if(options & DS_MSG_MEMORY_EXTENDED){
		return TRKStandardACK(b, kDSReplyACK, kDSReplyUnsupportedOptionError);
	}

	if (result == kNoError) {
		u8 buf[0x820] ALIGN(32);

		size_t tempLength = length;

		TRK_SetBufferPosition(b,0x40);
		result = TRK_ReadBuffer(b,buf,tempLength);
		result = TRKTargetReadInstruction(buf, start, &tempLength, options & DS_MSG_MEMORY_USERVIEW ? 0 : 1, 0);
		TRKResetBuffer(b, 0);
	
		if(result == kNoError){
			TRK_memset(&reply3,0,sizeof(CommandReply));
			reply3.unk0 = 0x40;
			reply3.commandId = kDSReplyACK;
			reply3.replyError = result;
			reply3.unkC = g_CurrentSequence;
			g_CurrentSequence++;
			result = TRK_AppendBuffer(b,(u8*)&reply3,sizeof(CommandReply));
		}
	}

	if(result != kNoError){
		switch(result) {
			case TRKError702:
			replyError = kDSReplyCWDSException;
			break;
	  		case TRKError700:
			replyError = kDSReplyInvalidMemoryRange;
			break;
			case TRKError704:
			replyError = kDSReplyInvalidProcessId;
			break;
			case TRKError705:
			replyError = kDSReplyInvalidThreadId;
			break;
			case TRKError706:
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
0x4: options (u8)
0x8: first register (u16)
0xC: last register (u16)
0x10: register data (u32[])
*/
DSError TRKDoReadRegisters(MessageBuffer* b){
	int commandResult;
	u8 options;
	u16 firstRegister;
	u16 lastRegister;
	u8 buf[8];
	CommandReply local_50;
	
	options = b->fData[8];
	firstRegister = *(u16*)(b->fData + 12);
	lastRegister = *(u16*)(b->fData + 16);

	if(firstRegister > lastRegister){
		return TRKStandardACK(b, kDSReplyACK, kDSReplyInvalidRegisterRange);
	}

	local_50.commandId = kDSReplyACK;
	local_50.unk0 = 0x468;
	local_50.unkC = g_CurrentSequence;
	g_CurrentSequence++;

	TRKResetBuffer(b,0);
	TRKAppendBuffer_ui8(b,(u8*)&local_50,sizeof(CommandReply));

	//???
	commandResult = TRKTargetAccessDefault(0,36,b,buf,1);

	if(commandResult == kNoError){
		commandResult = TRKTargetAccessFP(0,33,b,buf,1);
	}
	if(commandResult == kNoError){
		commandResult = TRKTargetAccessExtended1(0,0x60,b,buf,1);
	}
	if(commandResult == kNoError){
		commandResult = TRKTargetAccessExtended2(0,31,b,buf,1);
	}

	//Check if there was an error, and respond accordingly
	if(commandResult != kNoError){
		switch(commandResult){
			case TRKError703:
			commandResult = kDSReplyUnsupportedOptionError;
			break;
			case TRKError701:
			commandResult = kDSReplyInvalidRegisterRange;
			break;
			case TRKError702:
			commandResult = kDSReplyCWDSException;
			break;
			case TRKError704:
			commandResult = kDSReplyInvalidProcessId;
			break;
			case TRKError705:
			commandResult = kDSReplyInvalidThreadId;
			break;
			case TRKError706:
			commandResult = kDSReplyOsError;
			break;
			default:
			commandResult = kDSReplyCWDSError;
		}

		return TRKStandardACK(b, kDSReplyACK, commandResult);
	}else{
		//No error, send ack
		return TRKSendACK(b);
	}
}

/*
Message parameters:
0x4: options (u8)
0x8: first register (u16)
0xC: last register (u16)
0x10: register data (u32[])
*/
DSError TRKDoWriteRegisters(MessageBuffer* b){
	int commandResult;
	u8 options;
	u16 firstRegister;
	u16 lastRegister;
	u8 buf[8];
	CommandReply local_50;
	
	options = b->fData[8];
	firstRegister = *(u16*)(b->fData + 12);
	lastRegister = *(u16*)(b->fData + 16);

	TRK_SetBufferPosition(b,0);

	if(firstRegister > lastRegister){
		return TRKStandardACK(b, kDSReplyACK, kDSReplyInvalidRegisterRange);
	}

	TRK_SetBufferPosition(b,0x40);

	switch(options){
		case kDSRegistersDefault:
		commandResult = TRKTargetAccessDefault(firstRegister, lastRegister, b, buf, 0);
		break;
		case kDSRegistersFP:
		commandResult = TRKTargetAccessFP(firstRegister, lastRegister, b, buf, 0);
		break;
		case kDSRegistersExtended1:
		commandResult = TRKTargetAccessExtended1(firstRegister, lastRegister, b, buf, 0);
		break;
		case kDSRegistersExtended2:
		commandResult = TRKTargetAccessExtended2(firstRegister, lastRegister, b, buf, 0);
		break;
		default:
		//invalid option
		commandResult = TRKError703;
		break;
	}

	TRKResetBuffer(b,0);

	if (commandResult == 0) {
		TRK_memset(&local_50, 0, sizeof(CommandReply));
		local_50.unk0 = 0x40;
		local_50.commandId = kDSReplyACK;
		local_50.replyError = commandResult;
		local_50.unkC = g_CurrentSequence;
		g_CurrentSequence = g_CurrentSequence + 1;
		commandResult = TRK_AppendBuffer(b, (u8*)&local_50, sizeof(CommandReply));
	}

	//Check if there was an error, and respond accordingly
	if(commandResult != kNoError){
		switch(commandResult){
			case TRKError703:
			commandResult = kDSReplyUnsupportedOptionError;
			break;
			case TRKError701:
			commandResult = kDSReplyInvalidRegisterRange;
			break;
			case TRKError302:
			commandResult = kDSReplyPacketSizeError;
			break;
			case TRKError702:
			commandResult = kDSReplyCWDSException;
			break;
			case TRKError704:
			commandResult = kDSReplyInvalidProcessId;
			break;
			case TRKError705:
			commandResult = kDSReplyInvalidThreadId;
			break;
			case TRKError706:
			commandResult = kDSReplyOsError;
			break;
			default:
			commandResult = kDSReplyCWDSError;
		}

		return TRKStandardACK(b, kDSReplyACK, commandResult);
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
0x4: options (u8, DSMessageStepOptions enum value)
If kDSStepIntoCount/kDSStepOverCount:
0x8: count (u8, instructions to step over)
If kDSStepIntoRange/kDSStepOverRange:
0xC: range start (u32)
0x10: range end (u32)
*/
DSError TRKDoStep(MessageBuffer *b){
	DSError result;
	u8 options;
	u8 count;
	u32 rangeStart;
	u32 rangeEnd;

	TRK_SetBufferPosition(b, 0);

	options = b->fData[8];
	rangeStart = *(u32*)(b->fData + 16);
	rangeEnd = *(u32*)(b->fData + 20);

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
		u32 pc = TRKTargetGetPC();
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
	CommandReply reply;
	u8 replyError;

	switch(TRKTargetStop()){
		case kNoError:
		replyError = 0;
		break;
		case TRKError704:
		replyError = kDSReplyInvalidProcessId;
		break;
		case TRKError705:
		replyError = kDSReplyInvalidThreadId;
		break;
		case TRKError706:
		replyError = kDSReplyOsError;
		break;
		default:
		replyError = kDSReplyError;
		break;
	}

	return TRKStandardACK(b,kDSReplyACK,replyError);
}

DSError TRKDoSetOption(MessageBuffer *b){
	u8 options = b->fData[12];

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
