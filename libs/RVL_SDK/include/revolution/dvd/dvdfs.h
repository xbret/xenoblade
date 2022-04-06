#ifndef RVL_SDK_DVD_FS_H
#define RVL_SDK_DVD_FS_H
#include "types.h"
#ifdef __cplusplus
extern "C" {
#endif

//Forward declarations
typedef struct DVDFileInfo;

typedef struct DVDDir{
    u32 entryNum;
    u32 location;
    u32 next;
} DVDDir;

typedef struct DVDDirEntry{
    u32 entryNum;
    BOOL isDir;
    char* name;
} DVDDirEntry;

typedef void (*DVDCallback)(s32 result, struct DVDFileInfo* fileInfo);

typedef struct DVDFileInfo {
    DVDCommandBlock cb;
    u32 startAddr;
    u32 length;
    DVDCallback callback;
} DVDFileInfo;

extern BOOL __DVDLongFileNameFlag;

s32 DVDConvertPathToEntrynum(const char* pathPtr);
BOOL DVDFastOpen(s32 entrynum, DVDFileInfo* fileInfo);
BOOL DVDClose(DVDFileInfo* fileInfo);
BOOL DVDGetCurrentDir(char* path, u32 maxlen);
BOOL DVDReadAsyncPrio(DVDFileInfo* fileInfo, void* addr, s32 length, s32 offset, DVDCallback callback, s32 prio);
s32 DVDReadPrio(DVDFileInfo* fileInfo, void* addr, s32 length, s32 offset, s32 prio);
u32 DVDGetTransferredSize(DVDCommandBlock* block);


#ifdef __cplusplus
}
#endif
#endif
