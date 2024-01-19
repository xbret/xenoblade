#include "PowerPC_EABI_Support/MetroTRK/Processor/ppc/Generic/ppc_targimpl.h"
#include "PowerPC_EABI_Support/MetroTRK/Processor/ppc/Generic/flush_cache.h"
#include "PowerPC_EABI_Support/MetroTRK/Processor/ppc/Board/dolphin/memmap.h"
#include "PowerPC_EABI_Support/MetroTRK/targimpl.h"
#include "PowerPC_EABI_Support/MetroTRK/mpc_7xx_603e.h"
#include "PowerPC_EABI_Support/MetroTRK/dolphin_trk_glue.h"
#include "PowerPC_EABI_Support/MetroTRK/msghndlr.h"
#include "PowerPC_EABI_Support/MetroTRK/support.h"
#include "PowerPC_EABI_Support/MetroTRK/rvl_mem.h"
#include "revolution/OS.h"

typedef struct ExceptionStatus{
	StopInfo_PPC exceptionInfo;
	ui8 inTRK;
	ui8 exceptionDetected;
}ExceptionStatus;

typedef struct TRKStepStatus {
	bool active; //0x0
	DSMessageStepOptions type; //0x4
	ui32 count; //0x8
	ui32 rangeStart; //0xC
	ui32 rangeEnd; //0x10
	ui32 unk14;
} TRKStepStatus;

ProcessorState_PPC gTRKCPUState;

ProcessorRestoreFlags_PPC gTRKRestoreFlags = {
	false,
	false
};

TRKState_PPC gTRKState;

static ExceptionStatus gTRKExceptionStatus = {
	{0,0,0},
	true,
	0
};

static TRKStepStatus gTRKStepStatus = {
	false,
	kDSStepIntoCount,
	0,
	0,
	0
};

ui128 TRKvalue128_temp;
static ui16 TRK_saved_exceptionID = 0;
Default_PPC gTRKSaveState;

typedef void (*RegAccessFunc)(void* srcDestPtr, ui128 val);

static void TRKExceptionHandler(ui16);
void TRKInterruptHandlerEnableInterrupts();
static void GetThreadInfo(int*, int*);

//Instruction macros
#define INSTR_NOP 0x60000000
#define INSTR_BLR 0x4E800020
#define INSTR_PSQ_ST(psr, offset, rDest, w, gqr) (0xF0000000 | (psr << 21) | (rDest << 16) | (w << 15) | (gqr << 12) | offset)
#define INSTR_PSQ_L(psr, offset, rSrc, w, gqr) (0xE0000000 | (psr << 21) | (rSrc << 16) | (w << 15) | (gqr << 12) | offset)
#define INSTR_STW(rSrc, offset, rDest) (0x90000000 | (rSrc << 21) | (rDest << 16) | offset)
#define INSTR_LWZ(rDest, offset, rSrc) (0x80000000 | (rDest << 21) | (rSrc << 16) | offset)
#define INSTR_STFD(fprSrc, offset, rDest) (0xD8000000 | (fprSrc << 21) | (rDest << 16) | offset)
#define INSTR_LFD(fprDest, offset, rSrc) (0xC8000000 | (fprDest << 21) | (rSrc << 16) | offset)
#define INSTR_MFSPR(rDest, spr) (0x7C000000 | (rDest << 21) | ((spr & 0xFE0) << 6) | ((spr & 0x1F) << 16) | 0x2A6)
#define INSTR_MTSPR(spr, rSrc) (0x7C000000 | (rSrc << 21) | ((spr & 0xFE0) << 6) | ((spr & 0x1F) << 16) | 0x3A6)

asm ui32 __TRK_get_MSR(){
	nofralloc
	mfmsr r3
	blr
}

asm void __TRK_set_MSR(register ui32 val){
	nofralloc
	mtmsr val
	blr
}

//unused
asm ui32 __TRK_get_PVR(){
	nofralloc
	mfspr r3, SPR_PVR
	blr
}

//unused
asm ui32 __TRK_get_IBAT0U(){
	nofralloc
	mfspr r3, SPR_IBAT0U
	blr
}

//unused
asm ui32 __TRK_get_IBAT0L(){
	nofralloc
	mfspr r3, SPR_IBAT0L
	blr
}

//unused
asm ui32 __TRK_get_IBAT1U(){
	nofralloc
	mfspr r3, SPR_IBAT1U
	blr
}

//unused
asm ui32 __TRK_get_IBAT1L(){
	nofralloc
	mfspr r3, SPR_IBAT1L
	blr
}

//unused
asm ui32 __TRK_get_IBAT2U(){
	nofralloc
	mfspr r3, SPR_IBAT2U
	blr
}

//unused
asm ui32 __TRK_get_IBAT2L(){
	nofralloc
	mfspr r3, SPR_IBAT2L
	blr
}

//unused
asm ui32 __TRK_get_IBAT3U(){
	nofralloc
	mfspr r3, SPR_IBAT3U
	blr
}

//unused
asm ui32 __TRK_get_IBAT3L(){
	nofralloc
	mfspr r3, SPR_IBAT3L
	blr
}

//unused
asm ui32 __TRK_get_DBAT0U(){
	nofralloc
	mfspr r3, SPR_DBAT0U
	blr
}

//unused
asm ui32 __TRK_get_DBAT0L(){
	nofralloc
	mfspr r3, SPR_DBAT0L
	blr
}

//unused
asm ui32 __TRK_get_DBAT1U(){
	nofralloc
	mfspr r3, SPR_DBAT1U
	blr
}

//unused
asm ui32 __TRK_get_DBAT1L(){
	nofralloc
	mfspr r3, SPR_DBAT1L
	blr
}

//unused
asm ui32 __TRK_get_DBAT2U(){
	nofralloc
	mfspr r3, SPR_DBAT2U
	blr
}

//unused
asm ui32 __TRK_get_DBAT2L(){
	nofralloc
	mfspr r3, SPR_DBAT2L
	blr
}

//unused
asm ui32 __TRK_get_DBAT3U(){
	nofralloc
	mfspr r3, SPR_DBAT3U
	blr
}

//unused
asm ui32 __TRK_get_DBAT3L(){
	nofralloc
	mfspr r3, SPR_DBAT3L
	blr
}

DSError TRKValidMemory32(const void* addr, size_t length, ValidMemoryOptions readWriteable){
	DSError err = kInvalidMemory;
	const ui8* start;
	const ui8* end;
	s32 i;

	start = (const ui8*)addr;
	end = ((const ui8*)addr + (length - 1));
	
	if(end < start){
		return kInvalidMemory;
	}

	for(i = 0; i < (s32)(sizeof(gTRKMemMap)/sizeof(memRange)); i++){
		if(start <= (const ui8*)gTRKMemMap[i].end && end >= (const ui8*)gTRKMemMap[i].start){
			if((readWriteable == kValidMemoryReadable && !gTRKMemMap[i].readable) || (readWriteable == kValidMemoryWriteable && !gTRKMemMap[i].writeable)){
				err = kInvalidMemory;
			}else{
				err = kNoError;

				if(start < (const ui8*)gTRKMemMap[i].start){
					err = TRKValidMemory32(start, (ui32)((const ui8*)gTRKMemMap[i].start - start), readWriteable);
				}

				if(err == kNoError && end > (const ui8*)gTRKMemMap[i].end){
					err = TRKValidMemory32((const ui8*)gTRKMemMap[i].end, (ui32)(end - (const ui8*)gTRKMemMap[i].end), readWriteable);
				}
			}

			break;
		}
	}

	return err;
}

//This is a certified metrowerks moment
#include "PowerPC_EABI_Support/MetroTRK/ppc_mem.h"

static void TRK_ppc_memcpy(void* dest, const void* src, int n, ui32 param_4, ui32 param_5){
	ui32 msr;
	ui8* srcTemp = (ui8*)src;
	ui8* destTemp = (ui8*)dest;

	msr = __TRK_get_MSR(); //save the original MSR value

	while(n != 0) {
		ui8 val;
		__TRK_set_MSR(param_5);
		val = ppc_readbyte1(srcTemp);
		asm{sync}

		__TRK_set_MSR(param_4);
		ppc_writebyte1(destTemp, val);
		asm{sync}

		srcTemp++;
		destTemp++;
		n--;
	}

	__TRK_set_MSR(msr); //restore MSR to its original value
}

DSError TRKTargetAccessMemory(void *data, void* start, size_t *length, MemoryAccessOptions accessOptions,bool read){
	DSError error;
	ui32 uVar5;
	void *addr;
	ui32 param4;
	ExceptionStatus tempExceptionStatus;

	tempExceptionStatus = gTRKExceptionStatus;
	gTRKExceptionStatus.exceptionDetected = false;
	
	addr = TRKTargetTranslate((ui32*)start);
	error = TRKValidMemory32(addr, *length, read ? kValidMemoryReadable : kValidMemoryWriteable);
	
	if (error != kNoError) {
		 *length = 0;
	}else{
		uVar5 = __TRK_get_MSR();
		param4 = uVar5 | (gTRKCPUState.Extended1.MSR & MSR_DR);
		
		if (read) {
			TRK_ppc_memcpy(data, addr, *length, uVar5, param4);
		}else{
			TRK_ppc_memcpy(addr, data, *length, param4, uVar5);
			TRK_flush_cache((ui32)addr, *length);
			if ((void*)start != addr) {
				TRK_flush_cache((ui32)start, *length);
			}
		}
	}
	
	if (gTRKExceptionStatus.exceptionDetected) {
		*length = 0;
		error = kCWDSException;
	}

	 gTRKExceptionStatus = tempExceptionStatus;
	return error;
}

//unused
DSError TRKTargetReadInstruction(void* data, void* start){
	DSError error = kNoError;
	size_t registersLength = sizeof(InstructionType);

	error = TRKTargetAccessMemory(data, start, &registersLength, kUserMemory, true);

	if(error == kNoError && registersLength != sizeof(InstructionType)){
		error = kInvalidMemory;
	}

	return error;
}

DSError TRKTargetAccessDefault(ui32 firstRegister, ui32 lastRegister, MessageBuffer* b, size_t* registersLengthPtr, bool read){
	DSError error;
	ui32 count;
	ui32* data;
	ExceptionStatus tempExceptionStatus;
	
	if (lastRegister > TRK_DEFAULT_XER) {
		return kInvalidRegister;
	}
	
	tempExceptionStatus = gTRKExceptionStatus;
	gTRKExceptionStatus.exceptionDetected = false;
	
	data = gTRKCPUState.Default.GPR + firstRegister;
	count = (lastRegister - firstRegister) + 1;
	*registersLengthPtr = count * sizeof(DefaultType);
		
	if(read){
		error = TRKAppendBuffer_ui32(b, data, count);
	}else{
		error = TRKReadBuffer_ui32(b, data, count);
	}
		
	if(gTRKExceptionStatus.exceptionDetected){
		*registersLengthPtr = 0;
		error = kCWDSException;
	}
		
	gTRKExceptionStatus = tempExceptionStatus;
	return error;
}


DSError TRKTargetAccessFP(ui32 firstRegister,ui32 lastRegister,MessageBuffer *b,size_t *registersLengthPtr,bool read){
	DSError error;
	FloatType temp;
	ExceptionStatus tempExceptionStatus;
	
	if (lastRegister > TRK_DEFAULT_LR) {
		return kInvalidRegister;
	}

	tempExceptionStatus = gTRKExceptionStatus;
	gTRKExceptionStatus.exceptionDetected = false;
	
		__TRK_set_MSR(__TRK_get_MSR() | MSR_FP);
		*registersLengthPtr = 0;
		error = kNoError;

		while (firstRegister <= lastRegister && error == kNoError) {
			if (read) {
				TRKPPCAccessFPRegister(&temp,firstRegister,read);
				error = TRKAppendBuffer1_ui64(b,temp);
			}else{
				TRKReadBuffer1_ui64(b,&temp);
				error = TRKPPCAccessFPRegister(&temp,firstRegister, read);
			}
			
			firstRegister++;
			*registersLengthPtr += sizeof(FloatType);
		}

		if (gTRKExceptionStatus.exceptionDetected) {
			*registersLengthPtr = 0;
			error = kCWDSException;
		}
	

	gTRKExceptionStatus = tempExceptionStatus;
	return error;
}


DSError TRKTargetAccessExtended1(ui32 firstRegister,ui32 lastRegister,MessageBuffer *b,size_t *registersLengthPtr,bool read){
	DSError error;
	ui32 *data;
	int count;
	ExceptionStatus tempExceptionStatus;
	
	if (lastRegister > DS_EXTENDED1_MAX_REGISTER_6xx_7xx) {
		return kInvalidRegister;
	}

	tempExceptionStatus = gTRKExceptionStatus;
	gTRKExceptionStatus.exceptionDetected = false;

		*registersLengthPtr = 0;
	
		if (firstRegister <= lastRegister) {
			data = (ui32*)&gTRKCPUState.Extended1 + firstRegister;
			count = lastRegister - firstRegister + 1;
			*registersLengthPtr = count * 4;
			
			if(read){
				error = TRKAppendBuffer_ui32(b,data,count);
			}else{
				if (data <= &gTRKCPUState.Extended1.TBU && (data + count - 1) >= &gTRKCPUState.Extended1.TBL) {
					gTRKRestoreFlags.TBR = 1;
				}
				
				if (data <= &gTRKCPUState.Extended1.DEC && (data + count - 1) >= &gTRKCPUState.Extended1.DEC) {
					gTRKRestoreFlags.DEC = 1;
				}
				error = TRKReadBuffer_ui32(b,data,count);
			}
		}
		if (gTRKExceptionStatus.exceptionDetected) {
			*registersLengthPtr = 0;
			error = kCWDSException;
		}
	

	gTRKExceptionStatus = tempExceptionStatus;
	return error;
}

/*
** Useful defines.
*/
#define ALTIVEC_VECTOR_REG_ACCESS_MIN    0
#define ALTIVEC_VECTOR_REG_ACCESS_MAX    31
#define ALTIVEC_VSCR_ACCESS              32
#define ALTIVEC_VRSAVE_SPR_ACCESS        33

DSError TRKTargetAccessExtended2(ui32 firstRegister, ui32 lastRegister, MessageBuffer *b, size_t *registersLengthPtr, bool read){
	DSError error;
	FloatType temp;
	ui32 temp2;
	ExceptionStatus tempExceptionStatus;
	
	if (lastRegister > ALTIVEC_VECTOR_REG_ACCESS_MAX) {
		return kInvalidRegister;
	}

	tempExceptionStatus = gTRKExceptionStatus;
	gTRKExceptionStatus.exceptionDetected = false;

	
	TRKPPCAccessSPR(&temp2, SPR_HID2, true);
	temp2 |= 0xA0000000;
	TRKPPCAccessSPR(&temp2, SPR_HID2, false);
	temp2 = 0;
	TRKPPCAccessSPR(&temp2, SPR_GQR0, false);
	*registersLengthPtr = 0;
	error = kNoError;
	
	while (firstRegister <= lastRegister && error == kNoError) {
		if(read){
			error = TRKPPCAccessPairedSingleRegister(&temp, firstRegister, read);
			error = TRKAppendBuffer1_ui64(b,temp);
		}else{
			error = TRKReadBuffer1_ui64(b,&temp);
			error = TRKPPCAccessPairedSingleRegister(&temp, firstRegister, read);
		}
			
		firstRegister++;
		*registersLengthPtr += sizeof(FloatType);
	}
	
	if (gTRKExceptionStatus.exceptionDetected) {
		*registersLengthPtr = 0;
		error = kCWDSException;
	}
	
	gTRKExceptionStatus = tempExceptionStatus;

	return error;
}

//unused
DSError TRKTargetVersions(DSVersions* versions){
	versions->kernelMajor = DS_KERNEL_MAJOR_VERSION;
	versions->kernelMinor = DS_KERNEL_MINOR_VERSION;
	versions->protocolMajor = DS_PROTOCOL_MAJOR_VERSION;
	versions->protocolMinor = DS_PROTOCOL_MINOR_VERSION;
	return kNoError;
}

//unused
DSError TRKTargetCheckException(){
	DSError error = kNoError;

	if (gTRKExceptionStatus.exceptionDetected) {
		gTRKExceptionStatus.exceptionDetected = false;
		error = kCWDSException;
	}

	return error;
}

asm void TRK_InterruptHandler(ui16 exceptionNumber){
	nofralloc
	mtsrr0 r2
	mtsrr1 r4
	mfspr r4, SPR_SPRG3
	mfcr r2
	mtspr SPR_SPRG3, r2

	lis r2, gTRKState@h
	ori r2, r2, gTRKState@l
	lwz r2, TRKState_PPC.MSR(r2)
	ori r2, r2, (MSR_EE | MSR_RI)
	xori r2, r2, (MSR_EE | MSR_RI)
	sync
	mtmsr r2
	sync

#if TRK_TRANSPORT_INT_DRIVEN

	lis r2, TRK_saved_exceptionID@h
	ori r2, r2, TRK_saved_exceptionID@l
	sth r3, 0(r2)

	cmpwi r3, TRK_TRANSPORT_INT_KEY
	bne NonTransportInterrupt

	lis r2, gTRKCPUState@h
	ori r2, r2, gTRKCPUState@l
	mflr r3
	stw r3, ProcessorState_PPC.transport_handler_saved_ra(r2)
	bl TRKUARTInterruptHandler

	lis r2, gTRKCPUState@h
	ori r2, r2, gTRKCPUState@l
	lwz r3, ProcessorState_PPC.transport_handler_saved_ra(r2)
	mtlr r3

	lis r2, gTRKState@h
	ori r2, r2, gTRKState@l
	lwz r2, TRKState_PPC.inputPendingPtr(r2)
	lbz r2, 0(r2)
	cmpwi r2, 0
	beq TransportReturn

	lis r2, gTRKExceptionStatus@h
	ori r2, r2, gTRKExceptionStatus@l
	lbz r2, ExceptionStatus.inTRK(r2)
	cmpwi r2, 1
	beq TransportReturn

	lis r2, gTRKState@h
	ori r2, r2, gTRKState@l
	li r3, 1
	stb r3, TRKState_PPC.inputActivated(r2)
	b NonTransportInterrupt

TransportReturn:
	lis r2, gTRKSaveState@h
	ori r2, r2, gTRKSaveState@l
	lwz r3, Default_PPC.CR(r2)
	mtcrf 0xff, r3

	lwz r3, Default_PPC.GPR[3](r2)
	lwz r2, Default_PPC.GPR[2](r2)
	rfi 

NonTransportInterrupt:
	lis r2, TRK_saved_exceptionID@h
	ori r2, r2, TRK_saved_exceptionID@l
	lhz r3, 0(r2)

#endif

	lis r2, gTRKExceptionStatus@h
	ori r2, r2, gTRKExceptionStatus@l
	lbz r2, ExceptionStatus.inTRK(r2)
	cmpwi r2, 0
	bne TRKExceptionHandler

	lis r2, gTRKCPUState@h
	ori r2, r2, gTRKCPUState@l

	stw r0, ProcessorState_PPC.Default.GPR[0](r2)
	stw r1, ProcessorState_PPC.Default.GPR[1](r2)
	mfspr r0, SPR_SPRG1
	stw r0, ProcessorState_PPC.Default.GPR[2](r2)
	sth r3, ProcessorState_PPC.Extended1.exceptionID(r2)
	sth r3, (ProcessorState_PPC.Extended1.exceptionID + 2)(r2)

	mfspr r0, SPR_SPRG2
	stw r0, ProcessorState_PPC.Default.GPR[3](r2)
	stmw r4, ProcessorState_PPC.Default.GPR[4](r2)

	mfspr r27, SPR_SRR0
	mfspr r28, SPR_LR
	mfspr r29, SPR_SPRG3
	mfspr r30, SPR_CTR
	mfspr r31, SPR_XER
	stmw r27, ProcessorState_PPC.Default.PC(r2)

	bl TRKSaveExtended1Block

	lis r2, gTRKExceptionStatus@h
	ori r2, r2, gTRKExceptionStatus@l
	li r3, 1
	stb r3, ExceptionStatus.inTRK(r2)

	lis r2, gTRKState@h
	ori r2, r2, gTRKState@l

	lwz r0, TRKState_PPC.MSR(r2)
	sync
	mtmsr r0
	sync

	lwz r0, TRKState_PPC.LR(r2)
	mtlr r0
	lwz r0, TRKState_PPC.CTR(r2)
	mtctr r0
	lwz r0, TRKState_PPC.XER(r2)
	mtxer r0
	lwz r0, TRKState_PPC.DSISR(r2)
	mtspr SPR_DSISR, r0
	lwz r0, TRKState_PPC.DAR(r2)
	mtspr SPR_DAR, r0

	lmw r3, TRKState_PPC.GPR[3](r2)
	lwz r0, TRKState_PPC.GPR[0](r2)
	lwz r1, TRKState_PPC.GPR[1](r2)
	lwz r2, TRKState_PPC.GPR[2](r2)
	b TRKPostInterruptEvent
}


static asm void TRKExceptionHandler(ui16 r3){
	nofralloc
	lis r2, gTRKExceptionStatus@h
	ori r2, r2, gTRKExceptionStatus@l
	sth r3, ExceptionStatus.exceptionInfo.exceptionID(r2)
	mfspr r3, SPR_SRR0
	stw r3, ExceptionStatus.exceptionInfo.PC(r2)

	lhz r3, ExceptionStatus.exceptionInfo.exceptionID(r2)
	cmpwi r3, PPC_MACHINECHECK
	beq skip_instruction
	cmpwi r3, PPC_DATAACCESSERROR
	beq skip_instruction
	cmpwi r3, PPC_INSTACCESSERROR
	beq skip_instruction
	cmpwi r3, PPC_ALIGNMENTERROR
	beq skip_instruction
	cmpwi r3, PPC_PROGRAMERROR
	beq skip_instruction
	cmpwi r3, PPC_FPUNAVAILABLE
	beq skip_instruction
#ifdef PPC_INSTR_SKIP_EXCEPTION1
	cmpwi r3, PPC_INSTR_SKIP_EXCEPTION1
	beq skip_instruction
#endif
#ifdef PPC_INSTR_SKIP_EXCEPTION2
	cmpwi r3, PPC_INSTR_SKIP_EXCEPTION2
	beq skip_instruction
#endif
#ifdef PPC_INSTR_SKIP_EXCEPTION3
	cmpwi r3, PPC_INSTR_SKIP_EXCEPTION3
	beq skip_instruction
#endif
#ifdef PPC_INSTR_SKIP_EXCEPTION4
	cmpwi r3, PPC_INSTR_SKIP_EXCEPTION4
	beq skip_instruction
#endif
	b set_exception_flag
skip_instruction:
	mfspr r3, SPR_SRR0
	addi r3, r3, 0x4
	mtspr SPR_SRR0, r3
set_exception_flag:
	lis r2, gTRKExceptionStatus@h
	ori r2, r2, gTRKExceptionStatus@l
	li r3, 0x1
	stb r3, ExceptionStatus.exceptionDetected(r2)
	mfspr r3, SPR_SPRG3
	mtcrf 0xff, r3
	mfspr r2, SPR_SPRG1
	mfspr r3, SPR_SPRG2
	rfi
}

#define SUPPORT_TRAP 0x0FE00000

void TRKPostInterruptEvent(void){
	NubEventType eventType;
	ui32 inst;
	NubEvent event;
	
#if TRK_TRANSPORT_INT_DRIVEN
	if (gTRKState.inputActivated) {
		gTRKState.inputActivated = false;
		return;
	}
#endif
	switch((ui16)(gTRKCPUState.Extended1.exceptionID & 0xFFFF)) {
		case PPC_PROGRAMERROR:
		case PPC_TRACE:
		TRKTargetReadInstruction((void*)&inst, (void*)gTRKCPUState.Default.PC);

		if (inst == SUPPORT_TRAP) {
			eventType = kSupportEvent;
		}else{
			eventType = kBreakpointEvent;
		}
		break;
		default:
		eventType = kExceptionEvent;
		break;
	}

	TRKConstructEvent(&event,eventType);
	TRKPostEvent(&event);
}

asm void TRKSwapAndGo(){
	nofralloc
	lis r3, gTRKState@h
	ori r3, r3, gTRKState@l
	stmw r0, TRKState_PPC.GPR[0](r3)
	mfmsr r0
	stw r0, TRKState_PPC.MSR(r3)
	mflr r0
	stw r0, TRKState_PPC.LR(r3)
	mfctr r0
	stw r0, TRKState_PPC.CTR(r3)
	mfxer r0
	stw r0, TRKState_PPC.XER(r3)
	mfspr r0, SPR_DSISR
	stw r0, TRKState_PPC.DSISR(r3)
	mfspr r0, SPR_DAR
	stw r0, TRKState_PPC.DAR(r3)

	li r1, (MSR_EE | MSR_RI)
	nor r1, r1, r1
	mfmsr r3
	and r3, r3, r1
	mtmsr r3

#if TRK_TRANSPORT_INT_DRIVEN
	lis r2, gTRKState@h
	ori r2, r2, gTRKState@l
	lwz r2, TRKState_PPC.inputPendingPtr(r2)
	lbz r2, 0(r2)
	cmpwi r2, 0
	beq NoOutgoingInput

	lis r2, gTRKState@h
	ori r2, r2, gTRKState@l
	li r3, 1
	stb r3, TRKState_PPC.inputActivated(r2)
	b TRKInterruptHandlerEnableInterrupts
NoOutgoingInput:
#endif

	lis r2, gTRKExceptionStatus@h
	ori r2, r2, gTRKExceptionStatus@l
	li r3, 0
	stb r3, 0xc(r2)
	bl TRKRestoreExtended1Block

	lis r2, gTRKCPUState@h
	ori r2, r2, gTRKCPUState@l
	lmw r27, ProcessorState_PPC.Default.PC(r2)
	mtspr SPR_SRR0, r27
	mtspr SPR_LR, r28
	mtcrf 0xff, r29
	mtspr SPR_CTR, r30
	mtspr SPR_XER, r31

	lmw r3, ProcessorState_PPC.Default.GPR[3](r2)
	lwz r0, ProcessorState_PPC.Default.GPR[0](r2)
	lwz r1, ProcessorState_PPC.Default.GPR[1](r2)
	lwz r2, ProcessorState_PPC.Default.GPR[2](r2)
	rfi
}

asm void TRKInterruptHandlerEnableInterrupts(){
	nofralloc
	lis r2, gTRKState@h
	ori r2, r2, gTRKState@l
	lwz r0, TRKState_PPC.MSR(r2)
	sync
	mtmsr r0
	sync
	lwz r0, TRKState_PPC.LR(r2)
	mtlr r0
	lwz r0, TRKState_PPC.CTR(r2)
	mtctr r0
	lwz r0, TRKState_PPC.XER(r2)
	mtxer r0
	lwz r0, TRKState_PPC.DSISR(r2)
	mtspr SPR_DSISR, r0
	lwz r0, TRKState_PPC.DAR(r2)
	mtspr SPR_DAR, r0
	lmw r3, TRKState_PPC.GPR[3](r2)
	lwz r0, TRKState_PPC.GPR[0](r2)
	lwz r1, TRKState_PPC.GPR[1](r2)
	lwz r2, TRKState_PPC.GPR[2](r2)
	b TRKPostInterruptEvent
}

DSError TRKTargetInterrupt(NubEvent* event){
	DSError error = kNoError;

	switch(event->fType){
		case kBreakpointEvent:
		case kExceptionEvent:
			if (TRKTargetCheckStep() == false) {
				TRKTargetSetStopped(true);
				error = TRKDoNotifyStopped(kDSNotifyStopped);
			}
			break;
		default:
			break;
	}

	return error;
}

#define CURRENT_CONTEXT_ADDR    0xD4
#define FPU_CONTEXT_ADDR        0xD8
#define ROOT_THREAD_ADDR        0xDC
#define PREVIOUS_THREAD_ADDR    0xE0
#define CURRENT_THREAD_ADDR     0xE4

DSError TRKTargetAddStopInfo(MessageBuffer* b){
	DSError error;
	ui32* puVar1;
	ui32 local_458;
	int local_45c;
	int auStack_460;
	msgbuf_t reply;
	
	TRK_memset(&reply,0,TRK_MSG_HEADER_LENGTH);
	reply.msgLength = 0x4e8;
	reply.commandId = kDSNotifyStopped;
	reply.replyErrorInt = gTRKCPUState.Default.PC;
	GetThreadInfo(&local_45c,&auStack_460);
	*(ui32*)&reply.unk10[4] = local_45c;
	*(ui32*)&reply.unk10[8] = *(ui32*)ConvertAddress(CURRENT_THREAD_ADDR);
	TRKTargetReadInstruction((void*)&local_458, (void*)gTRKCPUState.Default.PC);
	reply.unkC = local_458;
	*(ui32*)reply.unk10 = gTRKCPUState.Extended1.exceptionID & 0xFFFF;

	error = TRKAppendBuffer_ui8(b, (ui8*)&reply, TRK_MSG_HEADER_LENGTH);

	if (error == kNoError) {
		s32 i;

		for(i = 0; i < 0x20; i++) {
			TRKAppendBuffer1_ui32(b, gTRKCPUState.Default.GPR[i]);
		}

		TRKAppendBuffer1_ui32(b,gTRKCPUState.Default.PC);
		TRKAppendBuffer1_ui32(b,gTRKCPUState.Default.LR);
		TRKAppendBuffer1_ui32(b,gTRKCPUState.Default.CR);
		TRKAppendBuffer1_ui32(b,gTRKCPUState.Default.CTR);
		error = TRKAppendBuffer1_ui32(b,gTRKCPUState.Default.XER);
	}

	if (error == kNoError) {
		ui32 address;

		address = *(ui32*)ConvertAddress(CURRENT_CONTEXT_ADDR);
		TRKAppendBuffer1_ui32(b,address);
		address = *(ui32*)ConvertAddress(FPU_CONTEXT_ADDR);
		TRKAppendBuffer1_ui32(b,address);
		address = *(ui32*)ConvertAddress(ROOT_THREAD_ADDR);
		TRKAppendBuffer1_ui32(b,address);
		address = *(ui32*)ConvertAddress(PREVIOUS_THREAD_ADDR);
		TRKAppendBuffer1_ui32(b,address);
		address = *(ui32*)ConvertAddress(CURRENT_THREAD_ADDR);
		error = TRKAppendBuffer1_ui32(b,address);
	}

	if (error == kNoError) {
		s8 writeData[1024];
		size_t length = sizeof(writeData);

		error = TRKTargetAccessMemory((void*)writeData, (void*)(gTRKCPUState.Default.PC & 0xfffffc00),&length,kUserMemory,true);
		TRK_AppendBuffer(b,writeData,sizeof(writeData));
	}

	return error;
}

void TRKTargetAddExceptionInfo(MessageBuffer* b){
	ui32 local_54;
	msgbuf_t reply;
	
	TRK_memset(&reply,0,sizeof(msgbuf_t));
	reply.msgLength = sizeof(msgbuf_t);
	reply.commandId = kDSNotifyException;
	reply.replyErrorInt = gTRKExceptionStatus.exceptionInfo.PC;
	TRKTargetReadInstruction((void*)&local_54,(void*)gTRKExceptionStatus.exceptionInfo.PC);
	*(ui32*)&reply.unkC = local_54;
	*(ui32*)reply.unk10 = gTRKExceptionStatus.exceptionInfo.exceptionID;
	TRKAppendBuffer_ui8(b,(ui8 *)&reply,sizeof(msgbuf_t));
}

DSError TRKTargetEnableTrace(bool val){
	if(val){
		gTRKCPUState.Extended1.MSR = (gTRKCPUState.Extended1.MSR | MSR_SE) & (0xFFFFFFFF ^ MSR_EE);
	}else{
		gTRKCPUState.Extended1.MSR = (gTRKCPUState.Extended1.MSR & (0xFFFFFFFF ^ MSR_SE)) | MSR_EE;
	}
	return kNoError;
}

bool TRKTargetStepDone(){
	bool result = true;

	if (gTRKStepStatus.active && ((ui16)gTRKCPUState.Extended1.exceptionID) == PPC_TRACE) {
		switch(gTRKStepStatus.type){
			case kDSStepIntoCount:
			if (gTRKStepStatus.count > 0) {
				result = false;
			}
			break;
			case kDSStepIntoRange:
			if (gTRKCPUState.Default.PC >= gTRKStepStatus.rangeStart && gTRKCPUState.Default.PC <= gTRKStepStatus.rangeEnd) {
				result = false;
			}
			break;
			default:
			break;
		}
	}

	return result;
}

DSError TRKTargetDoStep(){
	gTRKStepStatus.active = true;
	TRKTargetEnableTrace(true);
	
	if (gTRKStepStatus.type == kDSStepIntoCount || gTRKStepStatus.type == kDSStepOverCount) {
		gTRKStepStatus.count--;
	}

	TRKTargetSetStopped(false);
	return kNoError;
}

static bool TRKTargetCheckStep(){
	if(gTRKStepStatus.active){
		TRKTargetEnableTrace(false);

		if(TRKTargetStepDone()){
			gTRKStepStatus.active = false;
		}else {
			TRKTargetDoStep();
		}
	}

	return gTRKStepStatus.active;
}

DSError TRKTargetSingleStep(ui8 count, bool stepOver){
	DSError error = kNoError;

	if (stepOver) {
		error = kUnsupportedError;
	}else{
		gTRKStepStatus.type = kDSStepIntoCount;
		gTRKStepStatus.count = count;
	
		error = TRKTargetDoStep();
	}

	return error;
}

DSError TRKTargetStepOutOfRange(ui32 rangeStart, ui32 rangeEnd, bool stepOver){
	DSError error = kNoError;
	
	if(stepOver){
		//Stepping over isn't supported for PowerPC
		error = kUnsupportedError;
	}else{
		gTRKStepStatus.type = kDSStepIntoRange;
		gTRKStepStatus.rangeStart = rangeStart;
		gTRKStepStatus.rangeEnd = rangeEnd;

		error = TRKTargetDoStep();
	}

	return error;
}

ui32 TRKTargetGetPC(){
	return gTRKCPUState.Default.PC;
}

DSError TRKTargetSupportRequest(){
	DSError error = kNoError;
	size_t* length;
	MessageCommandID commandId;
	DSIOResult ioResult;
	ui32 local_28;
	NubEvent event;

	commandId = gTRKCPUState.Default.GPR[3];

	switch(commandId) {
		default:
		TRKConstructEvent(&event,4);
		TRKPostEvent(&event);
		return error;
		break;
		case kDSOpenFile:
		error = HandleOpenFileSupportRequest((char*)gTRKCPUState.Default.GPR[4],
		(ui8)gTRKCPUState.Default.GPR[5],
		(ui32*)gTRKCPUState.Default.GPR[6],&ioResult);

		if (ioResult == kDSIONoError && error != kNoError) {
			ioResult = kDSIOError;
		}

		gTRKCPUState.Default.GPR[3] = ioResult;
		break;
		case kDSCloseFile:
		error = HandleCloseFileSupportRequest(gTRKCPUState.Default.GPR[4],&ioResult);
		
		if (ioResult == kDSIONoError && error != kNoError) {
			ioResult = kDSIOError;
		}
		
		gTRKCPUState.Default.GPR[3] = ioResult;
		break;
		case kDSPositionFile:
		local_28 = *(ui32*)gTRKCPUState.Default.GPR[5];
		error = HandlePositionFileSupportRequest(gTRKCPUState.Default.GPR[4],&local_28,
		(ui8)gTRKCPUState.Default.GPR[6],&ioResult);

		if (ioResult == kDSIONoError && error != kNoError) {
			ioResult = kDSIOError;
		}

		gTRKCPUState.Default.GPR[3] = ioResult;
		*(ui32*)gTRKCPUState.Default.GPR[5] = local_28;
		break;
		case kDSWriteFile:
		case kDSReadFile:
		length = (size_t*)gTRKCPUState.Default.GPR[5];
		error = TRK_SuppAccessFile(gTRKCPUState.Default.GPR[4],
		(ui8*)gTRKCPUState.Default.GPR[6], length,
		&ioResult, true, commandId == kDSReadFile);

		if (ioResult == kDSIONoError && error != kNoError) {
			ioResult = kDSIOError;
		}

		gTRKCPUState.Default.GPR[3] = ioResult;

		if (commandId == kDSReadFile) {
			TRK_flush_cache(gTRKCPUState.Default.GPR[6],*length);
		}
		break;
	}

	gTRKCPUState.Default.PC += 4;
	return error;
}

//unused
DSError TRKTargetFlushCache(u8 options, void* start, void* end){
	if(start < end){
		TRK_flush_cache((ui32)start, (ui32)((ui8*)end - (ui8*)start));
		return kNoError;
	}else{
		return kInvalidMemory;
	}
}

bool TRKTargetStopped(){
	return gTRKState.stopped;
}

void TRKTargetSetStopped(bool val){
	gTRKState.stopped = val;
}

DSError TRKTargetStop(){
	TRKTargetSetStopped(true);
	return kNoError;
}

DSError TRKPPCAccessSPR(void* srcDestPtr, ui32 spr, bool read){
	//all nop by default
	InstructionType instructionData[] = {
		INSTR_NOP,
		INSTR_NOP,
		INSTR_NOP,
		INSTR_NOP,
		INSTR_NOP,
		INSTR_NOP,
		INSTR_NOP,
		INSTR_NOP,
		INSTR_NOP,
		INSTR_NOP
	};

	if(read){
		instructionData[0] = INSTR_MFSPR(4, spr); //mfspr r4, spr
		instructionData[1] = INSTR_STW(4, 0, 3); //stw r4, 0(r3)
	}else{
		instructionData[0] = INSTR_LWZ(4, 0, 3); //lwz r4, 0(r3)
		instructionData[1] = INSTR_MTSPR(spr, 4); //mtspr spr, r4
	}

	return TRKPPCAccessSpecialReg(srcDestPtr, instructionData, read);
}

DSError TRKPPCAccessPairedSingleRegister(void* srcDestPtr, ui32 psr, bool read){
	//all nop by default
	InstructionType instructionData[] = {
		INSTR_NOP,
		INSTR_NOP,
		INSTR_NOP,
		INSTR_NOP,
		INSTR_NOP,
		INSTR_NOP,
		INSTR_NOP,
		INSTR_NOP,
		INSTR_NOP,
		INSTR_NOP
	};

	if (read) {
		instructionData[0] = INSTR_PSQ_ST(psr, 0, 3, 0, 0); //psq_st psr, 0(r3), 0, 0
	}else{
		instructionData[0] = INSTR_PSQ_L(psr, 0, 3, 0, 0); //psq_l psr, 0(r3), 0, 0
	}
	
	return TRKPPCAccessSpecialReg(srcDestPtr, instructionData, read);
}

#define FP_FPSCR_ACCESS     32
#define FP_FPECR_ACCESS     33

asm void ReadFPSCR(){
	nofralloc
	stwu r1, -0x40(r1)
	stfd f31, 0x10(r1)
	psq_st f31, 32(r1), 0, 0
	mffs f31
	stfd f31, 0(r3)
	psq_l f31, 32(r1), 0, 0
	lfd f31, 0x10(r1)
	addi r1, r1, 0x40
	blr
}

asm void WriteFPSCR(){
	nofralloc
	stwu r1, -0x40(r1)
	stfd f31, 0x10(r1)
	psq_st f31, 32(r1), 0, 0
	lfd f31, 0(r3)
	mtfsf 0xff, f31
	psq_l f31, 32(r1), 0, 0
	lfd f31, 0x10(r1)
	addi r1, r1, 0x40
	blr 
}


DSError TRKPPCAccessFPRegister(void* srcDestPtr, ui32 fpr, bool read){
	DSError error = kNoError;
	//all nop by default
	InstructionType instructionData1[] = {
		INSTR_NOP,
		INSTR_NOP,
		INSTR_NOP,
		INSTR_NOP,
		INSTR_NOP,
		INSTR_NOP,
		INSTR_NOP,
		INSTR_NOP,
		INSTR_NOP,
		INSTR_NOP
	};
	
	if(fpr < FP_FPSCR_ACCESS){
		if(read){
			instructionData1[0] = INSTR_STFD(fpr, 0, 3); //stfd fpr, 0(r3)
		}else{
			instructionData1[0] = INSTR_LFD(fpr, 0, 3); //lfd fpr, 0(r3)
		}
		
		error = TRKPPCAccessSpecialReg(srcDestPtr, instructionData1, read);
	}else if (fpr == FP_FPSCR_ACCESS) {
		if(read) ReadFPSCR();
		else WriteFPSCR();
		
		*(ui64*)srcDestPtr &= 0xFFFFFFFF;
	}else if (fpr == FP_FPECR_ACCESS) {
		if (!read) {
			*(ui32*)srcDestPtr = *(ui32*)((ui32)srcDestPtr + 4);
		}

		error = TRKPPCAccessSPR(srcDestPtr, SPR_FPECR, read);
		
		if(read){
			*(ui64*)srcDestPtr = (*(ui64*)srcDestPtr >> 32) & 0xFFFFFFFF;
		}
	}

	return error;
}


DSError TRKPPCAccessSpecialReg(void* srcDestPtr, ui32* instructionData, bool read){
	RegAccessFunc accessFunc;
	instructionData[9] = INSTR_BLR; //Set the last entry as blr
	TRK_flush_cache((ui32)instructionData, 0x28);
	//Call the instruction data array as code
	accessFunc = (RegAccessFunc)instructionData;
	accessFunc(srcDestPtr, TRKvalue128_temp);
	return kNoError;
}

#if TRK_TRANSPORT_INT_DRIVEN
void TRKTargetSetInputPendingPtr(void* ptr){
	gTRKState.inputPendingPtr = ptr;
}
#endif

//unused
void SetInputState(bool state){
	gTRKState.inputActivated = state;
}

//unused
ui8 TRKGetInTRKFlag(){
	return gTRKExceptionStatus.inTRK;
}

ui32 ConvertAddress(ui32 addr){
	return (addr | BOOTINFO);
}

#define ACTIVE_THREAD_QUEUE (BOOTINFO + ROOT_THREAD_ADDR)       // 8 bytes
#define CURRENT_THREAD      (BOOTINFO + CURRENT_THREAD_ADDR)    // 4 bytes

#define INVALID_THREAD(thread) ((ui32)thread == 0xFFFFFFFF || thread == NULL || (ui32)thread == 0x80000000)

static void GetThreadInfo(int* r3, int* r4){
	int i;
	OSThread* thread;
	
	*r3 = 1;
	*r4 = 0;

	if (INVALID_THREAD(OS_THREAD_QUEUE.head)) {
		return;
	}

	i = 0;
	thread = OS_THREAD_QUEUE.head;

	while (thread != NULL) {
		if(thread == OS_CURRENT_THREAD){
			*r4 = i;
		}

		i++;
		thread = (OSThread*)ConvertAddress((ui32)thread->nextActive);
		if (INVALID_THREAD(thread)) break;
	}

	*r3 = i;
}
