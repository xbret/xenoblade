#include "PowerPC_EABI_Support/MetroTRK/serpoll.h"
#include "PowerPC_EABI_Support/MetroTRK/nubevent.h"
#include "PowerPC_EABI_Support/MetroTRK/msgbuf.h"

void* gTRKInputPendingPtr;

MessageBufferID TRKTestForPacket(){
    ui8 payloadBuf[0x880];
	ui8 packetBuf[0x40];
	int bufID;
	MessageBuffer* msg;
    MessageBufferID result;

    if(TRKPollUART() <= 0) return -1;
    
    result = TRK_GetFreeBuffer(&bufID, &msg);
    TRK_SetBufferPosition(msg, 0);
    
    if(TRKReadUARTN(packetBuf, sizeof(packetBuf)) == kUARTNoError){
        int readSize;
        TRKAppendBuffer_ui8(msg, packetBuf, sizeof(packetBuf));
        result = bufID;
        readSize = *(ui32*)(packetBuf) - sizeof(packetBuf);
        
        if(readSize > 0){
            if(TRKReadUARTN(payloadBuf, readSize) == kUARTNoError){
                TRKAppendBuffer_ui8(msg, payloadBuf, *(ui32*)(packetBuf));
            }else{
                TRK_ReleaseBuffer(result);
                result = -1;
            }
        }
    }else{
        TRK_ReleaseBuffer(result);
        result = -1;
    }
    
    return result;
}

void TRKGetInput(){
    MessageBufferID bufID = TRKTestForPacket();

    if(bufID != -1){
        TRKProcessInput(bufID);
    }
}

void TRKProcessInput(MessageBufferID bufID){
    NubEvent event;

    TRKConstructEvent(&event, 2);
    event.fMessageBufferID = bufID;
    TRKPostEvent(&event);
}

DSError TRKInitializeSerialHandler(){
    return kNoError;
}

DSError TRKTerminateSerialHandler(){
    return kNoError;
}
