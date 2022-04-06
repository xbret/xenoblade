#include "revolution/DVD.h"
#include "revolution/OS.h"
#include <ctype.h>

extern u32  __DVDLayoutFormat;

typedef struct FSTEntry {
	u32 isDirAndStringOff;
	u32 parentOrPosition;
	u32 nextEntryOrLength;
} FSTEntry;

static OSBootInfo* BootInfo;
static FSTEntry* FstStart;
static char* FstStringStart;
static u32 MaxEntryNum;
static u32 currentDirectory = 0;

OSThreadQueue __DVDThreadQueue;
BOOL __DVDLongFileNameFlag = TRUE;
#define entryIsDir(i)   (((FstStart[i].isDirAndStringOff & 0xFF000000) == 0) ? FALSE : TRUE)
#define stringOff(i)    (FstStart[i].isDirAndStringOff & 0x00FFFFFF)
#define parentDir(i)    (FstStart[i].parentOrPosition)
#define nextDir(i)      (FstStart[i].nextEntryOrLength)
#define filePosition(i) (FstStart[i].parentOrPosition)
#define fileLength(i)   (FstStart[i].nextEntryOrLength)

void __DVDFSInit(void) {
	BootInfo = (OSBootInfo*)OSPhysicalToCached(0);
	FstStart = (FSTEntry*)BootInfo->FSTLocation;

	if (FstStart != NULL) {
		MaxEntryNum = FstStart[0].nextEntryOrLength;
		FstStringStart = (char*)&FstStart[MaxEntryNum];
	}
}

static BOOL isSame(const char* path, const char* str) {
	while (*str != '\0') {
		if (tolower(*path++) != tolower(*str++)) {
			return FALSE;
		}
	}

	if ((*path == '/') || (*path == '\0')) {
		return TRUE;
	}

	return FALSE;
}


s32 DVDConvertPathToEntrynum(const char* pathPtr) {
	const char* ptr;
	char* stringPtr;
	BOOL isDir;
	u32 length, dirLookAt, i; 
	const char* origPathPtr = pathPtr, *extentionStart;
	BOOL illegal, extention;

	dirLookAt = currentDirectory;

	while (1) {
		if (*pathPtr == '\0') {
			return (s32)dirLookAt;
		} 
		else if (*pathPtr == '/') {
			dirLookAt = 0;
			pathPtr++;
			continue;
		}
		else if (*pathPtr == '.') {
			if (*(pathPtr + 1) == '.') {
				if (*(pathPtr + 2) == '/') {
					dirLookAt = parentDir(dirLookAt);
					pathPtr += 3;
					continue;
				}
				else if (*(pathPtr + 2) == '\0') {
					return (s32)parentDir(dirLookAt);
				}
			}
			else if (*(pathPtr + 1) == '/') {
				pathPtr += 2;
				continue;
			}
			else if (*(pathPtr + 1) == '\0') {
				return (s32)dirLookAt;
			}
		}

		if (__DVDLongFileNameFlag == 0) {
			extention = FALSE;
			illegal = FALSE;

			for (ptr = pathPtr; (*ptr != '\0') && (*ptr != '/'); ptr++) {
				if (*ptr == '.') {
					if ((ptr - pathPtr > 8) || (extention == TRUE)) {
						illegal = TRUE;
						break;
					}

					extention = TRUE;
					extentionStart = ptr + 1;

				} 
				else if (*ptr == ' ') {
					illegal = TRUE;
				}
			}

			if ((extention == TRUE) && (ptr - extentionStart > 3)) {
				illegal = TRUE;
			}

			if (illegal) {
			#line 443
				OSError("DVDConvertEntrynumToPath(possibly DVDOpen or DVDChangeDir or DVDOpenDir): specified directory or file (%s) doesn't match standard 8.3 format. This is a temporary restriction and will be removed soon\n", origPathPtr);
			}
		}
		else {
			for (ptr = pathPtr; (*ptr != '\0') && (*ptr != '/'); ptr++);
		}

		isDir = (*ptr == '\0') ? FALSE : TRUE;
		length = (u32)(ptr - pathPtr);

		ptr = pathPtr;

		for (i = dirLookAt + 1; i < nextDir(dirLookAt); i = entryIsDir(i) ? nextDir(i) : (i + 1)) {
			if ((entryIsDir(i) == FALSE) && (isDir == TRUE)) {
				continue;
			}

			stringPtr = FstStringStart + stringOff(i);

			if (isSame(ptr, stringPtr) == TRUE) {
				goto next_hier;
			}
		}

		return -1;

	  next_hier:
		if (!isDir) {
			return (s32)i;
		}

		dirLookAt = i;
		pathPtr += length + 1;
	}
}

//unused
BOOL DVDEntrynumIsDir(){
}

BOOL DVDFastOpen(s32 entrynum, DVDFileInfo* fileInfo) {
	if ((entrynum < 0) || (entrynum >= MaxEntryNum) || entryIsDir(entrynum)) {
		return FALSE;
	}

	fileInfo->startAddr = filePosition(entrynum) >> __DVDLayoutFormat;
	fileInfo->length = fileLength(entrynum);
	fileInfo->callback = (DVDCallback)NULL;
	fileInfo->cb.state = 0;
	return TRUE;
}

BOOL DVDOpen(const char* fileName, DVDFileInfo* fileInfo) {
	s32 entry;
	char currentDir[128];

	entry = DVDConvertPathToEntrynum(fileName);

	if (0 > entry) {
		DVDGetCurrentDir(currentDir, 128);
		OSReport("Warning: DVDOpen(): file '%s' was not found under %s.\n", fileName, currentDir);
		return FALSE;
	}

	if (entryIsDir(entry)) {
		return FALSE;
	}

	fileInfo->startAddr = filePosition(entry) >> __DVDLayoutFormat;
	fileInfo->length = fileLength(entry);
	fileInfo->callback = (DVDCallback)NULL;
	fileInfo->cb.state = 0;
	return TRUE;
}

BOOL DVDClose(DVDFileInfo* fileInfo) {
	DVDCancel(&fileInfo->cb);
	return TRUE;
}

static u32 myStrncpy(char* dest, char* src, u32 maxlen) {
	u32 i = maxlen;

	while((i > 0) && (*src != 0)) {
		*dest++ = *src++;
		i--;
	}

	return (maxlen - i);
}

static u32 entryToPath(u32 entry, char* path, u32 maxlen) {
	char* name;
	u32 loc;

	if (entry == 0) {
		return 0;
	}

	name = FstStringStart + stringOff(entry);
	loc = entryToPath(FstStart[entry].parentOrPosition, path, maxlen);

	if (loc == maxlen) {
		return loc;
	}

	*(path + loc++) = '/';
	loc += myStrncpy(path + loc, name, maxlen - loc);
	return loc;
}

static BOOL DVDConvertEntrynumToPath(s32 entrynum, char* path, u32 maxlen) {
	u32 loc = entryToPath((u32)entrynum, path, maxlen);

	if (loc == maxlen) {
		path[maxlen - 1] = '\0';
		return FALSE;
	}

	if (entryIsDir(entrynum)) {
		if (loc == maxlen - 1) {
			path[loc] = '\0';
			return FALSE;
		}

		path[loc++] = '/';
	}

	path[loc] = '\0';
	return TRUE;
}

//unused
BOOL DVDGetCurrentDir(char* path, u32 maxlen) {
	return DVDConvertEntrynumToPath((s32)currentDirectory, path, maxlen);
}

//unused
void DVDChangeDir(){
}

static void cbForReadAsync(s32 result, DVDCommandBlock* block);

BOOL DVDReadAsyncPrio(DVDFileInfo* fileInfo, void* addr, s32 length, s32 offset, DVDCallback callback, s32 prio) {
	if (!((0 <= offset) && (offset <= fileInfo->length))) {
	#line 823
		OSError("DVDReadAsync(): specified area is out of the file  ");
	}

	if (!((0 <= offset + length) && (offset + length < fileInfo->length + 32))) {
	#line 829
		OSError("DVDReadAsync(): specified area is out of the file  ");
	}

	fileInfo->callback = callback;
	DVDReadAbsAsyncPrio(&fileInfo->cb, addr, length, (u32)(fileInfo->startAddr + (offset >> 2)), cbForReadAsync, prio);
	return TRUE;
}

static void cbForReadAsync(s32 result, DVDCommandBlock* block) {
	DVDFileInfo* fileInfo = (DVDFileInfo*)((char*)block - offsetof(DVDFileInfo, cb));

	if (fileInfo->callback) {
		(fileInfo->callback)(result, fileInfo);
	}
}

static void cbForReadSync(s32 result, DVDCommandBlock* block);

s32 DVDReadPrio(DVDFileInfo* fileInfo, void* addr, s32 length, s32 offset, s32 prio) {
	BOOL result, enabled;
	DVDCommandBlock* block;
	s32 state, retVal;

	if (!((0 <= offset) && (offset <= fileInfo->length))) {
	#line 893
		OSError("DVDRead(): specified area is out of the file  ");
	}

	if (!((0 <= offset + length) && (offset + length < fileInfo->length + 32))) {
	#line 899
		 OSError("DVDRead(): specified area is out of the file  ");
	}

	block = &fileInfo->cb;
	result = DVDReadAbsAsyncPrio(block, addr, length, (u32)(fileInfo->startAddr + (offset >> 2)), cbForReadSync, prio);
	
	if (result == FALSE) {
		return -1;
	}

	enabled = OSDisableInterrupts();

	for (;;) {
		state = ((DVDCommandBlock*)block)->state;

		if (state == 0) {
			retVal = (s32)block->transferredSize;
			break;
		}

		if (state == -1) {
			retVal = -1;
			break;
		}

		if (state == 10) {
			retVal = -3;
			break;
		}

		OSSleepThread(&__DVDThreadQueue);
	}

	OSRestoreInterrupts(enabled);
	return retVal;
}

static void cbForReadSync(s32 result, DVDCommandBlock* block) {
	OSWakeupThread(&__DVDThreadQueue);
}

//unused
void DVDSeekAsyncPrio(){
}

//unused
void cbForSeekAsync(){
}

//unused
void DVDSeekPrio(){
}

//unused
void cbForSeekSync(){
}

//unused
void DVDGetFileInfoStatus(){
}

//unused
void DVDFastOpenDir(){
}

//unused
BOOL DVDOpenDir(const char* dirName, DVDDir* dir) {
}

//unused
BOOL DVDReadDir(DVDDir* dir, DVDDirEntry* dirent) {
}

BOOL DVDCloseDir(DVDDir* dir) {
	return TRUE;
}

//unused
void DVDRewindDir(){
}

//unused
void DVDGetFSTLocation(){
}

u32 DVDGetTransferredSize(DVDCommandBlock* block){
	s32 size;

	switch(block->state){
		case DVD_STATE_FATAL_ERROR:
		case DVD_STATE_END:
		case DVD_STATE_COVER_CLOSED:
		case DVD_STATE_NO_DISK:
		case DVD_STATE_COVER_OPEN:
		case DVD_STATE_WRONG_DISK:
		case DVD_STATE_MOTOR_STOPPED:
		case DVD_STATE_CANCELED:
		case DVD_STATE_RETRY:
		case DVD_STATE_12:
		size = block->transferredSize;
		break;
		case DVD_STATE_WAITING:
		size = 0;
		break;
		case DVD_STATE_BUSY:
		size = block->transferredSize;
		break;
		default:
		break;
	}

	return size;

}
