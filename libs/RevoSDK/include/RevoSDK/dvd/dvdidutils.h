#ifndef RVL_SDK_DVD_DVDIDUTILS_H
#define RVL_SDK_DVD_DVDIDUTILS_H
#include "types.h"
#ifdef __cplusplus
extern "C" {
#endif

typedef struct DVDDiskID {
    char game[4];    // at 0x0
    char company[2]; // at 0x4
    u8 disk;         // at 0x6
    u8 version;      // at 0x7
    char padding[32 - 0x8];
} DVDDiskID;

BOOL DVDCompareDiskID(const DVDDiskID* id1, const DVDDiskID* id2);

#ifdef __cplusplus
}
#endif
#endif
