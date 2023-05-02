#include "revolution/AX.h"
#include "revolution/OS.h"

static BOOL __init = FALSE;
const char* __AXVersion = "<< RVL_SDK - AX \trelease build: Feb 27 2009 10:01:36 (0x4302_145) >>";

void AXInit(){
    if(!__init){
        OSRegisterVersion(__AXVersion);
        __AXAllocInit();
        __AXVPBInit();
        __AXSPBInit();
        __AXAuxInit();
        __AXClInit();
        __AXOutInit(0);
        __init = TRUE;
    }
}

//unused
void AXInitEx(){
}

//unused
void AXInitSpecifyMem(){
}

//unused
void AXInitExSpecifyMem(){
}

void AXQuit(){
    if(__init){
        __AXOutQuit();
        __AXAllocQuit();
        __AXVPBQuit();
        __AXSPBQuit();
        __AXAuxQuit();
        __AXClQuit();
        __init = FALSE;
    }
}

BOOL AXIsInit(){
    return __init;
}
