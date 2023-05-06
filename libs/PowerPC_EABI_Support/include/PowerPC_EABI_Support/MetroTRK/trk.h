#ifndef _METROTRK_TRK_H
#define _METROTRK_TRK_H

#include "types.h"
#include "PowerPC_EABI_Support/MetroTRK/msgcmd.h"
#include "PowerPC_EABI_Support/MSL_C/MSL_Common_Embedded/UART.h"
#include "revolution/DB.h"

#ifdef __cplusplus
extern "C" {
#endif // ifdef __cplusplus

typedef struct _TRK_Msg {
	u8 _00[4];      // _00
	u32 mMsgLength; // _04
	u32 _0C;        // _08
	u32 mMsg;       // _0C
	u8 unk10[2];
	u16 unk12;
} TRK_Msg;

/**
 * @size{0xC}
 */
typedef struct TRKEvent {
	int mEventType;
	int _04;
	int mBufferIndex;
} TRKEvent;

/**
 * @size{0x28}
 */
typedef struct TRKEventQueue {
	int mCurrEvtID;
	int mNextSlotToOverwrite;
	TRKEvent mEvents[2];
	u32 _24; /* max of 0x100? */
	u8 unk28[4];
} TRKEventQueue;

typedef struct TRKRestoreFlags {
	u8 unk0;
	u8 unk1;
	u8 unk2[0x10 - 0x2];
} TRKRestoreFlags;

typedef struct TRKStepStatus {
	u32 unk0;
	u32 unk4;
	u32 unk8;
	u32 unkC;
	u32 unk10;
	u32 unk14;
} TRKStepStatus;

typedef struct TRKSaveState{
	u32 unk0;
	u32 unk4;
	u32 unk8;
	u32 unkC;
	u32 unk10;
	u32 unk14;
	u32 unk18;
	u32 unk1C;
	u32 unk20;
	u32 unk24;
	u32 unk28;
	u32 unk2C;
	u32 unk30;
	u32 unk34;
	u32 unk38;
	u32 unk3C;
	u32 unk40;
	u32 unk44;
	u32 unk48;
	u32 unk4C;
	u32 unk50;
	u32 unk54;
	u32 unk58;
	u32 unk5C;
	u32 unk60;
	u32 unk64;
	u32 unk68;
	u32 unk6C;
	u32 unk70;
	u32 unk74;
	u32 unk78;
	u32 unk7C;
	u32 unk80;
	u32 unk84;
	u32 unk88;
	u32 unk8C;
	u32 unk90;
	u32 unk94;
} TRKSaveState;

/**
 * @size{0xA4}
 */
typedef struct TRKState {
	u32 unk00;
	u32 unk04;
	u32 unk08;
	u32 unk0C;
	u32 unk10;
	u32 unk14;
	u32 unk18;
	u32 unk1C;
	u32 unk20;
	u32 unk24;
	u32 unk28;
	u32 unk2C;
	u32 unk30;
	u32 unk34;
	u32 unk38;
	u32 unk3C;
	u32 unk40;
	u32 unk44;
	u32 unk48;
	u32 unk4C;
	u32 unk50;
	u32 unk54;
	u32 unk58;
	u32 unk5C;
	u32 unk60;
	u32 unk64;
	u32 unk68;
	u32 unk6C;
	u32 unk70;
	u32 unk74;
	u32 unk78;
	u32 unk7C;
	u32 unk80;
	u32 unk84;
	u32 unk88;
	u32 unk8C;
	u32 unk90;
	u32 unk94;
	BOOL mIsStopped;
	u32 unk9C;
	u32 unkA0;
	u32 unkA4;
	u32 unkA8;
	u32 unkAC;
} TRKState;

typedef struct TRKCPUState{
	u32 unk0;
	u32 unk4;
	u32 unk8;
	u32 unkC;
	u32 unk10;
	u32 unk14;
	u32 unk18;
	u32 unk1C;
	u32 unk20;
	u32 unk24;
	u32 unk28;
	u32 unk2C;
	u32 unk30;
	u32 unk34;
	u32 unk38;
	u32 unk3C;
	u32 unk40;
	u32 unk44;
	u32 unk48;
	u32 unk4C;
	u32 unk50;
	u32 unk54;
	u32 unk58;
	u32 unk5C;
	u32 unk60;
	u32 unk64;
	u32 unk68;
	u32 unk6C;
	u32 unk70;
	u32 unk74;
	u32 unk78;
	u32 unk7C;
	u32 unk80;
	u32 unk84;
	u32 unk88;
	u32 unk8C;
	u32 unk90;
	u32 unk94;
	u32 unk98;
	u32 unk9C;
	u32 unkA0;
	u32 unkA4;
	u32 unkA8;
	u32 unkAC;
	u32 unkB0;
	u32 unkB4;
	u32 unkB8;
	u32 unkBC;
	u32 unkC0;
	u32 unkC4;
	u32 unkC8;
	u32 unkCC;
	u32 unkD0;
	u32 unkD4;
	u32 unkD8;
	u32 unkDC;
	u32 unkE0;
	u32 unkE4;
	u32 unkE8;
	u32 unkEC;
	u32 unkF0;
	u32 unkF4;
	u32 unkF8;
	u32 unkFC;
	u32 unk100;
	u32 unk104;
	u32 unk108;
	u32 unk10C;
	u32 unk110;
	u32 unk114;
	u32 unk118;
	u32 unk11C;
	u32 unk120;
	u32 unk124;
	u32 unk128;
	u32 unk12C;
	u32 unk130;
	u32 unk134;
	u32 unk138;
	u32 unk13C;
	u32 unk140;
	u32 unk144;
	u32 unk148;
	u32 unk14C;
	u32 unk150;
	u32 unk154;
	u32 unk158;
	u32 unk15C;
	u32 unk160;
	u32 unk164;
	u32 unk168;
	u32 unk16C;
	u32 unk170;
	u32 unk174;
	u32 unk178;
	u32 unk17C;
	u32 unk180;
	u32 unk184;
	u32 unk188;
	u32 unk18C;
	u32 unk190;
	u32 unk194;
	u32 unk198;
	u32 unk19C;
	u32 unk1A0;
	u32 unk1A4;
	u32 unk1A8;
	u32 unk1AC;
	u32 unk1B0;
	u32 unk1B4;
	u32 unk1B8;
	u32 unk1BC;
	u32 unk1C0;
	u32 unk1C4;
	u32 unk1C8;
	u32 unk1CC;
	u32 unk1D0;
	u32 unk1D4;
	u32 unk1D8;
	u32 unk1DC;
	u32 unk1E0;
	u32 unk1E4;
	u32 unk1E8;
	u32 unk1EC;
	u32 unk1F0;
	u32 unk1F4;
	u32 unk1F8;
	u32 unk1FC;
	u32 unk200;
	u32 unk204;
	u32 unk208;
	u32 unk20C;
	u32 unk210;
	u32 unk214;
	u32 unk218;
	u32 unk21C;
	u32 unk220;
	u32 unk224;
	u32 unk228;
	u32 unk22C;
	u32 unk230;
	u32 unk234;
	u32 unk238;
	u32 unk23C;
	u32 unk240;
	u32 unk244;
	u32 unk248;
	u32 unk24C;
	u32 unk250;
	u32 unk254;
	u32 unk258;
	u32 unk25C;
	u32 unk260;
	u32 unk264;
	u32 unk268;
	u32 unk26C;
	u32 unk270;
	u32 unk274;
	u32 unk278;
	u32 unk27C;
	u32 unk280;
	u32 unk284;
	u32 unk288;
	u32 unk28C;
	u32 unk290;
	u32 unk294;
	u32 unk298;
	u32 unk29C;
	u32 unk2A0;
	u32 unk2A4;
	u32 unk2A8;
	u32 unk2AC;
	u32 unk2B0;
	u32 unk2B4;
	u32 unk2B8;
	u32 unk2BC;
	u32 unk2C0;
	u32 unk2C4;
	u32 unk2C8;
	u32 unk2CC;
	u32 unk2D0;
	u32 unk2D4;
	u32 unk2D8;
	u32 unk2DC;
	u32 unk2E0;
	u32 unk2E4;
	u32 unk2E8;
	u32 unk2EC;
	u32 unk2F0;
	u32 unk2F4;
	u32 unk2F8;
	u32 unk2FC;
	u32 unk300;
	u32 unk304;
	u32 unk308;
	u32 unk30C;
	u32 unk310;
	u32 unk314;
	u32 unk318;
	u32 unk31C;
	u32 unk320;
	u32 unk324;
	u32 unk328;
	u32 unk32C;
	u32 unk330;
	u32 unk334;
	u32 unk338;
	u32 unk33C;
	u32 unk340;
	u32 unk344;
	u32 unk348;
	u32 unk34C;
	u32 unk350;
	u32 unk354;
	u32 unk358;
	u32 unk35C;
	u32 unk360;
	u32 unk364;
	u32 unk368;
	u32 unk36C;
	u32 unk370;
	u32 unk374;
	u32 unk378;
	u32 unk37C;
	u32 unk380;
	u32 unk384;
	u32 unk388;
	u32 unk38C;
	u32 unk390;
	u32 unk394;
	u32 unk398;
	u32 unk39C;
	u32 unk3A0;
	u32 unk3A4;
	u32 unk3A8;
	u32 unk3AC;
	u32 unk3B0;
	u32 unk3B4;
	u32 unk3B8;
	u32 unk3BC;
	u32 unk3C0;
	u32 unk3C4;
	u32 unk3C8;
	u32 unk3CC;
	u32 unk3D0;
	u32 unk3D4;
	u32 unk3D8;
	u32 unk3DC;
	u32 unk3E0;
	u32 unk3E4;
	u32 unk3E8;
	u32 unk3EC;
	u32 unk3F0;
	u32 unk3F4;
	u32 unk3F8;
	u32 unk3FC;
	u32 unk400;
	u32 unk404;
	u32 unk408;
	u32 unk40C;
	u32 unk410;
	u32 unk414;
	u32 unk418;
	u32 unk41C;
	u32 unk420;
	u32 unk424;
	u32 unk428;
	u32 unk42C;
} TRKCPUState;

typedef struct TRKMemMap{
	u32 unk0[2];
	int unk8;
	int unkC;
} TRKMemMap;


typedef struct MessageBuffer {
	u32 unk0;
	u32 unk4;
	s32 unk8;
	u32 unkC;
	u8 mCommandId;
	u8 unk11[3];
	u8 mBuffer[0x87C]; /* _10 */
} MessageBuffer;

typedef struct TRKBufferUnk{
    MessageBuffer* unk0;
    int unk4;
    u8 unk8[0x40];
    u8 mBuffer[0x880]; //0x48
} TRKBufferUnk;

typedef struct TRKPacketSeq {
	u16 unk0;
	u8 unk2[6];
} TRKPacketSeq;

extern TRKRestoreFlags gTRKRestoreFlags;
extern TRKStepStatus gTRKStepStatus;
extern TRKSaveState gTRKSaveState;
extern TRKState gTRKState;
extern TRKCPUState gTRKCPUState;
extern TRKEventQueue gTRKEventQueue;

extern BOOL gTRKBigEndian;
extern void* gTRKInputPendingPtr;

typedef enum {
	TRKSuccess = 0,
	TRKError100 = 0x100,
	TRKError301 = 0x301,
	TRKError302 = 0x302,
	TRKResult500 = 0x500
} TRKResult;


//MWCriticalSection_gc
void MWInitializeCriticalSection(uint* section);
void MWEnterCriticalSection(uint* section);
void MWExitCriticalSection(uint* section);
void MWTerminateCriticalSection(uint* section);

//main_TRK
int TRK_main();

//mainloop
void TRKNubMainLoop(void);

//dispatch
u32 TRKDispatchMessage(MessageBuffer*);

//dolphin_trk
TRKResult TRKInitializeTarget();

//dolphin_trk_glue
int InitMetroTRKCommTable(int);
void TRKUARTInterruptHandler();
UARTError TRKInitializeIntDrivenUART(u32, u32, void*);
void EnableEXI2Interrupts();
int TRKPollUART();
int TRKReadUARTN(void*, u32);
int TRKWriteUARTN(const void*, u32);
void ReserveEXI2Port(void);
void UnreserveEXI2Port(void);
void TRK_board_display(char*);
void InitializeProgramEndTrap();

//nubevent
TRKResult TRKInitializeEventQueue();
BOOL TRKGetNextEvent(TRKEvent*);
TRKResult TRKPostEvent(TRKEvent*);
void TRKConstructEvent(TRKEvent*, int);
void TRKDestructEvent(TRKEvent*);

//nubinit
TRKResult TRK_InitializeNub(void);
TRKResult TRK_TerminateNub(void);
void TRK_NubWelcome(void);

//serpoll
void TRKGetInput();
void TRKProcessInput(int);
TRKResult TRKInitializeSerialHandler();
TRKResult TRKTerminateSerialHandler();

//targcont
TRKResult TRKTargetContinue(void);

//mpc_7xx_603e
void TRKSaveExtended1Block();
void TRKRestoreExtended1Block();

//msg
TRKResult TRKMessageSend(TRK_Msg*);

//msgbuf
TRKResult TRKInitializeMessageBuffers();
int TRKGetFreeBuffer(int*, MessageBuffer*);
void* TRKGetBuffer(int);
void TRKReleaseBuffer(int);
TRKResult TRKSetBufferPosition(MessageBuffer*, u32);
TRKResult TRKAppendBuffer_ui8(MessageBuffer*, u8*, int);

//msghndlr
BOOL GetTRKConnected();
u32 TRKDoConnect(MessageBuffer*);
u32 TRKDoDisconnect(MessageBuffer*);
u32 TRKDoReset(MessageBuffer*);
u32 TRKDoVersions(MessageBuffer*);
u32 TRKDoSupportMask(MessageBuffer*);
u32 TRKDoOverride(MessageBuffer*);
u32 TRKDoReadMemory(MessageBuffer*);
u32 TRKDoWriteMemory(MessageBuffer*);
u32 TRKDoReadRegisters(MessageBuffer*);
u32 TRKDoWriteRegisters(MessageBuffer*);
u32 TRKDoContinue(MessageBuffer*);
u32 TRKDoStep(MessageBuffer*);
u32 TRKDoStop(MessageBuffer*);
u32 TRKDoSetOption(MessageBuffer*);

//targimpl
u32 __TRK_get_MSR();
void TRKInterruptHandler();
void TRKSwapAndGo(void);
TRKResult TRKTargetInterrupt(TRKEvent*);
void TRKTargetAddStopInfo(int);
void TRKTargetAddExceptionInfo(int);
TRKResult TRKTargetSupportRequest();
BOOL TRKTargetStopped();
void TRKTargetSetStopped(uint);
void TRKTargetSetInputPendingPtr(void*);


void* TRK_memcpy(void* dst, const void* src, int n);
void* TRK_memset(void* dst, int val, int n);

int TRK_strlen(const char*);


#ifdef __cplusplus
};
#endif // ifdef __cplusplus

#endif
