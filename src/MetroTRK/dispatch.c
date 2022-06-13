#include "MetroTRK/dispatch.h"

u32 TRKDispatchMessage(MessageBuffer* messageBuffer) {
    u32 result = 0x500;
    MessageBuffer* temp = messageBuffer;
    
    TRKSetBufferPosition(messageBuffer, 0);
    
    u8 command = temp->commandId;
    
    switch(command){
        case 1:
            result = TRKDoConnect(temp);
        	break;
        case 2:
            result = TRKDoDisconnect(temp);
        	break;
        case 3:
            result = TRKDoReset(temp);
        	break;
        case 7:
            result = TRKDoOverride(temp);
        	break;
        case 16:
            result = TRKDoReadMemory(temp);
        	break;
        case 17:
            result = TRKDoWriteMemory(temp);
        	break;
        case 18:
            result = TRKDoReadRegisters(temp);
        	break;
        case 19:
            result = TRKDoWriteRegisters(temp);
        	break;
        case 24:
            result = TRKDoContinue(temp);
        	break;
        case 25:
            result = TRKDoStep(temp);
        	break;
        case 26:
            result = TRKDoStop(temp);
        	break;
        case 23:
            result = TRKDoSetOption(temp);
        	break;
    }
    return result;
}
