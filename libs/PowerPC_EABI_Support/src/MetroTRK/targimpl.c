#include "PowerPC_EABI_Support/MetroTRK/targimpl.h"

#include "PowerPC_EABI_Support/MetroTRK/Processor/ppc/Board/dolphin/memmap.h"
#include "PowerPC_EABI_Support/MetroTRK/Processor/ppc/Generic/ppc_targimpl.h"

typedef struct TRKExceptionStatus{
	u32 unk0;
	u32 unk4;
	u32 unk8;
	u8 unkC;
	u8 unkD;
	u8 unkE;
	u8 unkF;
}TRKExceptionStatus;

typedef struct TRKStepStatus {
	BOOL stepping; //0x0
	DSMessageStepOptions stepType; //0x4
	u32 stepCount; //0x8
	u32 stepRangeStart; //0xC
	u32 stepRangeEnd; //0x10
	u32 unk14;
} TRKStepStatus;

TRKRestoreFlags gTRKRestoreFlags;
TRKCPUState gTRKCPUState;

static TRKExceptionStatus gTRKExceptionStatus = {
    0,
    0,
    0,
	1,
	0,
	0,
	0,
};

const TRKMemMap gTRKMemMap = {
    0,
    -1,
    1,
    1
};

TRKState gTRKState;

ui128 TRKvalue128_temp;
TRKSaveState gTRKSaveState;
static TRKStepStatus gTRKStepStatus;


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
    u32 r31;

    length += (u32)addr;
    r31 = (length  - 1);

    result = kInvalidMemory; //r6;
    
    if(r31 < (u32)addr){
        return kInvalidMemory;
    }

    if((u32)addr <= gTRKMemMap.unk0[1] && r31 >= gTRKMemMap.unk0[0]){
        if((readWriteable == kValidMemoryReadable && gTRKMemMap.unk8 == 0) || (readWriteable == kValidMemoryWriteable && gTRKMemMap.unkC == 0)){
            result = kInvalidMemory;
        }else{
            result = kNoError;

            if((u32)addr < gTRKMemMap.unk0[0]){
                result = TRKValidMemory32(addr, gTRKMemMap.unk0[0] - (u32)addr, readWriteable);
            }
                
            if(result == kNoError && r31 > gTRKMemMap.unk0[1]){
                result = TRKValidMemory32((void*)gTRKMemMap.unk0[1], r31 - gTRKMemMap.unk0[1], readWriteable);
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

DSError TRKTargetAccessMemory(void* data, u32 start, size_t* length, MemoryAccessOptions accessOptions, BOOL read){

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

}

DSError TRKTargetAccessFP(u32 firstRegister, u32 lastRegister, MessageBuffer* b, size_t* registersLengthPtr, BOOL read){

}

DSError TRKTargetAccessExtended1(u32 firstRegister, u32 lastRegister, MessageBuffer* b, size_t* registersLengthPtr, BOOL read){

}

DSError TRKTargetAccessExtended2(u32 firstRegister, u32 lastRegister, MessageBuffer* b, size_t* registersLengthPtr, BOOL read){

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

void TRK_InterruptHandler(){

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

void TRKPostInterruptEvent(){

}

void TRKSwapAndGo(){

}

void TRKInterruptHandlerEnableInterrupts(){
}

DSError TRKTargetInterrupt(TRKEvent* event){

}

void TRKTargetAddStopInfo(MessageBuffer* b){

}

void TRKTargetAddExceptionInfo(MessageBuffer* b){

}

DSError TRKTargetEnableTrace(u32 val){
	if(val != 0){
		gTRKCPUState.unk1F8 = (gTRKCPUState.unk1F8 | 0x400) & 0xffff7fff;
	}else{
		gTRKCPUState.unk1F8 = (gTRKCPUState.unk1F8 & 0xfffffbff) | 0x8000;
	}
	return kNoError;
}

//unused
DSError TRKTargetStepDone(){
	DSError error = kStepError;

	if (gTRKStepStatus.stepping) {
		return error;
	}

	if ((gTRKCPUState.unk2F8 & 0xffff) != 0xd00) { //unk2f8 loaded as u32
		return error;
	}

	if (gTRKStepStatus.stepType == kDSStepIntoCount) {
		if (gTRKStepStatus.stepCount == 0) {
			return error;
		}else{
			return kNoError;
		}
	}

	if (gTRKStepStatus.stepType != kDSStepIntoRange) {
		return error;
	}

	if (gTRKCPUState.pc < gTRKStepStatus.stepRangeStart) {
		return error;
	}

	if (gTRKStepStatus.stepRangeEnd < gTRKCPUState.pc) {
		return error;
	}

	return kNoError;
}

//unused
DSError TRKTargetDoStep(){
	gTRKStepStatus.stepping = TRUE;
	TRKTargetEnableTrace(1);
	
	if (gTRKStepStatus.stepType == kDSStepIntoCount || gTRKStepStatus.stepType == kDSStepOverCount) {
		gTRKStepStatus.stepCount--;
	}

	TRKTargetSetStopped(FALSE);
	return kNoError;
}

static void TRKTargetCheckStep(){

}

DSError TRKTargetSingleStep(u8 count, BOOL stepOver){

}

DSError TRKTargetStepOutOfRange(u32 rangeStart, u32 rangeEnd, BOOL stepOver){

}

u32 TRKTargetGetPC(){
	return gTRKCPUState.pc;
}

DSError TRKTargetSupportRequest(){

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

void TRKPPCAccessSPR(u32 r3, u32 r4, u32 r5){

}

void TRKPPCAccessPairedSingleRegister(u32 r3, u32 r4, u32 r5){

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

void TRKPPCAccessFPRegister(u32 r3, u32 r4, u32 r5){

}

void TRKPPCAccessSpecialReg(u32 r3, u32 r4){

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
	return gTRKExceptionStatus.unkC;
}

u32 ConvertAddress(u32 addr){
    return addr | 0x80000000;
}

static void GetThreadInfo(){
}
