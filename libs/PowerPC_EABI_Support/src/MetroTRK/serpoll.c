#include "PowerPC_EABI_Support/MetroTRK/trk.h"
#include "types.h"

void* gTRKInputPendingPtr;

int TRKTestForPacket(){
    TRKBufferUnk buffer;
    int freeBuffer; //r31

    if(TRKPollUART() <= 0) return -1;

    freeBuffer = TRKGetFreeBuffer(&buffer.unk4, &buffer.unk0);
    TRKSetBufferPosition(*(TRKBuffer**)&buffer, 0);
    
    if(!TRKReadUARTN(buffer.unk8, sizeof(buffer.unk8))){
        TRKAppendBuffer_ui8(*(TRKBuffer**)&buffer, buffer.unk8, sizeof(buffer.unk8));
        freeBuffer = buffer.unk4;
        int r4 = *(u32*)(buffer.unk8) - sizeof(buffer.unk8);
        
        if(r4 > 0){
            if(!TRKReadUARTN(buffer.unk48, r4)){
                TRKAppendBuffer_ui8(*(TRKBuffer**)&buffer, buffer.unk48, *(u32*)(buffer.unk8));
            }else{
                TRKReleaseBuffer(freeBuffer);
                freeBuffer = -1;
            }
        }
    }else{
        TRKReleaseBuffer(freeBuffer);
        freeBuffer = -1;
    }
    
    return freeBuffer;
}

void TRKGetInput(){
    int bufferIndex = TRKTestForPacket();

    if(bufferIndex != -1){
        TRKProcessInput(bufferIndex);
    }
}

void TRKProcessInput(int bufferIndex){
    TRKEvent event;

    TRKConstructEvent(&event, 2);
    event.mBufferIndex = bufferIndex;
    TRKPostEvent(&event);
}

TRKResult TRKInitializeSerialHandler(){
    return TRKSuccess;
}

TRKResult TRKTerminateSerialHandler(){
    return TRKSuccess;
}
