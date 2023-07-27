#include "PowerPC_EABI_Support/MetroTRK/dispatch.h"

DSError TRK_DispatchMessage(MessageBuffer* buffer) {
    DSError result = kDispatchError;
    MessageBuffer* temp = buffer;
    
    TRK_SetBufferPosition(buffer, 0);
    
    ui8 command = temp->fData[4];
    
    switch(command){
        case kDSConnect:
            result = TRK_DoConnect(temp);
        	break;
        case kDSDisconnect:
            result = TRKDoDisconnect(temp);
        	break;
        case kDSReset:
            result = TRKDoReset(temp);
        	break;
        case kDSOverride:
            result = TRKDoOverride(temp);
        	break;
        case kDSReadMemory:
            result = TRKDoReadMemory(temp);
        	break;
        case kDSWriteMemory:
            result = TRKDoWriteMemory(temp);
        	break;
        case kDSReadRegisters:
            result = TRKDoReadRegisters(temp);
        	break;
        case kDSWriteRegisters:
            result = TRKDoWriteRegisters(temp);
        	break;
        case kDSContinue:
            result = TRKDoContinue(temp);
        	break;
        case kDSStep:
            result = TRKDoStep(temp);
        	break;
        case kDSStop:
            result = TRKDoStop(temp);
        	break;
        case kDSSetOption:
            result = TRKDoSetOption(temp);
        	break;
    }
    return result;
}
