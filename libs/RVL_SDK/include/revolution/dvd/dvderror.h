#ifndef RVL_SDK_DVDERROR_H
#define RVL_SDK_DVDERROR_H
#include "types.h"
#ifdef __cplusplus
extern "C" {
#endif

typedef struct DVDCommandInfo {
    u32 command;
    u32 offset;
    u32 length;
    u32 intType;
    u32 tick;
} DVDCommandInfo;

typedef struct DVDErrorInfo {
    char gameName[4];
    u8 diskNumber;
    u8 gameVersion;
    u8 reserved0[2];
    u32 error;
    u32 dateTime;
    u32 status;
    u32 status2;
    u32 nextOffset;
    DVDCommandInfo lastCommand[5];
} DVDErrorInfo;

#ifdef __cplusplus
}
#endif
#endif
