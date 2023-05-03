#include "revolution/BASE.h"
#include "PowerPC_EABI_Support/MetroTRK/trk.h"
#include "PowerPC_EABI_Support/MetroTRK/dolphin_trk_glue.h"
#include "PowerPC_EABI_Support/MetroTRK/custconn/cc_gdev.h"



static u32 gReadCount; //unused
static u32 gReadPos; //unused
static u32 gWritePos; //unused
static u8 TRK_Use_BBA;
static DBCommTable gDBCommTable;


asm void TRKLoadContext(OSContext* ctx, u32 r4){
    nofralloc
    lwz r0, 0(r3)
    lwz r1, 4(r3)
    lwz r2, 8(r3)
    lhz r5, 0x1a2(r3)
    rlwinm. r6, r5, 0, 0x1e, 0x1e
    beq L_802CC24C
    rlwinm r5, r5, 0, 0x1f, 0x1d
    sth r5, 0x1a2(r3)
    lmw r5, 0x14(r3)
    b L_802CC250
L_802CC24C:
    lmw r13, 0x34(r3)
L_802CC250:
    mr r31, r3
    mr r3, r4
    lwz r4, 0x80(r31)
    mtcrf 0xff, r4
    lwz r4, 0x84(r31)
    mtlr r4
    lwz r4, 0x88(r31)
    mtctr r4
    lwz r4, 0x8c(r31)
    mtxer r4
    mfmsr r4
    rlwinm r4, r4, 0, 0x11, 0xf
    rlwinm r4, r4, 0, 0x1f, 0x1d
    mtmsr r4
    mtsprg 1, r2
    lwz r4, 0xc(r31)
    mtsprg 2, r4
    lwz r4, 0x10(r31)
    mtsprg 3, r4
    lwz r2, 0x198(r31)
    lwz r4, 0x19c(r31)
    lwz r31, 0x7c(r31)
    b TRKInterruptHandler
}

void TRKEXICallBack(s32 r3, OSContext* ctx){
    OSEnableScheduler();
    TRKLoadContext(ctx, 0x500);
}

int InitMetroTRKCommTable(int hwId){
    OSReport("Devkit set to : %ld\n", hwId);
    OSReport("MetroTRK : Sizeof Reply - %ld bytes\n", 0x40);
    TRK_Use_BBA = FALSE;
    
    if(hwId == HARDWARE_BBA){ //BBA hardware
        //The code here was probably stubbed for release.
        return 0;
    }else if(hwId == HARDWARE_NDEV){ //NDEV hardware
        OSReport("MetroTRK : Set to NDEV hardware\n");
        //Initialize gDBCommTable
        gDBCommTable.initialize_func = gdev_cc_initialize;
        gDBCommTable.open_func = gdev_cc_open;
        gDBCommTable.close_func = gdev_cc_close;
        gDBCommTable.read_func = gdev_cc_read;
        gDBCommTable.write_func = gdev_cc_write;
        gDBCommTable.shutdown_func = gdev_cc_shutdown;
        gDBCommTable.peek_func = gdev_cc_peek;
        gDBCommTable.pre_continue_func = gdev_cc_pre_continue;
        gDBCommTable.post_stop_func = gdev_cc_post_stop;
        gDBCommTable.initinterrupts_func = gdev_cc_initinterrupts;
        return 0;
    }else{ //GDEV/unknown hardware
        OSReport("MetroTRK : Set to UNKNOWN hardware. (%ld)\n", hwId);
        OSReport("MetroTRK : Invalid hardware ID passed from OS\n");
        OSReport("MetroTRK : Defaulting to GDEV Hardware\n");
        return 1;
    }
}

void TRKUARTInterruptHandler(){
}

UARTError TRKInitializeIntDrivenUART(u32 r3, u32 r4, void* r5){
    gDBCommTable.initialize_func(r5, TRKEXICallBack);
    gDBCommTable.open_func();
    return kUARTNoError;
}

void EnableEXI2Interrupts(){
    if(!TRK_Use_BBA){
        if(gDBCommTable.initinterrupts_func != NULL){
            gDBCommTable.initinterrupts_func();
        }
    }
}

int TRKPollUART(){
    return gDBCommTable.peek_func();
}

int TRKReadUARTN(void* bytes, u32 limit){
    int r3 = gDBCommTable.read_func(bytes, limit);
    int r0 = -r3;
    r0 |= r3;
    r3 = r0 >> 31;
    return r3;
}

int TRKWriteUARTN(const void* bytes, u32 length){
    int r3 = gDBCommTable.write_func(bytes, length);
    int r0 = -r3;
    r0 |= r3;
    r3 = r0 >> 31;
    return r3;
}

//unused
void WriteUARTFlush(){
}

//unused
void WriteUART1(){
}

void ReserveEXI2Port(){
    gDBCommTable.post_stop_func();
}

void UnreserveEXI2Port(){
    gDBCommTable.pre_continue_func();
}

void TRK_board_display(char* str){
    OSReport("%s\n", str);
}

void InitializeProgramEndTrap(){
    static const u32 EndofProgramInstruction = 0x00454E44; //\x00END

    u8* endOfProgramInstructionBytes = (u8*)&EndofProgramInstruction;
    u8* ppcHaltPtr = (u8*)PPCHalt;
    TRK_memcpy(ppcHaltPtr + 4, endOfProgramInstructionBytes, 4);
    ICInvalidateRange(ppcHaltPtr + 4, 4);
    DCFlushRange(ppcHaltPtr + 4, 4);
}
