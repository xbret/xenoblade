#ifndef _METROTRK_TRK_H
#define _METROTRK_TRK_H

#include "types.h"
#include "revolution/DB.h"

#ifdef __cplusplus
extern "C" {
#endif // ifdef __cplusplus

/* TRK */

#define TRK_DISPATCH_CMD_CONNECT        1 /* Connect to the console */
#define TRK_DISPATCH_CMD_DISCONNECT     2 /* Disconnect from the console */
#define TRK_DISPATCH_CMD_RESET          3 /* Reset the debugger */
#define TRK_DISPATCH_CMD_GETVERSION     4 /* Get debugger version */
#define TRK_DISPATCH_CMD_GETSUPPORTMASK 5 /* Get Support Mask */
#define TRK_DISPATCH_CMD_OVERRIDE       7 /* Override? */
#define TRK_DISPATCH_CMD_READMEM        16 /* Reading from memory */
#define TRK_DISPATCH_CMD_WRITEMEM       17 /* Writing to memory */
#define TRK_DISPATCH_CMD_READREGS       18 /* Read a register value */
#define TRK_DISPATCH_CMD_WRITEREGS      19 /* Set a register */
#define TRK_DISPATCH_CMD_SETOPTION      23 /* Set an option? */
#define TRK_DISPATCH_CMD_CONTINUE       24 /* Continue debugging */
#define TRK_DISPATCH_CMD_STEP           25 /* Step through an instruction */
#define TRK_DISPATCH_CMD_STOP           26 /* Stop the debugger */

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
	u32 _00;
	u32 _04;
	u32 _08;
	u32 _0C;
	u32 _10;
	u32 _14;
	u32 _18;
	u32 _1C;
	u32 _20;
	u32 _24;
	u32 _28;
	u32 _2C;
	u32 _30;
	u32 _34;
	u32 _38;
	u32 _3C;
	u32 _40;
	u32 _44;
	u32 _48;
	u32 _4C;
	u32 _50;
	u32 _54;
	u32 _58;
	u32 _5C;
	u32 _60;
	u32 _64;
	u32 _68;
	u32 _6C;
	u32 _70;
	u32 _74;
	u32 _78;
	u32 _7C;
	u32 _80;
	u32 _84;
	u32 _88;
	u32 _8C;
	u32 _90;
	u32 _94;
	BOOL mIsStopped;
	u32 _9C;
	u32 _A0;
	u32 _A4;
	u32 _A8;
	u32 _AC;
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

typedef struct TRKBuffer {
	u8 _00[4];
	u32 _04;
	s32 _08;
	u32 _0C;
	u32 _10;
	u8 mBuffer[0x87C]; /* _10 */
} TRKBuffer;

typedef struct TRKBufferUnk{
    int unk0;
    int unk4;
    u8 unk8[0x40];
    u8 unk48[0x880];
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

typedef enum { TRKSuccess = 0, TRKError100 = 0x100, TRKError301 = 0x301, TRKError302 = 0x302 } TRKResult;

extern BOOL gTRKBigEndian;

BOOL GetTRKConnected();
u32 TRKDoConnect(TRKBuffer*);
u32 TRKDoDisconnect(TRKBuffer*);
u32 TRKDoReset(TRKBuffer*);
u32 TRKDoVersions(TRKBuffer*);
u32 TRKDoSupportMask(TRKBuffer*);
u32 TRKDoOverride(TRKBuffer*);
u32 TRKDoReadMemory(TRKBuffer*);
u32 TRKDoWriteMemory(TRKBuffer*);
u32 TRKDoReadRegisters(TRKBuffer*);
u32 TRKDoWriteRegisters(TRKBuffer*);
u32 TRKDoSetOption(TRKBuffer*);
u32 TRKDoContinue(TRKBuffer*);
u32 TRKDoStep(TRKBuffer*);
u32 TRKDoStop(TRKBuffer*);

void InitMetroTRK(void);
void InitMetroTRK_BBA(void);
void EnableMetroTRKInterrupts(void);

void TRKDestructEvent(TRKEvent*);
TRKResult TRKDispatchMessage(TRKBuffer*);
void* TRKGetBuffer(int);
void TRKReleaseBuffer(int);
void TRKGetInput();
BOOL TRKGetNextEvent(TRKEvent*);

TRKResult TRKTargetContinue(void);
TRKResult TRKTargetInterrupt(TRKEvent*);
BOOL TRKTargetStopped();
void TRKTargetSetStopped(uint);
TRKResult TRKTargetSupportRequest();

TRKResult TRKAppendBuffer_ui8(TRKBuffer*, u8*, int);
TRKResult TRKSetBufferPosition(TRKBuffer*, u32);

TRKResult TRKMessageSend(TRK_Msg*);
void TRKSwapAndGo(void);
TRKResult TRKWriteUARTN(const void* bytes, u32 length);
TRKResult TRKInitializeNub(void);
TRKResult TRKTerminateNub(void);
void TRKNubWelcome(void);
void TRKNubMainLoop(void);

TRKResult TRKInitializeMutex(void*);
TRKResult TRKAcquireMutex(void*);
TRKResult TRKReleaseMutex(void*);

TRKResult TRKInitializeEventQueue();
TRKResult TRKInitializeMessageBuffers();
TRKResult TRKInitializeDispatcher();
TRKResult InitializeProgramEndTrap();
TRKResult TRKInitializeSerialHandler();
TRKResult TRKInitializeTarget();

void TRKProcessInput(int bufferIndex);

/* EXI2 */
void UnreserveEXI2Port(void);
void ReserveEXI2Port(void);

/* MW */
void MWTRACE(u8, char*, ...);

/* UART */
typedef int UARTError;

enum {
	kUARTNoError = 0,
	kUARTUnknownBaudRate,
	kUARTConfigurationError,
	kUARTBufferOverflow, /* specified buffer was too small */
	kUARTNoData          /* no data available from polling */
};

typedef enum {
	kBaudHWSet  = -1,  /* use HW settings such as DIP switches */
	kBaud300    = 300, /* valid baud rates */
	kBaud600    = 600,
	kBaud1200   = 1200,
	kBaud1800   = 1800,
	kBaud2000   = 2000,
	kBaud2400   = 2400,
	kBaud3600   = 3600,
	kBaud4800   = 4800,
	kBaud7200   = 7200,
	kBaud9600   = 9600,
	kBaud19200  = 19200,
	kBaud38400  = 38400,
	kBaud57600  = 57600,
	kBaud115200 = 115200,
	kBaud230400 = 230400
} UARTBaudRate;

UARTError InitializeUART(UARTBaudRate baudRate);
TRKResult TRKInitializeIntDrivenUART(unknown, unknown, void*);
int TRKPollUART();
int TRKReadUARTN(u8*, u32);
void usr_put_initialize();
void TRKTargetSetInputPendingPtr(void*);
extern void* gTRKInputPendingPtr;

void* TRK_memcpy(void* dst, const void* src, int n);
void* TRK_memset(void* dst, int val, int n);

int TRK_strlen(const char*);

void TRKSaveExtended1Block();
void TRKRestoreExtended1Block();

void MWInitializeCriticalSection(uint* section);
void MWEnterCriticalSection(uint* section);
void MWExitCriticalSection(uint* section);
void MWTerminateCriticalSection(uint* section);

u32 TRKAccessFile(u32, u32, u32*, char*);

#ifdef __cplusplus
};
#endif // ifdef __cplusplus

#endif
