#include <revolution/enc/encutility.h>
#include <revolution/OS.h>
#include <string.h>

const char* __ENCVersion = "<< RVL_SDK - ENC 	release build: Feb 27 2009 10:05:42 (0x4302_145) >>";
static BOOL encRegistered = FALSE;

static void ENCiRegisterVersion(){
    if(!encRegistered){
        OSRegisterVersion(__ENCVersion);
        encRegistered = TRUE;
    }
}

ENCResult ENCiCheckParameters(BOOL destNotNull, u32* destLength, s32* newDestLength, BOOL* destParamsValid,
BOOL srcNotNull, u32* srcLength, s32* newSrcLength, BOOL* srcParamsValid){
    ENCResult result = ENC_OK;

    //Register ENC if it hasn't been already. This feels like a silly design choice, but
    //since it is an optional library there isn't really an easy alternative.
    ENCiRegisterVersion();

    if(srcLength != NULL){
        *newSrcLength = *srcLength;
    }else{
        *newSrcLength = -1;
    }

    if(destLength != NULL){
        *newDestLength = *destLength;
    }else{
        *newDestLength = -1;
        result = ENC_ERR_INVALID_PARAM;
    }

    if(!srcNotNull){
        result = ENC_ERR_INVALID_PARAM;
    }

    if(!destNotNull){
        *destParamsValid = FALSE;
        *newDestLength = -1;
    }

    //Why is source stuff handled differently than destination stuff???
    if(*newSrcLength < 0){
        *srcParamsValid = FALSE;
    }

    if(result != ENC_OK){
        *destLength = 0;
        *srcLength = 0;
    }

    return result;
}

//Returns size of break character
u32 ENCiCheckBreakType(u8 char1, u8 char2){
    if(char1 == '\n'){ //LF
        return 1;
    }else if(char1 == '\r'){
        return (char2 == '\n') ? 2 : 1; //CRLF if second character is LF, otherwise CR
    }

    return 0; //Not a break character
}

//Returns size of break character
u32 ENCiWriteBreakType(u8* dest, u32 size, ENCBreakType breakType, BOOL r6){
    u8* ptr;

    if(r6 != 0){
        memset(dest, 0, size - 1);

        switch(breakType){
        case ENC_BR_CRLF:
            //CRLF
            ptr = dest + size;
            ptr[-1] = '\r';
            memset(ptr, 0, size - 1);
            ptr = dest + (size * 2);
            ptr[-1] = '\n';
            return 2;
        case ENC_BR_CR:
            //CR
            ptr = dest + size;
            ptr[-1] = '\r';
            return 1;
        case ENC_BR_LF:
            //LF
            ptr = dest + size;
            ptr[-1] = '\n';
            return 1;
        }
    }else{
        switch(breakType){
        case ENC_BR_CRLF: return 2;
        case ENC_BR_CR: return 1;
        case ENC_BR_LF: return 1;
        }
    }

    return 0;
}
