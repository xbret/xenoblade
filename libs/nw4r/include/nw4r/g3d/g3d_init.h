#ifndef NW4R_G3D_INIT_H
#define NW4R_G3D_INIT_H
#include <nw4r/types_nw4r.h>
#include <revolution/OS.h>

namespace nw4r
{
    namespace g3d
    {
        // Initialized GQRs 2-7, using the SDK provided function for 2-5, and the following
        // values for 6-7:
        // GQR6: signed 16 bit values, 32x scaling
        // GQR7: signed 16 bit values, 256x scaling
        inline void InitFastCast()
        {
            OSInitFastCast();
            OSSetGQR6(7, 5);
            OSSetGQR7(7, 8);
        }

        void G3dInit(bool);
        void G3dReset();
    }
}

#endif
