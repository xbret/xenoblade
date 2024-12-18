#ifndef NW4HBM_LYT_MATERIAL_H
#define NW4HBM_LYT_MATERIAL_H
#include <revolution/GX.h>
#include <nw4hbm/lyt/lyt_animation.h>
#include <nw4hbm/ut/ut_LinkList.h>

namespace nw4hbm
{
    namespace lyt
    {
        // TO-DO
        struct Material
        {
            ut::LinkList<AnimationLink, 0> mAnimLinks; // at 0x4
            // . . .
            GXColorS10 COLOR_0x10;
            GXColorS10 COLOR_0x18;
            GXColorS10 COLOR_0x20;
            // . . .
            UNKWORD WORD_0x40;
            // . . .
            u8 BYTE_0x59;
            // . . .
        };
    }
}

#endif
