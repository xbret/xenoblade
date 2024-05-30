#pragma once

#include "nw4r/types_nw4r.h"
#include "nw4r/ut/ut_Font.h"

namespace nw4r
{
    namespace lyt
    {
        struct ResourceAccessor
        {
            ResourceAccessor();
            virtual ~ResourceAccessor();
            virtual UNKWORD * GetResource(u32, const char *, u32 *) = 0;
            virtual ut::Font * GetFont(const char *);
        };
    }
}

