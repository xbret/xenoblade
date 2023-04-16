#pragma once

#include "types.h"
#include "RevoSDK/AX.h"

namespace nw4r
{
    namespace snd
    {
        namespace detail
        {
            s16 DecodeDspAdpcm(AXPBADPCM* pcm, u8 param2);
        }
    }
}