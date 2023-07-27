#ifndef TRK_CIRCLE_BUFFER_H
#define TRK_CIRCLE_BUFFER_H

#include "PowerPC_EABI_Support/MetroTRK/dstypes.h"

typedef struct CircleBuffer {
    ui8* unk0;
    ui8* unk4;
    ui8* unk8;
    ui32 unkC;
    ui32 mBytesToRead;
    ui32 mBytesToWrite;
    uint mSection;
    ui32 unk1C;
} CircleBuffer;


ui32 CBGetBytesAvailableForRead(CircleBuffer* cb);
ui32 CBGetBytesAvailableForWrite(CircleBuffer* cb);
void CircleBufferInitialize(CircleBuffer* cb, ui8* buf, ui32 size);
void CircleBufferTerminate(CircleBuffer* cb);
int CircleBufferWriteBytes(CircleBuffer* cb, ui8* buf, ui32 size);
int CircleBufferReadBytes(CircleBuffer* cb, ui8* buf, ui32 size);

#endif
