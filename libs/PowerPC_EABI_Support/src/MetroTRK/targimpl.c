#include "PowerPC_EABI_Support/MetroTRK/targimpl.h"
#include "PowerPC_EABI_Support/MetroTRK/mpc_7xx_603e.h"
#include "PowerPC_EABI_Support/MetroTRK/dolphin_trk_glue.h"
#include "PowerPC_EABI_Support/MetroTRK/msghndlr.h"
#include "PowerPC_EABI_Support/MetroTRK/support.h"

#include "PowerPC_EABI_Support/MetroTRK/Processor/ppc/Board/dolphin/memmap.h"
#include "revolution/OS.h"
#include "PowerPC_EABI_Support/MetroTRK/Processor/ppc/Generic/ppc_targimpl.h"
#include "PowerPC_EABI_Support/MetroTRK/Processor/ppc/Generic/flush_cache.h"


typedef struct TRKExceptionStatus{
	u32 unk0;
	u32 unk4;
	u32 unk8;
	u8 inTRK;
	u8 unkD;
}TRKExceptionStatus;

typedef struct TRKStepStatus {
	BOOL stepping; //0x0
	DSMessageStepOptions stepType; //0x4
	u32 stepCount; //0x8
	u32 stepRangeStart; //0xC
	u32 stepRangeEnd; //0x10
	u32 unk14;
} TRKStepStatus;

TRKCPUState gTRKCPUState;

TRKRestoreFlags gTRKRestoreFlags = {
	FALSE,
	FALSE
};

TRKState gTRKState;

static TRKExceptionStatus gTRKExceptionStatus = {
	0,
	0,
	0,
	TRUE,
	0
};

static TRKStepStatus gTRKStepStatus = {
	FALSE,
	kDSStepIntoCount,
	0,
	0,
	0
};

ui128 TRKvalue128_temp;
static u16 TRK_saved_exceptionID = 0;
DefaultState gTRKSaveState;

typedef void (*RegAccessFunc)(void* srcDestPtr, ui128 val);

static void TRKExceptionHandler(u16);
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


asm u32 __TRK_get_MSR(){
	nofralloc
	mfmsr r3
	blr
}

asm void __TRK_set_MSR(u32 val){
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
	TRKMemMap* map;
	u32 r31;

	length += (u32)addr;
	r31 = (length - 1);

	result = kInvalidMemory; //r6;
	
	if(r31 < (u32)addr){
		return result;
	}

	map = (TRKMemMap*)&gTRKMemMap;

	if((u32)addr <= map->unk4 && r31 >= map->unk0){
		if((readWriteable == kValidMemoryReadable && gTRKMemMap.unk8 == 0) || (readWriteable == kValidMemoryWriteable && gTRKMemMap.unkC == 0)){
			result = kInvalidMemory;
		}else{
			result = kNoError;

			if((u32)addr < gTRKMemMap.unk0){
				result = TRKValidMemory32(addr, gTRKMemMap.unk0 - (u32)addr, readWriteable);
			}
				
			if(result == kNoError && r31 > gTRKMemMap.unk4){
				result = TRKValidMemory32((void*)gTRKMemMap.unk4, r31 - gTRKMemMap.unk4, readWriteable);
			}
		}
	}

	return result;
}

//copy pasted from mem_TRK.c, yuck

static u8 ppc_readbyte1(const u8* ptr){
	u32* alignedPtr = (u32 *)((u32)ptr & ~3);
	return (u8)(*alignedPtr >> ((3 - ((u32)ptr - (u32)alignedPtr)) << 3));
}

static void ppc_writebyte1(u8* ptr, u8 val){
	u32* alignedPtr = (u32 *)((u32)ptr & ~3);
	u32 v = *alignedPtr;
	u32 uVar3 = 0xff << ((3 - ((u32)ptr - (u32)alignedPtr)) << 3);
	u32 iVar1 = (3 - ((u32)ptr - (u32)alignedPtr)) << 3;
	*alignedPtr = (v & ~uVar3) | (uVar3 & (val << iVar1));
}

static void TRK_ppc_memcpy(void* dest, const void* src, int n, u32 param_4, u32 param_5){
	u32 msr;
	u8* srcTemp = (u8*)src;
	u8* destTemp = (u8*)dest;

	msr = __TRK_get_MSR(); //save the original MSR value

	while(n != 0) {
		u8 val;
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

DSError TRKTargetAccessMemory(void *data,u32 start,size_t *length, MemoryAccessOptions accessOptions,BOOL read){
	DSError error;
	u32 uVar5;
	void *addr;
	u32 param4;
	TRKExceptionStatus tempExceptionStatus = gTRKExceptionStatus;
	gTRKExceptionStatus.unkD = 0;
	
	addr = (void*)TRKTargetTranslate(start);
	error = TRKValidMemory32(addr, *length, read == FALSE);
	
	if (error != kNoError) {
		 *length = 0;
	}else{
		uVar5 = __TRK_get_MSR();
		param4 = uVar5 | gTRKCPUState.unk1F8 & 0x10;
		
		if (read) {
			TRK_ppc_memcpy(data, addr, *length, uVar5, param4);
		}else{
			TRK_ppc_memcpy(addr, data, *length, param4, uVar5);
			TRK_flush_cache((u32)addr, *length);
			if ((void*)start != addr) {
				TRK_flush_cache(start, *length);
			}
		}
	}
	
	if (gTRKExceptionStatus.unkD != 0) {
		*length = 0;
		error = kCWDSException;
	}

	 gTRKExceptionStatus = tempExceptionStatus;
	return error;
}

//unused
DSError TRKTargetReadInstruction(void* data, u32 start){
	DSError error;
	size_t registersLength = 4;

	error = TRKTargetAccessMemory(data, start, &registersLength, kUserMemory, TRUE);

	if(error == kNoError && registersLength != 4){
		error = kInvalidMemory;
	}

	return error;
}

DSError TRKTargetAccessDefault(u32 firstRegister, u32 lastRegister, MessageBuffer* b, size_t* registersLengthPtr, BOOL read){
	DSError error;
	u32 count;
	u32* data;
	TRKExceptionStatus tempExceptionStatus;
	
	if (lastRegister > 0x24) {
		return kInvalidRegister;
	}
	
	tempExceptionStatus = gTRKExceptionStatus;
	gTRKExceptionStatus.unkD = 0;
	
	data = gTRKCPUState.defaultState.gprs + firstRegister;
	count = (lastRegister - firstRegister) + 1;
	*registersLengthPtr = count * 4;
		
	if(read){
		error = TRKAppendBuffer_ui32(b, data, count);
	}else{
		error = TRKReadBuffer_ui32(b, data, count);
	}
		
	if(gTRKExceptionStatus.unkD){
		*registersLengthPtr = 0;
		error = kCWDSException;
	}
		
	gTRKExceptionStatus = tempExceptionStatus;
	return error;
}


DSError TRKTargetAccessFP(u32 firstRegister,u32 lastRegister,MessageBuffer *b,size_t *registersLengthPtr,BOOL read){
	DSError error;
	uint uVar6;
	u64 temp;
	TRKExceptionStatus tempExceptionStatus;
	
	if (lastRegister > 0x21) {
		return kInvalidRegister;
	}

	tempExceptionStatus = gTRKExceptionStatus;
	gTRKExceptionStatus.unkD = 0;
	
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

		if (gTRKExceptionStatus.unkD != 0) {
			*registersLengthPtr = 0;
			error = kCWDSException;
		}
	

	gTRKExceptionStatus = tempExceptionStatus;
	return error;
}


DSError TRKTargetAccessExtended1(u32 firstRegister,u32 lastRegister,MessageBuffer *b,size_t *registersLengthPtr,BOOL read){
	DSError error;
	u32 *data;
	int count;
	TRKExceptionStatus tempExceptionStatus;
	
	if (lastRegister > 0x60) {
		return kInvalidRegister;
	}

	tempExceptionStatus = gTRKExceptionStatus;
	gTRKExceptionStatus.unkD = 0;

		*registersLengthPtr = 0;
	
		if (firstRegister <= lastRegister) {
			data = gTRKCPUState.srs + firstRegister;
			count = lastRegister - firstRegister + 1;
			*registersLengthPtr = count * 4;
			
			if(read){
				error = TRKAppendBuffer_ui32(b,data,count);
			}else{
				if (data <= &gTRKCPUState.tbu && (data + count - 1) >= &gTRKCPUState.tbl) {
					gTRKRestoreFlags.tbr = 1;
				}
				
				//probably fake
				if (data <= &gTRKCPUState.dec && (data + count - 1) >= &gTRKCPUState.dec) {
					gTRKRestoreFlags.dec = 1;
				}
				error = TRKReadBuffer_ui32(b,data,count);
			}
		}
		if (gTRKExceptionStatus.unkD != 0) {
			*registersLengthPtr = 0;
			error = kCWDSException;
		}
	

	gTRKExceptionStatus = tempExceptionStatus;
	return error;
}

DSError TRKTargetAccessExtended2(u32 firstRegister, u32 lastRegister, MessageBuffer *b, size_t *registersLengthPtr, BOOL read){
	DSError error;
	u64 temp;
	u32 temp2;
	TRKExceptionStatus tempExceptionStatus;
	
	if (lastRegister > 0x1f) {
		return kInvalidRegister;
	}

	tempExceptionStatus = gTRKExceptionStatus;
	gTRKExceptionStatus.unkD = 0;

	
	TRKPPCAccessSPR(&temp2, 0x398, TRUE);
	temp2 |= 0xA0000000;
	TRKPPCAccessSPR(&temp2, 0x398, FALSE);
	temp2 = 0;
	TRKPPCAccessSPR(&temp2, 0x390, FALSE);
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
	
	if (gTRKExceptionStatus.unkD != 0) {
		*registersLengthPtr = 0;
		error = kCWDSException;
	}
	
	gTRKExceptionStatus = tempExceptionStatus;

	return error;
}

//unused
DSError TRKTargetVersions(u8* r3){
	r3[0] = 0;
	r3[1] = 4;
	r3[2] = 1;
	r3[3] = 10;
	return kNoError;
}

//unused
DSError TRKTargetCheckException(){
	DSError error = kNoError;

	if (gTRKExceptionStatus.unkD != 0) {
		gTRKExceptionStatus.unkD = 0;
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
	lwz r2, 0x8c(r2)
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
	stw r3, 0x42c(r2)
	bl TRKUARTInterruptHandler
	lis r2, gTRKCPUState@h
	ori r2, r2, gTRKCPUState@l
	lwz r3, 0x42c(r2)
	mtlr r3
	lis r2, gTRKState@h
	ori r2, r2, gTRKState@l
	lwz r2, 0xa0(r2)
	lbz r2, 0(r2)
	cmpwi r2, 0
	beq L_802CF678
	lis r2, gTRKExceptionStatus@h
	ori r2, r2, gTRKExceptionStatus@l
	lbz r2, 0xc(r2)
	cmpwi r2, 1
	beq L_802CF678
	lis r2, gTRKState@h
	ori r2, r2, gTRKState@l
	li r3, 1
	stb r3, 0x9c(r2)
	b L_802CF694
L_802CF678:
	lis r2, gTRKSaveState@h
	ori r2, r2, gTRKSaveState@l
	lwz r3, 0x88(r2)
	mtcrf 0xff, r3
	lwz r3, 0xc(r2)
	lwz r2, 8(r2)
	rfi 
L_802CF694:
	lis r2, TRK_saved_exceptionID@h
	ori r2, r2, TRK_saved_exceptionID@l
	lhz r3, 0(r2)
	lis r2, gTRKExceptionStatus@h
	ori r2, r2, gTRKExceptionStatus@l
	lbz r2, 0xc(r2)
	cmpwi r2, 0
	bne TRKExceptionHandler
	lis r2, gTRKCPUState@h
	ori r2, r2, gTRKCPUState@l
	stw r0, 0(r2)
	stw r1, 4(r2)
	mfsprg r0, 1
	stw r0, 8(r2)
	sth r3, 0x2f8(r2)
	sth r3, 0x2fa(r2)
	mfsprg r0, 2
	stw r0, 0xc(r2)
	stmw r4, 0x10(r2)
	mfsrr0 r27
	mflr r28
	mfsprg r29, 3
	mfctr r30
	mfxer r31
	stmw r27, 0x80(r2)
	bl TRKSaveExtended1Block
	lis r2, gTRKExceptionStatus@h
	ori r2, r2, gTRKExceptionStatus@l
	li r3, 1
	stb r3, 0xc(r2)
	lis r2, gTRKState@h
	ori r2, r2, gTRKState@l
	lwz r0, 0x8c(r2)
	sync
	mtmsr r0
	sync
	lwz r0, 0x80(r2)
	mtlr r0
	lwz r0, 0x84(r2)
	mtctr r0
	lwz r0, 0x88(r2)
	mtxer r0
	lwz r0, 0x94(r2)
	mtdsisr r0
	lwz r0, 0x90(r2)
	mtdar r0
	lmw r3, 0xc(r2)
	lwz r0, 0(r2)
	lwz r1, 4(r2)
	lwz r2, 8(r2)
	b TRKPostInterruptEvent
}


static asm void TRKExceptionHandler(u16 r3){ 
	lis r2, gTRKExceptionStatus@h
	ori r2, r2, gTRKExceptionStatus@l
	sth r3, 0x8(r2)
	mfsrr0 r3
	stw r3, 0x0(r2)
	lhz r3, 0x8(r2)
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
	stb r3, 0xd(r2)
	mfsprg r3, 3
	mtcrf 0xff, r3
	mfsprg r2, 1
	mfsprg r3, 2
	rfi
}


void TRKPostInterruptEvent(void){
	u32 eventType;
	int local_14;
	size_t registerSize;
	NubEvent event;
	
	if (gTRKState.unk9C != 0) {
		gTRKState.unk9C = 0;
	}else{
		if ((int)(gTRKCPUState.unk2F8 & 0xFFFF) == 0x700 || (int)(gTRKCPUState.unk2F8 & 0xFFFF) == 0xd00) {
			registerSize = 4;
			TRKTargetAccessMemory(&local_14,gTRKCPUState.defaultState.pc,&registerSize,0,1);
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
	stmw r0, 0(r3)
	mfmsr r0
	stw r0, 0x8c(r3)
	mflr r0
	stw r0, 0x80(r3)
	mfctr r0
	stw r0, 0x84(r3)
	mfxer r0
	stw r0, 0x88(r3)
	mfdsisr r0
	stw r0, 0x94(r3)
	mfdar r0
	stw r0, 0x90(r3)
	li r1, -32766
	nor r1, r1, r1
	mfmsr r3
	and r3, r3, r1
	mtmsr r3
	lis r2, gTRKState@h
	ori r2, r2, gTRKState@l
	lwz r2, 0xa0(r2)
	lbz r2, 0(r2)
	cmpwi r2, 0
	beq L_802CF930
	lis r2, gTRKState@h
	ori r2, r2, gTRKState@l
	li r3, 1
	stb r3, 0x9c(r2)
	b TRKInterruptHandlerEnableInterrupts
L_802CF930:
	lis r2, gTRKExceptionStatus@h
	ori r2, r2, gTRKExceptionStatus@l
	li r3, 0
	stb r3, 0xc(r2)
	bl TRKRestoreExtended1Block
	lis r2, gTRKCPUState@h
	ori r2, r2, gTRKCPUState@l
	lmw r27, 0x80(r2)
	mtsrr0 r27
	mtlr r28
	mtcrf 0xff, r29
	mtctr r30
	mtxer r31
	lmw r3, 0xc(r2)
	lwz r0, 0(r2)
	lwz r1, 4(r2)
	lwz r2, 8(r2)
	rfi
}

asm void TRKInterruptHandlerEnableInterrupts(){
	nofralloc
	lis r2, gTRKState@h
	ori r2, r2, gTRKState@l
	lwz r0, 0x8c(r2)
	sync
	mtmsr r0
	sync
	lwz r0, 0x80(r2)
	mtlr r0
	lwz r0, 0x84(r2)
	mtctr r0
	lwz r0, 0x88(r2)
	mtxer r0
	lwz r0, 0x94(r2)
	mtdsisr r0
	lwz r0, 0x90(r2)
	mtdar r0
	lmw r3, 0xc(r2)
	lwz r0, 0(r2)
	lwz r1, 4(r2)
	lwz r2, 8(r2)
	b TRKPostInterruptEvent
}

DSError TRKTargetInterrupt(NubEvent* event){
	DSError error = kNoError;

	if (event->fType - 3 >= 0 && event->fType - 3 < 2 && TRKTargetCheckStep() == FALSE) {
		TRKTargetSetStopped(TRUE);
		error = TRKDoNotifyStopped(kDSNotifyStopped);
	}

	return error;
}

DSError TRKTargetAddStopInfo(MessageBuffer* b){
	DSError error;

	u32 puVar2;
	u32* puVar1;
	u32 local_458;
	int local_45c;
	int auStack_460;
	size_t local_464;
	size_t local_468;
	CommandReply reply;
	u8 buf[1024];
	
	TRK_memset(&reply,0,0x40);
	reply.unk0 = 0x4e8;
	reply.commandId = 0x90;
	reply.replyErrorInt = gTRKCPUState.defaultState.pc;
	GetThreadInfo(&local_45c,&auStack_460);
	*(u32*)&reply.unk10[4] = local_45c;
	puVar1 = ConvertAddress(0xe4);
	*(u32*)&reply.unk10[8] = *puVar1;
	local_468 = 4;
	TRKTargetAccessMemory(&local_458, gTRKCPUState.defaultState.pc, &local_468, 0, 1);
	reply.unkC = local_458;
	*(u32*)reply.unk10 = gTRKCPUState.unk2F8 & 0xFFFF;

	error = TRKAppendBuffer_ui8(b, (u8*)&reply, 0x40);

	if (error == kNoError) {
		for(int i = 0; i < 0x20; i++) {
			TRKAppendBuffer1_ui32(b, gTRKCPUState.defaultState.gprs[i]);
		}

		TRKAppendBuffer1_ui32(b,gTRKCPUState.defaultState.pc);
		TRKAppendBuffer1_ui32(b,gTRKCPUState.defaultState.lr);
		TRKAppendBuffer1_ui32(b,gTRKCPUState.defaultState.cr);
		TRKAppendBuffer1_ui32(b,gTRKCPUState.defaultState.ctr);
		error = TRKAppendBuffer1_ui32(b,gTRKCPUState.defaultState.xer);
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
		error = TRKTargetAccessMemory(buf,gTRKCPUState.defaultState.pc & 0xfffffc00,&local_464,0,1);
		TRK_AppendBuffer(b,buf,0x400);
	}

	return error;
}

void TRKTargetAddExceptionInfo(MessageBuffer* b){
	u32 local_54;
	size_t local_58;
	CommandReply reply;
	
	TRK_memset(&reply,0,0x40);
	reply.unk0 = 0x40;
	reply.commandId = 0x91;
	reply.replyErrorInt = gTRKExceptionStatus.unk0;
	local_58 = 4;
	TRKTargetAccessMemory(&local_54,gTRKExceptionStatus.unk0,&local_58,0,1);
	*(u32*)&reply.unkC = local_54;
	*(u32*)reply.unk10 = *(u16*)&gTRKExceptionStatus.unk8;
	TRKAppendBuffer_ui8(b,(u8 *)&reply,0x40);
}

DSError TRKTargetEnableTrace(BOOL val){
	if(val){
		gTRKCPUState.unk1F8 = (gTRKCPUState.unk1F8 | 0x400) & ~0x8000;
	}else{
		gTRKCPUState.unk1F8 = (gTRKCPUState.unk1F8 & ~0x400) | 0x8000;
	}
	return kNoError;
}

BOOL TRKTargetStepDone(){
	BOOL result = TRUE;

	if (gTRKStepStatus.stepping && ((u16)gTRKCPUState.unk2F8) == PPC_Trace) {
		switch(gTRKStepStatus.stepType){
			case kDSStepIntoCount:
			if (gTRKStepStatus.stepCount > 0) {
				result = FALSE;
			}
			break;
			case kDSStepIntoRange:
			if (gTRKCPUState.defaultState.pc >= gTRKStepStatus.stepRangeStart && gTRKCPUState.defaultState.pc <= gTRKStepStatus.stepRangeEnd) {
				result = FALSE;
			}
			break;
			default:
			break;
		}
	}

	return result;
}

DSError TRKTargetDoStep(){
	gTRKStepStatus.stepping = TRUE;
	TRKTargetEnableTrace(TRUE);
	
	if (gTRKStepStatus.stepType == kDSStepIntoCount || gTRKStepStatus.stepType == kDSStepOverCount) {
		gTRKStepStatus.stepCount--;
	}

	TRKTargetSetStopped(FALSE);
	return kNoError;
}

static BOOL TRKTargetCheckStep(){
	if(gTRKStepStatus.stepping){
		TRKTargetEnableTrace(FALSE);

		if(TRKTargetStepDone()){
			gTRKStepStatus.stepping = FALSE;
		}else {
			TRKTargetDoStep();
		}
	}

	return gTRKStepStatus.stepping;
}

DSError TRKTargetSingleStep(u8 count, BOOL stepOver){
	DSError error = kNoError;

	if (stepOver) {
		error = kUnsupportedError;
	}else{
		gTRKStepStatus.stepType = kDSStepIntoCount;
		gTRKStepStatus.stepCount = count;
	
		error = TRKTargetDoStep();
	}

	return error;
}

DSError TRKTargetStepOutOfRange(u32 rangeStart, u32 rangeEnd, BOOL stepOver){
	DSError error = kNoError;
	
	if(stepOver){
		//Stepping over isn't supported for PowerPC
		error = kUnsupportedError;
	}else{
		gTRKStepStatus.stepType = kDSStepIntoRange;
		gTRKStepStatus.stepRangeStart = rangeStart;
		gTRKStepStatus.stepRangeEnd = rangeEnd;

		error = TRKTargetDoStep();
	}

	return error;
}

u32 TRKTargetGetPC(){
	return gTRKCPUState.defaultState.pc;
}

DSError TRKTargetSupportRequest(){
	DSError error = kNoError;
	size_t* length;
	MessageCommandID commandId;
	DSIOResult ioResult;
	u32 local_28;
	NubEvent event;

	commandId = gTRKCPUState.defaultState.gprs[3];

	switch(commandId) {
		default:
		TRKConstructEvent(&event,4);
		TRKPostEvent(&event);
		return error;
		break;
		case kDSOpenFile:
		error = HandleOpenFileSupportRequest((char*)gTRKCPUState.defaultState.gprs[4],
		(u8)gTRKCPUState.defaultState.gprs[5],
		(u32*)gTRKCPUState.defaultState.gprs[6],&ioResult);

		if (ioResult == kDSIONoError && error != kNoError) {
			ioResult = kDSIOError;
		}

		gTRKCPUState.defaultState.gprs[3] = ioResult;
		break;
		case kDSCloseFile:
		error = HandleCloseFileSupportRequest(gTRKCPUState.defaultState.gprs[4],&ioResult);
		
		if (ioResult == kDSIONoError && error != kNoError) {
			ioResult = kDSIOError;
		}
		
		gTRKCPUState.defaultState.gprs[3] = ioResult;
		break;
		case kDSPositionFile:
		local_28 = *(u32*)gTRKCPUState.defaultState.gprs[5];
		error = HandlePositionFileSupportRequest(gTRKCPUState.defaultState.gprs[4],&local_28,
		(u8)gTRKCPUState.defaultState.gprs[6],&ioResult);

		if (ioResult == kDSIONoError && error != kNoError) {
			ioResult = kDSIOError;
		}

		gTRKCPUState.defaultState.gprs[3] = ioResult;
		*(u32*)gTRKCPUState.defaultState.gprs[5] = local_28;
		break;
		case kDSWriteFile:
		case kDSReadFile:
		length = (size_t*)gTRKCPUState.defaultState.gprs[5];
		error = TRK_SuppAccessFile(gTRKCPUState.defaultState.gprs[4],
		(u8*)gTRKCPUState.defaultState.gprs[6], length,
		&ioResult, TRUE, commandId == kDSReadFile);

		if (ioResult == kDSIONoError && error != kNoError) {
			ioResult = kDSIOError;
		}

		gTRKCPUState.defaultState.gprs[3] = ioResult;

		if (commandId == kDSReadFile) {
			TRK_flush_cache(gTRKCPUState.defaultState.gprs[6],*length);
		}
		break;
	}

	gTRKCPUState.defaultState.pc += 4;
	return error;
}

//unused
DSError TRKTargetFlushCache(u32 r3, u32 r4, u32 r5){
	DSError error;

	if(r4 < r5){
		TRK_flush_cache(r4, r5 - r4);
		error = kNoError;
	}else{
		error = kInvalidMemory;
	}
	return error;
}

BOOL TRKTargetStopped(){
	return gTRKState.stopped;
}

void TRKTargetSetStopped(BOOL val){
	gTRKState.stopped = val;
}

DSError TRKTargetStop(){
	TRKTargetSetStopped(TRUE);
	return kNoError;
}

DSError TRKPPCAccessSPR(void* srcDestPtr, u32 spr, BOOL read){
	//all nop by default
	u32 instructionData[] = {
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

DSError TRKPPCAccessPairedSingleRegister(void* srcDestPtr, u32 psr, BOOL read){
	//all nop by default
	u32 instructionData[] = {
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


DSError TRKPPCAccessFPRegister(void* srcDestPtr, u32 fpr, BOOL read){
	DSError error = kNoError;
	//all nop by default
	u32 instructionData1[] = {
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
		
		*(u64*)srcDestPtr &= 0xFFFFFFFF;
	}else if (fpr == 0x21) {
		if (!read) {
			*(u32*)srcDestPtr = *(u32*)((u32)srcDestPtr + 4);
		}

		error = TRKPPCAccessSPR(srcDestPtr, SPR_FPECR, read);
		
		if(read){
			*(u64*)srcDestPtr = (*(u64*)srcDestPtr >> 32) & 0xFFFFFFFF;
		}
	}

	return error;
}


DSError TRKPPCAccessSpecialReg(void* srcDestPtr, u32* instructionData, BOOL read){
	RegAccessFunc accessFunc;
	instructionData[9] = INSTR_BLR; //Set the last entry as blr
	TRK_flush_cache((u32)instructionData, 0x28);
	//Call the instruction data array as code
	accessFunc = (RegAccessFunc)instructionData;
	accessFunc(srcDestPtr, TRKvalue128_temp);
	return kNoError;
}

void TRKTargetSetInputPendingPtr(void* ptr){
	gTRKState.trkInputPendingPtr = ptr;
}

//unused
void SetInputState(u32 state){
	gTRKState.unk9C = state;
}

//unused
u8 TRKGetInTRKFlag(){
	return gTRKExceptionStatus.inTRK;
}

u32* ConvertAddress(u32 addr){
	return (u32*)(addr | 0x80000000);
}

#define INVALID_THREAD(thread) ((u32)thread == 0xFFFFFFFF || thread == NULL || (u32)thread == 0x80000000)

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
		thread = (OSThread*)ConvertAddress((u32)thread->nextActive);
		if (INVALID_THREAD(thread)) break;
	}

	*r3 = i;
}
