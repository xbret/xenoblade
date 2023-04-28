#pragma once

#include "nw4hbm/types_nw4hbm.h"
#include "nw4hbm/ut/ut_Font.h"

namespace nw4hbm
{
    namespace lyt
    {
        struct ResourceAccessor
        {
            ResourceAccessor();
            virtual ~ResourceAccessor();
            virtual void GetResource(u32, const char *, u32 *) = 0;
            virtual ut::Font * GetFont(const char *);
        };
    }
}

