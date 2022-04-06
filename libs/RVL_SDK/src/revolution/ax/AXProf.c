#include "revolution/ax/AXProf.h"

static u32 __AXProfile;
static u32 __AXMaxProfiles;
static u32 __AXCurrentProfile;
static BOOL __AXProfileInitialized;

u32 __AXGetCurrentProfile(){
    if(__AXProfileInitialized){
        u32 r5 = __AXProfile;
        r5 += __AXCurrentProfile*0x38;
        __AXCurrentProfile = (__AXCurrentProfile + 1) % __AXMaxProfiles;
        return r5;
    }
    return 0;
}

//unused
void AXInitProfile(){
}

//unused
void AXGetProfile(){
}
