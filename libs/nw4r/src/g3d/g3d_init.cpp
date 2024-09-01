#include "g3d_init.h"
#include "g3d_state.h"
#include "ut_LockedCache.h"
#include "build_version.h"
#include <revolution/OS/OS.h>
#include <revolution/VI/vi.h>
#include <revolution/GX.h>

namespace
{
    const char * NW4R_G3D_Version_ = NW4R_LIB_VERSION(G3D, Nov 20 2008, 03:23:14);
}

namespace nw4r
{
    namespace g3d
    {
        using namespace ut;

        void G3dInit(bool doLock)
        {
            OSRegisterVersion(NW4R_G3D_Version_);

            if (doLock) LC::Enable();
            else LC::Disable();

            InitFastCast();

            GXRenderModeObj* rmo;
            switch(VIGetTvFormat())
            {
                case VI_NTSC:
                    rmo = &GXNtsc480IntDf;
                    break;
                case VI_PAL:
                    rmo = &GXPal528IntDf;
                    break;
                case VI_EURGB60:
                    rmo = &GXEurgb60Hz480IntDf;
                    break;
                case VI_MPAL:
                    rmo = &GXMpal480IntDf;
                    break;
                default:
                    rmo = &GXNtsc480IntDf;
                    break;
            }

            G3DState::SetRenderModeObj(*rmo);
        }

        void G3dReset()
        {
            G3DState::Invalidate(0x7ff);
        }
    }
}
