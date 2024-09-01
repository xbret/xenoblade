#ifndef AX_DSPCODE_H
#define AX_DSPCODE_H

#include "types.h"
#ifdef __cplusplus
extern "C" {
#endif

extern u16 axDspInitVector;
extern u16 axDspResumeVector;

extern u8 axDspSlave[];
extern u16 axDspSlaveLength;

#ifdef __cplusplus
}
#endif
#endif
