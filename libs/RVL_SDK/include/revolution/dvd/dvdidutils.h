#ifndef RVL_SDK_DVD_DVDIDUTILS_H
#define RVL_SDK_DVD_DVDIDUTILS_H
#include "types.h"
#ifdef __cplusplus
extern "C" {
#endif

typedef struct DVDDiskID {
    char gameName[4];    // at 0x0
    char company[2];     // at 0x4
    u8 diskNumber;       // at 0x6
    u8 gameVersion;      // at 0x7
	u8 streaming;        // at 0x8
	u8 streamingBufSize; // at 0x9
    char padding[0x20 - 0xA];
} DVDDiskID;

BOOL DVDCompareDiskID(const DVDDiskID* id1, const DVDDiskID* id2);

#ifdef __cplusplus
}
#endif
#endif
