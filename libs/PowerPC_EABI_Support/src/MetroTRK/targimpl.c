#include "PowerPC_EABI_Support/MetroTRK/trk.h"

static u32 gTRKExceptionStatus[4] = {
    0,
    0,
    0,
    0x1000000
};

static TRKMemMap gTRKMemMap = {
    0,
    -1,
    1,
    1
};

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
}

//unused
asm void __TRK_get_IBAT0U(){
}

//unused
asm void __TRK_get_IBAT0L(){
}

//unused
asm void __TRK_get_IBAT1U(){
}

//unused
asm void __TRK_get_IBAT1L(){
}

//unused
asm void __TRK_get_IBAT2U(){
}

//unused
asm void __TRK_get_IBAT2L(){
}

//unused
asm void __TRK_get_IBAT3U(){
}

//unused
asm void __TRK_get_IBAT3L(){
}

//unused
asm void __TRK_get_DBAT0U(){
}

//unused
asm void __TRK_get_DBAT0L(){
}

//unused
asm void __TRK_get_DBAT1U(){
}

//unused
asm void __TRK_get_DBAT1L(){
}

//unused
asm void __TRK_get_DBAT2U(){
}

//unused
asm void __TRK_get_DBAT2L(){
}

//unused
asm void __TRK_get_DBAT3U(){
}

//unused
asm void __TRK_get_DBAT3L(){
}

static int TRKValidMemory32(u32 param1, u32 param2, int param3){
    int result;
    u32 r31;
    TRKMemMap *map;

    param2 += param1;
    r31 = (param2  - 1);    

    result = 0x700; //r6;
    
    if(r31 < param1){
        return 0x700;
    }

    map = &gTRKMemMap;

    if(param1 <= gTRKMemMap.unk0[1] && r31 >= map->unk0[0]){
        if((param3 == 0 && gTRKMemMap.unk8 == 0) || (param3 == 1 && gTRKMemMap.unkC == 0)){
            result = 0x700;
        }else{
            result = 0;

            if(param1 < gTRKMemMap.unk0[0]){
                result = TRKValidMemory32(param1, gTRKMemMap.unk0[0] - param1, param3);
            }
                
            if(result == 0 && r31 > gTRKMemMap.unk0[1]){
                result = TRKValidMemory32(gTRKMemMap.unk0[1], r31 - gTRKMemMap.unk0[1], param3);
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

//unused
void TRKTargetAccessMemory(){
}

void TRKTargetReadInstruction(r3, r4, r5, r6, r7){

}

void TRKTargetAccessDefault(r3, r4, r5, r6, r7){

}

void TRKTargetAccessFP(r3, r4, r5, r6, r7){

}

void TRKTargetAccessExtended1(r3, r4, r5, r6){

}

void TRKTargetAccessExtended2(r3, r4, r5, r6, r7){

}

//unused
void TRKTargetVersions(){
}

//unused
void TRKTargetCheckException(){
}

void TRKInterruptHandler(){

}

//unused
void TRKExceptionHandler(){
}

void TRKPostInterruptEvent(){

}

void TRKSwapAndGo(){

}

void TRKInterruptHandlerEnableInterrupts(){
}

void TRKTargetInterrupt(){

}

void TRKTargetAddStopInfo(){

}

void TRKTargetAddExceptionInfo(){

}

//unused
void TRKTargetEnableTrace(){
}

//unused
void TRKTargetStepDone(){
}

//unused
void TRKTargetDoStep(){
}

void TRKTargetCheckStep(){

}

void TRKTargetSingleStep(){

}

void TRKTargetStepOutOfRange(){

}

void TRKTargetGetPC(){

}

void TRKTargetSupportRequest(){

}

//unused
void TRKTargetFlushCache(){
}

BOOL TRKTargetStopped(){
    return gTRKState.mIsStopped;
}

void TRKTargetSetStopped(BOOL val){
    gTRKState.mIsStopped = val;
}

int TRKTargetStop(){
    TRKTargetSetStopped(TRUE);
    return 0;
}

void TRKPPCAccessSPR(r3, r4, r5){

}

void TRKPPCAccessPairedSingleRegister(r3, r4, r5){

}

asm void ReadFPSCR(){
    nofralloc
    stwu r1, -0x40(r1)
    stfd f31, 0x10(r1)
    psq_st f31, 32(r1), 0, qr0
    mffs f31
    stfd f31, 0(r3)
    psq_l f31, 32(r1), 0, qr0
    lfd f31, 0x10(r1)
    addi r1, r1, 0x40
    blr
}

asm void WriteFPSCR(){
    nofralloc
    stwu r1, -0x40(r1)
    stfd f31, 0x10(r1)
    psq_st f31, 32(r1), 0, qr0
    lfd f31, 0(r3)
    mtfsf 0xff, f31
    psq_l f31, 32(r1), 0, qr0
    lfd f31, 0x10(r1)
    addi r1, r1, 0x40
    blr 
}

void TRKPPCAccessFPRegister(r3, r4, r5){

}

void TRKPPCAccessSpecialReg(r3, r4){

}

void TRKTargetSetInputPendingPtr(u32 val){
    gTRKState.unkA0 = val;
}

//unused
void SetInputState(){
}

//unused
void TRKGetInTRKFlag(){
}

u32 ConvertAddress(u32 addr){
    return addr | 0x80000000;
}

void GetThreadInfo(){
}
