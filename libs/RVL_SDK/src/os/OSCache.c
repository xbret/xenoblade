#include "revolution/BASE.h"
#include "revolution/DB.h"
#include "revolution/OS.h"

//unused
asm void DCFlashInvalidate(){
}

asm void DCEnable(void) {
        nofralloc
    
    sync
    mfhid0 r3
    ori r3, r3, 0x4000
    mthid0 r3

    blr
    }

//unused
asm void DCDisable(){
}

//unused
asm void DCFreeze(){
}

//unused
asm void DCUnfreeze(){
}

//unused
asm void DCTouchLoad(){
}

//unused
asm void DCBlockZero(){
}

//unused
asm void DCBlockStore(){
}

//unused
asm void DCBlockFlush(){
}

//unused
asm void DCBlockInvalidate(){
}

asm void DCInvalidateRange(register const void* buf, register u32 len) {
        nofralloc
    
    cmplwi len, 0
    blelr 

    clrlwi r5, buf, 27
    add len, len, r5
    addi len, len, 31
    srwi len, len, 5
    mtctr len

do_invalidate:
    dcbi 0, buf
    addi buf, buf, 32
    bdnz do_invalidate

    blr
    }

asm void DCFlushRange(register const void* buf, register u32 len) {
        nofralloc
    
    cmplwi len, 0
    blelr 

    clrlwi r5, buf, 27
    add len, len, r5
    addi len, len, 31
    srwi len, len, 5
    mtctr len

do_flush:
    dcbf 0, buf
    addi buf, buf, 32
    bdnz do_flush
    sc

    blr
    }

asm void DCStoreRange(register const void* buf, register u32 len) {
        nofralloc
    
    cmplwi len, 0
    blelr 

    clrlwi r5, buf, 27
    add len, len, r5
    addi len, len, 31
    srwi len, len, 5
    mtctr len

do_store:
    dcbst 0, buf
    addi buf, buf, 32
    bdnz do_store
    sc

    blr
    }

asm void DCFlushRangeNoSync(register const void* buf, register u32 len) {
        nofralloc
    
    cmplwi len, 0
    blelr 

    clrlwi r5, buf, 27
    add len, len, r5
    addi len, len, 31
    srwi len, len, 5
    mtctr len

do_flush:
    dcbf 0, buf
    addi buf, buf, 32
    bdnz do_flush

    blr
    }

asm void DCStoreRangeNoSync(register const void* buf, register u32 len) {
        nofralloc
    
    cmplwi len, 0
    blelr 

    clrlwi r5, buf, 27
    add len, len, r5
    addi len, len, 31
    srwi len, len, 5
    mtctr len

do_store:
    dcbst 0, buf
    addi buf, buf, 32
    bdnz do_store

    blr
    }

asm void DCZeroRange(register const void* buf, register u32 len) {
        nofralloc
    
    cmplwi len, 0
    blelr 

    clrlwi r5, buf, 27
    add len, len, r5
    addi len, len, 31
    srwi len, len, 5
    mtctr len

do_zero:
    dcbz 0, buf
    addi buf, buf, 32
    bdnz do_zero

    blr
    }

//unused
asm void DCTouchRange(){
}

asm void ICInvalidateRange(register const void* buf, register u32 len) {
        nofralloc
    
    cmplwi len, 0
    blelr 

    clrlwi r5, buf, 27
    add len, len, r5
    addi len, len, 31
    srwi len, len, 5
    mtctr len

do_invalidate:
    icbi 0, buf
    addi buf, buf, 32
    bdnz do_invalidate
    
    sync
    isync

    blr
    }

asm void ICFlashInvalidate(void) {
        nofralloc
    
    mfhid0 r3
    ori r3, r3, 0x800
    mthid0 r3

    blr
    }

asm void ICEnable(void) {
        nofralloc

    isync
    mfhid0 r3
    ori r3, r3, 0x8000
    mthid0 r3

    blr
    }

//unused
asm void ICDisable(){
}

//unused
asm void ICFreeze(){
}

//unused
asm void ICUnfreeze(){
}

//unused
asm void ICBlockInvalidate(){
}

//unused
asm void ICSync(){
}

static asm void __LCEnable(void) {
        nofralloc

    mfmsr r5
    ori r5, r5, 0x1000
    mtmsr r5

    lis r3, 0x80000000@h
    li r4, 1024
    mtctr r4
do_store:
    dcbt 0, r3
    dcbst 0, r3
    addi r3, r3, 32
    bdnz do_store

    mfspr r4, 0x398 //HID2
    oris r4, r4, 0x100F
    mtspr 0x398, r4 //HID2
    
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    
    lis r3, 0xE0000002@h
    ori r3, r3, 0xE0000002@l
    mtdbatl 3, r3
    ori r3, r3, 0x1FE
    mtdbatu 3, r3
    isync

    lis r3, 0xE0000000@h
    li r6, 512
    mtctr r6
    li r6, 0
do_load:
    dcbz_l r6, r3
    addi r3, r3, 32
    bdnz do_load
    
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    
    blr
    }

void LCEnable(void) {
    const BOOL enabled = OSDisableInterrupts();
    __LCEnable();
    OSRestoreInterrupts(enabled);
}

asm void LCDisable(void) {
        nofralloc
    
    lis r3, 0xE0000000@ha
    li r4, 512
    mtctr r4
do_invalidate:
    dcbi 0, r3
    addi r3, r3, 32
    bdnz do_invalidate
    
    mfspr r4, 0x398 //HID2
    rlwinm r4, r4, 0, 4, 2
    mtspr 0x398, r4 //HID2

    blr
    }

//unused
asm void LCIsEnable(){
}

//unused
asm void LCAllocOneTag(){
}

//unused
asm void LCAllocTags(){
}

asm void LCLoadBlocks(register void* dst, register const void* src,
                      register u32 len) {
        nofralloc

    rlwinm r6, len, 30, 27, 31
    clrlwi src, src, 3
    or r6, r6, src
    mtspr DMA_U, r6
    rlwinm r6, len, 2, 28, 29
    or r6, r6, dst
    ori r6, r6, 0x12
    mtspr DMA_L, r6

    blr
    }

asm void LCStoreBlocks(register void* dst, register const void* src,
                       register u32 len){
        nofralloc

    rlwinm r6, len, 30, 27, 31
    clrlwi dst, dst, 3
    or r6, r6, dst
    mtspr DMA_U, r6
    rlwinm r6, len, 2, 28, 29
    or r6, r6, src
    ori r6, r6, 0x2
    mtspr DMA_L, r6

    blr
    }

//unused
asm void LCAlloc(){
}

//unused
asm void LCAllocNoInvalidate(){
}

//unused
asm void LCLoadData(){
}

u32 LCStoreData(void* dst, const void* src, u32 len) {
    u32 blocks = (len + 31) / 32;
    const u32 ret = (blocks + 127) / 128;

    while (blocks > 0) {
        if (blocks < 128) {
            LCStoreBlocks(dst, src, blocks);
            blocks = 0;
        } else {
            LCStoreBlocks(dst, src, 0);
            blocks -= 128;

            dst = (u8*)dst + 0x1000;
            src = (u8*)src + 0x1000;
        }
    }

    return ret;
}

asm u32 LCQueueLength(void) {
        nofralloc

    mfspr r4, 0x398 //HID2
    rlwinm r3, r4, 8, 28, 31

    blr
    }

asm void LCQueueWait(register u32 n) {
        nofralloc

    mfspr r4, 0x398 //HID2
    rlwinm r4, r4, 8, 28, 31
    cmpw r4, n
    bgt LCQueueWait

    blr
    }

//unused
asm void LCFlushQueue(){
}

static void L2Init(void) {
    u32 msr;

    msr = PPCMfmsr();
    __sync();
    PPCMtmsr(MSR_IR | MSR_DR);
    __sync();

    L2Disable();
    L2GlobalInvalidate();
    PPCMtmsr(msr);
}

void L2Enable(void) {
    const u32 l2cr = PPCMfl2cr();
    PPCMtl2cr((l2cr | L2CR_L2E) & ~L2CR_L2I);
}

void L2Disable(void) {
    u32 l2cr;

    __sync();
    l2cr = PPCMfl2cr();
    PPCMtl2cr(l2cr & ~L2CR_L2E);
    __sync();
}

void L2GlobalInvalidate(void) {
    u32 l2cr;

    L2Disable();

    l2cr = PPCMfl2cr();
    PPCMtl2cr(l2cr | L2CR_L2I);

    while (PPCMfl2cr() & L2CR_L2IP) {
    }

    l2cr = PPCMfl2cr();
    PPCMtl2cr(l2cr & ~L2CR_L2I);

    while (PPCMfl2cr() & L2CR_L2IP) {
        DBPrintf(">>> L2 INVALIDATE : SHOULD NEVER HAPPEN\n");
    }
}

//unused
asm void L2SetDataOnly(){
}

//unused
asm void L2SetWriteThrough(){
}

void DMAErrorHandler(u8 error, OSContext* ctx, u32 dsisr, u32 dar, ...) {
    const u32 hid2 = PPCMfhid2();

    OSReport("Machine check received\n");
    OSReport("HID2 = 0x%x   SRR1 = 0x%x\n", hid2, ctx->srr1);

    if (!(hid2 & (HID2_DCHERR | HID2_DNCERR | HID2_DCMERR | HID2_DQOERR)) ||
        !(ctx->srr1 & 0x200000)) {
        OSReport("Machine check was not DMA/locked cache related\n");
        OSDumpContext(ctx);
        PPCHalt();
    }

    OSReport("DMAErrorHandler(): An error occurred while processing DMA.\n");
    OSReport("The following errors have been detected and cleared :\n");

    if (hid2 & HID2_DCHERR) {
        OSReport(
            "\t- Requested a locked cache tag that was already in the cache\n");
    }
    if (hid2 & HID2_DNCERR) {
        OSReport("\t- DMA attempted to access normal cache\n");
    }
    if (hid2 & HID2_DCMERR) {
        OSReport("\t- DMA missed in data cache\n");
    }
    if (hid2 & HID2_DQOERR) {
        OSReport("\t- DMA queue overflowed\n");
    }

    PPCMthid2(hid2);
}

void __OSCacheInit(void) {
    if (!(PPCMfhid0() & HID0_ICE)) {
        ICEnable();
        DBPrintf("L1 i-caches initialized\n");
    }

    if (!(PPCMfhid0() & HID0_DCE)) {
        DCEnable();
        DBPrintf("L1 d-caches initialized\n");
    }

    if (!(PPCMfl2cr() & L2CR_L2E)) {
        L2Init();
        L2Enable();
        DBPrintf("L2 cache initialized\n");
    }

    OSSetErrorHandler(OS_ERR_MACHINE_CHECK, DMAErrorHandler);
    DBPrintf("Locked cache machine check handler installed\n");
}
