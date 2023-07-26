#ifndef _TRK_MSGCMD_H
#define _TRK_MSGCMD_H

#ifdef __cplusplus
extern "C"{
#endif

typedef enum DSFileHandle {
	kDSStdin  = 0x00,
	kDSStdout = 0x01,
	kDSStderr = 0x02
} DSFileHandle;

typedef enum {
    kDSIONoError = 0x00,
    kDSIOError = 0x01,
    kDSIOEOF = 0x02
} DSIOResult;

typedef enum {
    kDSPing = 0x00,
	kDSConnect = 0x01,
	kDSDisconnect = 0x02,
	kDSReset = 0x03,
	kDSVersions = 0x04,
	kDSSupportMask = 0x05,
	kDSOverride = 0x07,
	kDSReadMemory = 0x10,
	kDSWriteMemory = 0x11,
	kDSReadRegisters = 0x12,
	kDSWriteRegisters = 0x13,
	kDSSetOption = 0x17,
	kDSContinue = 0x18,
	kDSStep = 0x19,
	kDSStop = 0x1a,
	kDSReplyACK = 0x80,
	kDSReplyNAK = 0xFF,
	kDSNotifyStopped = 0x90,
	kDSNotifyException = 0x91,
	kDSWriteFile = 0xD0,
	kDSReadFile = 0xD1,
	kDSOpenFile = 0xD2,
	kDSCloseFile = 0xD3,
	kDSPositionFile = 0xD4
} MessageCommandID;

#define DS_MIN_REPLY_LENGTH 0x40

//Memory commands options
#define DS_MSG_MEMORY_SEGMENTED	0x01		/* non-flat addr space */
#define DS_MSG_MEMORY_EXTENDED	0x02		/* > 32-bit data addr */
#define DS_MSG_MEMORY_PROTECTED	0x04		/* non-user memory */
#define DS_MSG_MEMORY_USERVIEW	0x08		/* breakpoints are invisible */


#define DS_MSG_MEMORY_SPACE_PROGRAM	0x00
#define DS_MSG_MEMORY_SPACE_DATA	0x40
#define DS_MSG_MEMORY_SPACE_IO		0x80

//Others

#define DS_MSG_MEMORY_SPACE_MASK	0xc0

#define DS_MAXREADWRITELENGTH	0x0800	/* 2K data portion */
#define DS_MAXMESSAGESIZE (DS_MAXREADWRITELENGTH + 0x80)
											/* max size of all message including cmd hdr */
#define MAXMESSAGESIZE	DS_MAXMESSAGESIZE

//Register commands options
typedef enum {
	kDSRegistersDefault = 0x0,
	kDSRegistersFP = 0x1,
	kDSRegistersExtended1 = 0x2,
	kDSRegistersExtended2 = 0x3
} DSMessageRegisterOptions;

//Step command options
typedef enum {
	kDSStepIntoCount = 0x00,			/* Exec count instructions & stop */
	kDSStepIntoRange = 0x01,			/* Exec until PC is out of specified range */
	kDSStepOverCount = 0x10,			/* Step over 1*count instructions & stop */
	kDSStepOverRange = 0x11				/* Step over until PC is out of specified range */
} DSMessageStepOptions;

//Reply errors
typedef enum {
	kDSReplyNoError = 0x00,
	kDSReplyError = 0x01,
	kDSReplyPacketSizeError = 0x02,
	kDSReplyCWDSError = 0x03,
	kDSReplyEscapeError = 0x04,
	kDSReplyBadFCS = 0x05,
	kDSReplyOverflow = 0x06,
	kDSReplySequenceMissing = 0x07,
	kDSReplyUnsupportedCommandError = 0x10,
	kDSReplyParameterError = 0x11,
	kDSReplyUnsupportedOptionError = 0x12,
	kDSReplyInvalidMemoryRange = 0x13,
	kDSReplyInvalidRegisterRange = 0x14,
	kDSReplyCWDSException = 0x15,
	kDSReplyNotStopped = 0x16,
	kDSReplyBreakpointsFull = 0x17,
	kDSReplyBreakpointConflict = 0x18,
	kDSReplyOsError = 0x20,
	kDSReplyInvalidProcessId = 0x21,
	kDSReplyInvalidThreadId = 0x22,
	kDSDebugSecurityError = 0x23
} DSReplyError;


#ifdef __cplusplus
}
#endif
#endif
