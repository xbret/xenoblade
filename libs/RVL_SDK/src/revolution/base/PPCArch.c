#include "revolution/BASE.h"
#include "revolution/OS.h"



asm u32 PPCMfmsr(void) {
    nofralloc
    mfmsr r3
    blr
}

asm void PPCMtmsr(register u32 val) {
    nofralloc
    mtmsr val
    blr
}


//unused
asm void PPCOrMsr(){
}

//unused
asm void PPCAndMsr(){
}

//unused
asm void PPCAndCMsr(){
}

asm u32 PPCMfhid0(void) {
    nofralloc
    mfhid0 r3
    blr
}

asm void PPCMthid0(register u32 val) {
    nofralloc
    mthid0 val
    blr
}

//unused
asm void PPCMfhid1(){
}

asm u32 PPCMfl2cr(void) {
    nofralloc
    mfl2cr r3
    blr
}

asm void PPCMtl2cr(register u32 val) {
    nofralloc
    mtl2cr val
    blr
}

asm void PPCMtdec(register u32 val) {
    nofralloc
    mtdec val
    blr
}

//unused
asm void PPCMfdec(){
}

asm void PPCSync(void) {
    nofralloc
    sc
    blr
}

//unused
asm void PPCEieio(){
}

asm void PPCHalt(void) {
    nofralloc
    sync

loop:
    nop
    li r3, 0
    nop
    b loop
}

//unused
asm void PPCMfmmcr0(){
}

asm void PPCMtmmcr0(register u32 val) {
    nofralloc
    mtmmcr0 val
    blr
}

//unused
asm void PPCMfmmcr1(){
}

asm void PPCMtmmcr1(register u32 val) {
    nofralloc
    mtmmcr1 val
    blr
}

//unused
asm void PPCMfpmc1(){
}

asm void PPCMtpmc1(register u32 val) {
    nofralloc
    mtpmc1 val
    blr
}

//unused
asm void PPCMfpmc2(){
}

asm void PPCMtpmc2(register u32 val) {
    nofralloc
    mtpmc2 val
    blr
}

//unused
asm void PPCMfpmc3(){
}

asm void PPCMtpmc3(register u32 val) {
    nofralloc
    mtpmc3 val
    blr
}

//unused
asm void PPCMfpmc4(){
}

asm void PPCMtpmc4(register u32 val){
    nofralloc
    mtpmc4 val
    blr
}

//unused
asm void PPCMfsia(){
}

//unused
asm void PPCMtsia(){
}

u32 PPCMffpscr(void) {
    register u64 fpscr;

    asm {
        mffs f31
        stfd f31, fpscr
    }

    return fpscr;
}

void PPCMtfpscr(register u32 val) {
    register struct {
        float tmp;
        float data;
    } fpscr;

    asm {
        li r4, 0
        stw r4, fpscr.tmp
        stw val, fpscr.data
        lfd f31, fpscr.tmp
        mtfs f31
    }
}

asm u32 PPCMfhid2(void) {
    nofralloc
    mfspr r3, 0x398 //HID2
    blr
}

asm void PPCMthid2(register u32 val) {
    nofralloc
    mtspr 0x398, val //HID2
    blr
}

asm u32 PPCMfwpar(void) {
    nofralloc
    sync
    mfwpar r3
    blr
}

asm void PPCMtwpar(register u32 val) {
    nofralloc
    mtwpar r3
    blr
}

//unused
asm void PPCMfdmaU(){
}

//unused
asm void PPCMfdmaL(){
}

//unused
asm void PPCMtdmaU(){
}

//unused
asm void PPCMtdmaL(){
}

//unused
asm void PPCMfpvr(){
}

//unused
void PPCEnableSpeculation(){
}

void PPCDisableSpeculation(void) { PPCMthid0(PPCMfhid0() | HID0_SPD); }

//unused
asm void PPCSetFpIEEEMode(){
}

asm void PPCSetFpNonIEEEMode(void) {
    nofralloc
    mtfsb1 29
    blr
}

//unused
void PPCMfhid4(){
}

void PPCMthid4(register u32 val) {
    if (val & HID4_H4A) {
        asm {
            mtspr 0x3F3, val //HID4
        }
    } else {
        OSReport("H4A should not be cleared because of Broadway errata.\n");
        val |= HID4_H4A;
        asm {
            mtspr 0x3F3, val //HID4
        }
    }
}
