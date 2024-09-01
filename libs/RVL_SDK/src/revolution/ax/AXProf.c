#include "revolution/ax/AXProf.h"

static AXPROFILE* __AXProfile;
static u32 __AXMaxProfiles;
static u32 __AXCurrentProfile;
static BOOL __AXProfileInitialized;

AXPROFILE* __AXGetCurrentProfile(void) {
    if (__AXProfileInitialized) {
        AXPROFILE* prof = &__AXProfile[__AXCurrentProfile];

        __AXCurrentProfile++;
        __AXCurrentProfile %= __AXMaxProfiles;

        return prof;
    }

    return NULL;
}

//unused
void AXInitProfile(){
}

//unused
void AXGetProfile(){
}
