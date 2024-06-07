#include "adx/sj/sj_crs.h"
#include "revolution/OS.h"

volatile int sjcrs_lvl;
BOOL sjcrs_msk; // maybe also volatile
extern volatile int sj_init_count;

void SJCRS_Init(void){
    sj_init_count++;
    if (sj_init_count == 1){
        sjcrs_lvl = 0;
    }
}

void SJCRS_Finish(void){
    sj_init_count--;
    if (sj_init_count == 0){
        sjcrs_lvl = 0;
    }
}

static volatile int sj_init_count;

void SJCRS_Lock(void){
    if (!sjcrs_lvl){
        sjcrs_msk = OSDisableInterrupts();
    }
    sjcrs_lvl++;
}

void SJCRS_Unlock(void){
    sjcrs_lvl--;
    if (!sjcrs_lvl){
        OSRestoreInterrupts(sjcrs_msk);
    }
}
