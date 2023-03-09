#ifndef RVL_SDK_FS_H
#define RVL_SDK_FS_H
#include "RevoSDK/IPC.h"
#include "types.h"
#ifdef __cplusplus
extern "C" {
#endif

#define FS_MAX_PATH 64

typedef void (*FSAsyncCallback)(s32, void*);

typedef struct FSStats {
    char UNK_0x0[0x1C];
} FSStats;

// Could be more fields, but not larger than 32B
typedef struct FSFileStats {
    u32 length;   // at 0x0
    u32 position; // at 0x4
} FSFileStats ALIGN(32);

typedef struct FSFileAttr {
    u32 ownerId; // at 0x0
    u16 groupId; // at 0x4
    u8 attr;     // at 0x6
    u8 perm;     // at 0x7
} FSFileAttr;

IPCResult ISFS_OpenLib(void);
IPCResult ISFS_CreateDir(const char*, u32, u32, u32, u32);
IPCResult ISFS_CreateDirAsync(const char*, u32, u32, u32, u32, FSAsyncCallback,
                              void*);
IPCResult ISFS_ReadDir(const char*, char*, u32*);
IPCResult ISFS_ReadDirAsync(const char*, char*, u32*, FSAsyncCallback, void*);
IPCResult ISFS_GetAttr(const char*, u32*, u16*, u32*, u32*, u32*, u32*);
IPCResult ISFS_GetAttrAsync(const char*, u32*, u16*, u32*, u32*, u32*, u32*,
                            FSAsyncCallback, void*);
IPCResult ISFS_Delete(const char*);
IPCResult ISFS_DeleteAsync(const char*, FSAsyncCallback, void*);
IPCResult ISFS_Rename(const char*, const char*);
IPCResult ISFS_RenameAsync(const char*, const char*, FSAsyncCallback, void*);
IPCResult ISFS_GetUsage(const char*, s32*, s32*);
IPCResult ISFS_CreateFile(const char*, u32, u32, u32, u32);
IPCResult ISFS_CreateFileAsync(const char*, u32, u32, u32, u32, FSAsyncCallback,
                               void*);
IPCResult ISFS_Open(const char*, IPCOpenMode);
IPCResult ISFS_OpenAsync(const char*, IPCOpenMode, FSAsyncCallback, void*);
IPCResult ISFS_GetFileStats(s32, FSFileStats*);
IPCResult ISFS_GetFileStatsAsync(s32, FSFileStats*, FSAsyncCallback, void*);
IPCResult ISFS_Seek(s32, s32, IPCSeekMode);
IPCResult ISFS_SeekAsync(s32, s32, IPCSeekMode, FSAsyncCallback, void*);
IPCResult ISFS_Read(s32, void*, s32);
IPCResult ISFS_ReadAsync(s32, void*, s32, FSAsyncCallback, void*);
IPCResult ISFS_Write(s32, const void*, s32);
IPCResult ISFS_WriteAsync(s32, const void*, s32, FSAsyncCallback, void*);
IPCResult ISFS_Close(s32);
IPCResult ISFS_CloseAsync(s32, FSAsyncCallback, void*);
IPCResult ISFS_ShutdownAsync(FSAsyncCallback, void*);

#ifdef __cplusplus
}
#endif
#endif