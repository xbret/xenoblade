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

ENCResult ENCiCheckParameters(u32 r3, u32* r4, u32* r5, u32* r6, u32 r7,
u32* r8, int* r9, u32* r10){
    ENCResult result = ENC_RESULT_OK;

    //Register ENC if it hasn't been already. This feels like a silly design choice, but
    //since it is an optional library there isn't really an easy alternative.
    ENCiRegisterVersion();

    if(r8 != NULL){
        *r9 = *r8;
    }else{
        *r9 = -1;
    }

    if(r4 != NULL){
        *r5 = *r4;
    }else{
        *r5 = -1;
        result = ENC_RESULT_3;
    }

    if(r7 == 0){
        result = ENC_RESULT_3;
    }

    if(r3 == 0){
        *r6 = 0;
        *r5 = -1;
    }

    if(*r9 < 0){
        *r10 = 0;
    }

    if(result != ENC_RESULT_OK){
        *r4 = 0;
        *r8 = 0;
    }

    return result;
}

ENCBreakType ENCiCheckBreakType(u8 char1, u8 char2){
    if(char1 == '\n'){ //LF
        return 1;
    }
    else if(char1 == '\r'){ //CR
        return (char2 == '\n') + 1; //CRLF if second character is LF
    }

    return 0; //Not a break character
}

ENCBreakType ENCiWriteBreakType(u8* dest, u32 size, ENCBreakType breakType, BOOL r6){
    u8* ptr;

    if(r6 != 0){
        memset(dest, 0, size - 1);

        switch(breakType){
        //CRLF?
        case ENC_BREAK_TYPE_LF:
            ptr = dest + size;
            ptr[-1] = '\r';
            memset(ptr, 0, size - 1);
            ptr = dest + (size * 2);
            ptr[-1] = '\n';
            return ENC_BREAK_TYPE_CR;
        case ENC_BREAK_TYPE_CR:
            ptr = dest + size;
            ptr[-1] = '\r';
            return ENC_BREAK_TYPE_LF;
        case ENC_BREAK_TYPE_CRLF:
            ptr = dest + size;
            ptr[-1] = '\n';
            return ENC_BREAK_TYPE_LF;
        }
    }else{
        switch(breakType){
        case ENC_BREAK_TYPE_LF: return ENC_BREAK_TYPE_CR;
        case ENC_BREAK_TYPE_CR: return ENC_BREAK_TYPE_LF;
        case ENC_BREAK_TYPE_CRLF: return ENC_BREAK_TYPE_LF;
        }
    }

    return ENC_BREAK_TYPE_NONE;
}
