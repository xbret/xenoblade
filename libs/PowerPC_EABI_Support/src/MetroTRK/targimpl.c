#include "PowerPC_EABI_Support/MetroTRK/targimpl.h"
#include "PowerPC_EABI_Support/MetroTRK/mpc_7xx_603e.h"
#include "PowerPC_EABI_Support/MetroTRK/dolphin_trk_glue.h"
#include "PowerPC_EABI_Support/MetroTRK/msghndlr.h"
#include "PowerPC_EABI_Support/MetroTRK/support.h"

#include "PowerPC_EABI_Support/MetroTRK/Processor/ppc/Board/dolphin/memmap.h"
#include "revolution/OS.h"
#include "PowerPC_EABI_Support/MetroTRK/Processor/ppc/Generic/ppc_targimpl.h"
#include "PowerPC_EABI_Support/MetroTRK/Processor/ppc/Generic/flush_cache.h"

typedef struct StopInfo_PPC{
	ui32 PC;
	ui32 PCInstruction;
	ui16 exceptionID;
} StopInfo_PPC;

typedef struct TRKExceptionStatus{
	StopInfo_PPC exceptionInfo;
	ui8 inTRK;
	ui8 exceptionDetected;
}TRKExceptionStatus;

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

static TRKExceptionStatus gTRKExceptionStatus = {
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
#define INSTR_MFSPR(rDest, spr) (0x7C000000 | (rDest << 21) | ((spr & 0xFE0) << 6) | ((spr & 0x1F) << 16) | 0x2A6)
#define INSTR_MTSPR(spr, rSrc) (0x7C000000 | (rSrc << 21) | ((spr & 0xFE0) << 6) | ((spr & 0x1F) << 16) | 0x3A6)


asm ui32 __TRK_get_MSR(){
	nofralloc
	mfmsr r3
	blr
}

asm void __TRK_set_MSR(ui32 val){
	nofralloc
	mtmsr r3
	blr
}

//unused
asm void __TRK_get_PVR(){
	nofralloc
	mfpvr r3
	blr
}

//unused
asm void __TRK_get_IBAT0U(){
	nofralloc
	mfibatu r3, 0
	blr
}

//unused
asm void __TRK_get_IBAT0L(){
	nofralloc
	mfibatl r3, 0
	blr
}

//unused
asm void __TRK_get_IBAT1U(){
	nofralloc
	mfibatu r3, 1
	blr
}

//unused
asm void __TRK_get_IBAT1L(){
	nofralloc
	mfibatl r3, 1
	blr
}

//unused
asm void __TRK_get_IBAT2U(){
	nofralloc
	mfibatu r3, 2
	blr
}

//unused
asm void __TRK_get_IBAT2L(){
	nofralloc
	mfibatl r3, 2
	blr
}

//unused
asm void __TRK_get_IBAT3U(){
	nofralloc
	mfibatu r3, 3
	blr
}

//unused
asm void __TRK_get_IBAT3L(){
	nofralloc
	mfibatl r3, 3
	blr
}

//unused
asm void __TRK_get_DBAT0U(){
	nofralloc
	mfdbatu r3, 0
	blr
}

//unused
asm void __TRK_get_DBAT0L(){
	nofralloc
	mfdbatl r3, 0
	blr
}

//unused
asm void __TRK_get_DBAT1U(){
	nofralloc
	mfdbatu r3, 1
	blr
}

//unused
asm void __TRK_get_DBAT1L(){
	nofralloc
	mfdbatl r3, 1
	blr
}

//unused
asm void __TRK_get_DBAT2U(){
	nofralloc
	mfdbatu r3, 2
	blr
}

//unused
asm void __TRK_get_DBAT2L(){
	nofralloc
	mfdbatl r3, 2
	blr
}

//unused
asm void __TRK_get_DBAT3U(){
	nofralloc
	mfdbatu r3, 3
	blr
}

//unused
asm void __TRK_get_DBAT3L(){
	nofralloc
	mfdbatl r3, 3
	blr
}

static DSError TRKValidMemory32(const void* addr, size_t length, ValidMemoryOptions readWriteable){
	DSError result;
	memRange* map;
	ui32 r31;

	length += (ui32)addr;
	r31 = (length - 1);

	result = kInvalidMemory; //r6;
	
	if(r31 < (ui32)addr){
		return result;
	}

	map = (memRange*)gTRKMemMap;

	if((ui32)addr <= (ui32)map->end && r31 >= (ui32)map->start){
		if((readWriteable == kValidMemoryReadable && !gTRKMemMap[0].readable) || (readWriteable == kValidMemoryWriteable && !gTRKMemMap[0].writeable)){
			result = kInvalidMemory;
		}else{
			result = kNoError;

			if((ui32)addr < (ui32)gTRKMemMap[0].start){
				result = TRKValidMemory32(addr, (ui32)gTRKMemMap[0].start - (ui32)addr, readWriteable);
			}
				
			if(result == kNoError && r31 > (ui32)gTRKMemMap[0].end){
				result = TRKValidMemory32((void*)gTRKMemMap[0].end, r31 - (ui32)gTRKMemMap[0].end, readWriteable);
			}
		}
	}

	return result;
}

//copy pasted from mem_TRK.c, yuck

static ui8 ppc_readbyte1(const ui8* ptr){
	ui32* alignedPtr = (ui32 *)((ui32)ptr & ~3);
	return (ui8)(*alignedPtr >> ((3 - ((ui32)ptr - (ui32)alignedPtr)) << 3));
}

static void ppc_writebyte1(ui8* ptr, ui8 val){
	ui32* alignedPtr = (ui32 *)((ui32)ptr & ~3);
	ui32 v = *alignedPtr;
	ui32 uVar3 = 0xff << ((3 - ((ui32)ptr - (ui32)alignedPtr)) << 3);
	ui32 iVar1 = (3 - ((ui32)ptr - (ui32)alignedPtr)) << 3;
	*alignedPtr = (v & ~uVar3) | (uVar3 & (val << iVar1));
}

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

DSError TRKTargetAccessMemory(void *data,ui32 start,size_t *length, MemoryAccessOptions accessOptions,bool read){
	DSError error;
	ui32 uVar5;
	void *addr;
	ui32 param4;
	TRKExceptionStatus tempExceptionStatus = gTRKExceptionStatus;
	gTRKExceptionStatus.exceptionDetected = false;
	
	addr = (void*)TRKTargetTranslate(start);
	error = TRKValidMemory32(addr, *length, read == false);
	
	if (error != kNoError) {
		 *length = 0;
	}else{
		uVar5 = __TRK_get_MSR();
		param4 = uVar5 | gTRKCPUState.Extended1.MSR & 0x10;
		
		if (read) {
			TRK_ppc_memcpy(data, addr, *length, uVar5, param4);
		}else{
			TRK_ppc_memcpy(addr, data, *length, param4, uVar5);
			TRK_flush_cache((ui32)addr, *length);
			if ((void*)start != addr) {
				TRK_flush_cache(start, *length);
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
DSError TRKTargetReadInstruction(void* data, ui32 start){
	DSError error;
	size_t registersLength = 4;

	error = TRKTargetAccessMemory(data, start, &registersLength, kUserMemory, true);

	if(error == kNoError && registersLength != 4){
		error = kInvalidMemory;
	}

	return error;
}

DSError TRKTargetAccessDefault(ui32 firstRegister, ui32 lastRegister, MessageBuffer* b, size_t* registersLengthPtr, bool read){
	DSError error;
	ui32 count;
	ui32* data;
	TRKExceptionStatus tempExceptionStatus;
	
	if (lastRegister > 0x24) {
		return kInvalidRegister;
	}
	
	tempExceptionStatus = gTRKExceptionStatus;
	gTRKExceptionStatus.exceptionDetected = false;
	
	data = gTRKCPUState.Default.GPR + firstRegister;
	count = (lastRegister - firstRegister) + 1;
	*registersLengthPtr = count * 4;
		
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
	uint uVar6;
	ui64 temp;
	TRKExceptionStatus tempExceptionStatus;
	
	if (lastRegister > 0x21) {
		return kInvalidRegister;
	}

	tempExceptionStatus = gTRKExceptionStatus;
	gTRKExceptionStatus.exceptionDetected = false;
	
		uVar6 = __TRK_get_MSR();
		__TRK_set_MSR(uVar6 | 0x2000);
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
			*registersLengthPtr += 8;
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
	TRKExceptionStatus tempExceptionStatus;
	
	if (lastRegister > 0x60) {
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

DSError TRKTargetAccessExtended2(ui32 firstRegister, ui32 lastRegister, MessageBuffer *b, size_t *registersLengthPtr, bool read){
	DSError error;
	ui64 temp;
	ui32 temp2;
	TRKExceptionStatus tempExceptionStatus;
	
	if (lastRegister > 0x1f) {
		return kInvalidRegister;
	}

	tempExceptionStatus = gTRKExceptionStatus;
	gTRKExceptionStatus.exceptionDetected = false;

	
	TRKPPCAccessSPR(&temp2, 0x398, true);
	temp2 |= 0xA0000000;
	TRKPPCAccessSPR(&temp2, 0x398, false);
	temp2 = 0;
	TRKPPCAccessSPR(&temp2, 0x390, false);
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
		*registersLengthPtr += 8;
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
	versions->kernelMajor = 0;
	versions->kernelMinor = 4;
	versions->protocolMajor = 1;
	versions->protocolMinor = 10;
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

asm void TRK_InterruptHandler(){
	nofralloc
	mtsrr0 r2
	mtsrr1 r4
	mfsprg r4, 3
	mfcr r2
	mtsprg 3, r2
	lis r2, gTRKState@h
	ori r2, r2, gTRKState@l
	lwz r2, TRKState_PPC.MSR(r2)
	ori r2, r2, 0x8002
	xori r2, r2, 0x8002
	sync
	mtmsr r2
	sync
	lis r2, TRK_saved_exceptionID@h
	ori r2, r2, TRK_saved_exceptionID@l
	sth r3, 0(r2)
	cmpwi r3, 0x500
	bne L_802CF694
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
	lbz r2, TRKState_PPC.GPR[0](r2)
	cmpwi r2, 0
	beq L_802CF678
	lis r2, gTRKExceptionStatus@h
	ori r2, r2, gTRKExceptionStatus@l
	lbz r2, TRKExceptionStatus.inTRK(r2)
	cmpwi r2, 1
	beq L_802CF678
	lis r2, gTRKState@h
	ori r2, r2, gTRKState@l
	li r3, 1
	stb r3, TRKState_PPC.inputActivated(r2)
	b L_802CF694
L_802CF678:
	lis r2, gTRKSaveState@h
	ori r2, r2, gTRKSaveState@l
	lwz r3, Default_PPC.CR(r2)
	mtcrf 0xff, r3
	lwz r3, Default_PPC.GPR[3](r2)
	lwz r2, Default_PPC.GPR[2](r2)
	rfi 
L_802CF694:
	lis r2, TRK_saved_exceptionID@h
	ori r2, r2, TRK_saved_exceptionID@l
	lhz r3, 0(r2)
	lis r2, gTRKExceptionStatus@h
	ori r2, r2, gTRKExceptionStatus@l
	lbz r2, TRKExceptionStatus.inTRK(r2)
	cmpwi r2, 0
	bne TRKExceptionHandler
	lis r2, gTRKCPUState@h
	ori r2, r2, gTRKCPUState@l
	stw r0, ProcessorState_PPC.Default.GPR[0](r2)
	stw r1, ProcessorState_PPC.Default.GPR[1](r2)
	mfsprg r0, 1
	stw r0, ProcessorState_PPC.Default.GPR[2](r2)
	sth r3, ProcessorState_PPC.Extended1.exceptionID(r2)
	sth r3, (ProcessorState_PPC.Extended1.exceptionID + 2)(r2)
	mfsprg r0, 2
	stw r0, ProcessorState_PPC.Default.GPR[3](r2)
	stmw r4, ProcessorState_PPC.Default.GPR[4](r2)
	mfsrr0 r27
	mflr r28
	mfsprg r29, 3
	mfctr r30
	mfxer r31
	stmw r27, ProcessorState_PPC.Default.PC(r2)
	bl TRKSaveExtended1Block
	lis r2, gTRKExceptionStatus@h
	ori r2, r2, gTRKExceptionStatus@l
	li r3, 1
	stb r3, TRKExceptionStatus.inTRK(r2)
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
	mtdsisr r0
	lwz r0, TRKState_PPC.DAR(r2)
	mtdar r0
	lmw r3, TRKState_PPC.GPR[3](r2)
	lwz r0, TRKState_PPC.GPR[0](r2)
	lwz r1, TRKState_PPC.GPR[1](r2)
	lwz r2, TRKState_PPC.GPR[2](r2)
	b TRKPostInterruptEvent
}


static asm void TRKExceptionHandler(ui16 r3){ 
	lis r2, gTRKExceptionStatus@h
	ori r2, r2, gTRKExceptionStatus@l
	sth r3, TRKExceptionStatus.exceptionInfo.exceptionID(r2)
	mfsrr0 r3
	stw r3, TRKExceptionStatus.exceptionInfo.PC(r2)
	lhz r3, TRKExceptionStatus.exceptionInfo.exceptionID(r2)
	cmpwi r3, 0x200
	beq LAB_00010ba4
	cmpwi r3, 0x300
	beq LAB_00010ba4
	cmpwi r3, 0x400
	beq LAB_00010ba4
	cmpwi r3, 0x600
	beq LAB_00010ba4
	cmpwi r3, 0x700
	beq LAB_00010ba4
	cmpwi r3, 0x800
	beq LAB_00010ba4
	cmpwi r3, 0x1000
	beq LAB_00010ba4
	cmpwi r3, 0x1100
	beq LAB_00010ba4
	cmpwi r3, 0x1200
	beq LAB_00010ba4
	cmpwi r3, 0x1300
	beq LAB_00010ba4
	b LAB_00010bb0
LAB_00010ba4:
	mfsrr0 r3
	addi r3, r3, 0x4
	mtsrr0 r3
LAB_00010bb0:
	lis r2, gTRKExceptionStatus@h
	ori r2, r2, gTRKExceptionStatus@l
	li r3, 0x1
	stb r3, TRKExceptionStatus.exceptionDetected(r2)
	mfsprg r3, 3
	mtcrf 0xff, r3
	mfsprg r2, 1
	mfsprg r3, 2
	rfi
}


void TRKPostInterruptEvent(void){
	ui32 eventType;
	int local_14;
	size_t registerSize;
	NubEvent event;
	
	if (gTRKState.inputActivated) {
		gTRKState.inputActivated = false;
	}else{
		if ((int)(gTRKCPUState.Extended1.exceptionID & 0xFFFF) == 0x700 || (int)(gTRKCPUState.Extended1.exceptionID & 0xFFFF) == 0xd00) {
			registerSize = 4;
			TRKTargetAccessMemory(&local_14,gTRKCPUState.Default.PC,&registerSize,0,1);
			if (local_14 == 0xfe00000) {
				eventType = 5;
			}
			else {
				eventType = 3;
			}
		}
		else {
			eventType = 4;
		}
		TRKConstructEvent(&event,eventType);
		TRKPostEvent(&event);
	}
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
	mfdsisr r0
	stw r0, TRKState_PPC.DSISR(r3)
	mfdar r0
	stw r0, TRKState_PPC.DAR(r3)
	li r1, -32766
	nor r1, r1, r1
	mfmsr r3
	and r3, r3, r1
	mtmsr r3
	lis r2, gTRKState@h
	ori r2, r2, gTRKState@l
	lwz r2, TRKState_PPC.inputPendingPtr(r2)
	lbz r2, TRKState_PPC.GPR[0](r2)
	cmpwi r2, 0
	beq L_802CF930
	lis r2, gTRKState@h
	ori r2, r2, gTRKState@l
	li r3, 1
	stb r3, TRKState_PPC.inputActivated(r2)
	b TRKInterruptHandlerEnableInterrupts
L_802CF930:
	lis r2, gTRKExceptionStatus@h
	ori r2, r2, gTRKExceptionStatus@l
	li r3, 0
	stb r3, 0xc(r2)
	bl TRKRestoreExtended1Block
	lis r2, gTRKCPUState@h
	ori r2, r2, gTRKCPUState@l
	lmw r27, ProcessorState_PPC.Default.PC(r2)
	mtsrr0 r27
	mtlr r28
	mtcrf 0xff, r29
	mtctr r30
	mtxer r31
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
	mtdsisr r0
	lwz r0, TRKState_PPC.DAR(r2)
	mtdar r0
	lmw r3, TRKState_PPC.GPR[3](r2)
	lwz r0, TRKState_PPC.GPR[0](r2)
	lwz r1, TRKState_PPC.GPR[1](r2)
	lwz r2, TRKState_PPC.GPR[2](r2)
	b TRKPostInterruptEvent
}

DSError TRKTargetInterrupt(NubEvent* event){
	DSError error = kNoError;

	if (event->fType - 3 >= 0 && event->fType - 3 < 2 && TRKTargetCheckStep() == false) {
		TRKTargetSetStopped(true);
		error = TRKDoNotifyStopped(kDSNotifyStopped);
	}

	return error;
}

DSError TRKTargetAddStopInfo(MessageBuffer* b){
	DSError error;

	ui32 puVar2;
	ui32* puVar1;
	ui32 local_458;
	int local_45c;
	int auStack_460;
	size_t local_464;
	size_t local_468;
	CommandReply reply;
	ui8 buf[1024];
	
	TRK_memset(&reply,0,0x40);
	reply.unk0 = 0x4e8;
	reply.commandId = 0x90;
	reply.replyErrorInt = gTRKCPUState.Default.PC;
	GetThreadInfo(&local_45c,&auStack_460);
	*(ui32*)&reply.unk10[4] = local_45c;
	puVar1 = ConvertAddress(0xe4);
	*(ui32*)&reply.unk10[8] = *puVar1;
	local_468 = 4;
	TRKTargetAccessMemory(&local_458, gTRKCPUState.Default.PC, &local_468, 0, 1);
	reply.unkC = local_458;
	*(ui32*)reply.unk10 = gTRKCPUState.Extended1.exceptionID & 0xFFFF;

	error = TRKAppendBuffer_ui8(b, (ui8*)&reply, 0x40);

	if (error == kNoError) {
		for(int i = 0; i < 0x20; i++) {
			TRKAppendBuffer1_ui32(b, gTRKCPUState.Default.GPR[i]);
		}

		TRKAppendBuffer1_ui32(b,gTRKCPUState.Default.PC);
		TRKAppendBuffer1_ui32(b,gTRKCPUState.Default.LR);
		TRKAppendBuffer1_ui32(b,gTRKCPUState.Default.CR);
		TRKAppendBuffer1_ui32(b,gTRKCPUState.Default.CTR);
		error = TRKAppendBuffer1_ui32(b,gTRKCPUState.Default.XER);
	}

	if (error == kNoError) {
		puVar2 = *ConvertAddress(0xd4);
		TRKAppendBuffer1_ui32(b,puVar2);
		puVar2 = *ConvertAddress(0xd8);
		TRKAppendBuffer1_ui32(b,puVar2);
		puVar2 = *ConvertAddress(0xdc);
		TRKAppendBuffer1_ui32(b,puVar2);
		puVar2 = *ConvertAddress(0xe0);
		TRKAppendBuffer1_ui32(b,puVar2);
		puVar2 = *ConvertAddress(0xe4);
		error = TRKAppendBuffer1_ui32(b,puVar2);
	}

	if (error == kNoError) {
		local_464 = 0x400;
		error = TRKTargetAccessMemory(buf,gTRKCPUState.Default.PC & 0xfffffc00,&local_464,0,1);
		TRK_AppendBuffer(b,buf,0x400);
	}

	return error;
}

void TRKTargetAddExceptionInfo(MessageBuffer* b){
	ui32 local_54;
	size_t local_58;
	CommandReply reply;
	
	TRK_memset(&reply,0,0x40);
	reply.unk0 = 0x40;
	reply.commandId = 0x91;
	reply.replyErrorInt = gTRKExceptionStatus.exceptionInfo.PC;
	local_58 = 4;
	TRKTargetAccessMemory(&local_54,gTRKExceptionStatus.exceptionInfo.PC,&local_58,0,1);
	*(ui32*)&reply.unkC = local_54;
	*(ui32*)reply.unk10 = gTRKExceptionStatus.exceptionInfo.exceptionID;
	TRKAppendBuffer_ui8(b,(ui8 *)&reply,0x40);
}

DSError TRKTargetEnableTrace(bool val){
	if(val){
		gTRKCPUState.Extended1.MSR = (gTRKCPUState.Extended1.MSR | 0x400) & ~0x8000;
	}else{
		gTRKCPUState.Extended1.MSR = (gTRKCPUState.Extended1.MSR & ~0x400) | 0x8000;
	}
	return kNoError;
}

bool TRKTargetStepDone(){
	bool result = true;

	if (gTRKStepStatus.active && ((ui16)gTRKCPUState.Extended1.exceptionID) == PPC_Trace) {
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
DSError TRKTargetFlushCache(ui32 r3, ui32 r4, ui32 r5){
	DSError error;

	if(r4 < r5){
		TRK_flush_cache(r4, r5 - r4);
		error = kNoError;
	}else{
		error = kInvalidMemory;
	}
	return error;
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
	ui32 instructionData[] = {
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
	ui32 instructionData[] = {
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
	ui32 instructionData1[] = {
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
	
	if (fpr < 0x20) {
		
		if (read) {
			instructionData1[0] = 0xd8030000 | (fpr << 21); //stfd fpr, 0(r3)
		}else{
			instructionData1[0] = 0xc8030000 | (fpr << 21); //lfd fpr, 0(r3)
		}
		
		error = TRKPPCAccessSpecialReg(srcDestPtr, instructionData1, read);
	}else if (fpr == 0x20) {
		if(read) ReadFPSCR();
		else WriteFPSCR();
		
		*(ui64*)srcDestPtr &= 0xFFFFFFFF;
	}else if (fpr == 0x21) {
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

void TRKTargetSetInputPendingPtr(void* ptr){
	gTRKState.inputPendingPtr = ptr;
}

//unused
void SetInputState(bool state){
	gTRKState.inputActivated = state;
}

//unused
ui8 TRKGetInTRKFlag(){
	return gTRKExceptionStatus.inTRK;
}

ui32* ConvertAddress(ui32 addr){
	return (ui32*)(addr | 0x80000000);
}

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
