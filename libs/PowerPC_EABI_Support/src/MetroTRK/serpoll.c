#include "PowerPC_EABI_Support/MetroTRK/serpoll.h"
#include "PowerPC_EABI_Support/MetroTRK/nubevent.h"

typedef struct TRKBufferUnk{
    MessageBuffer* unk0;
    int unk4;
    u8 unk8[0x40];
    u8 mBuffer[0x880]; //0x48
} TRKBufferUnk;

void* gTRKInputPendingPtr;

int TRKTestForPacket(){
    TRKBufferUnk buffer;
    int freeBuffer; //r31

    if(TRKPollUART() <= 0) return -1;

    freeBuffer = TRKGetFreeBuffer(&buffer.unk4, (MessageBuffer*)&buffer.unk0);
    TRKSetBufferPosition(buffer.unk0, 0);
    
    if(!TRKReadUARTN(buffer.unk8, sizeof(buffer.unk8))){
        TRKAppendBuffer_ui8(buffer.unk0, buffer.unk8, sizeof(buffer.unk8));
        freeBuffer = buffer.unk4;
        int r4 = *(u32*)(buffer.unk8) - sizeof(buffer.unk8);
        
        if(r4 > 0){
            if(!TRKReadUARTN(buffer.mBuffer, r4)){
                TRKAppendBuffer_ui8(buffer.unk0, buffer.mBuffer, *(u32*)(buffer.unk8));
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

DSError TRKInitializeSerialHandler(){
    return kNoError;
}

DSError TRKTerminateSerialHandler(){
    return kNoError;
}
