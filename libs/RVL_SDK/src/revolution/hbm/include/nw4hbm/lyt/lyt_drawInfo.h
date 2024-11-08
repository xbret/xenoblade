#ifndef NW4HBM_LYT_DRAWINFO_H
#define NW4HBM_LYT_DRAWINFO_H
#include <nw4hbm/types_nw4hbm.h>
#include <nw4hbm/math/math_types.h>
#include <nw4hbm/ut/ut_Rect.h>

namespace nw4hbm
{
    namespace lyt
    {
        struct DrawInfo
        {
            virtual ~DrawInfo();
            DrawInfo();

            math::MTX34 mViewMtx; // at 0x0
            ut::Rect mViewRect; // at 0x34
            math::VEC2 mScale; // at 0x44
            f32 mGlobalAlpha; // at 0x48
            u8 mFlags; // at 0x50
        };
    }
}

#endif
