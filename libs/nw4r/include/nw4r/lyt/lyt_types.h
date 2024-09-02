#ifndef NW4R_LYT_TYPES_H
#define NW4R_LYT_TYPES_H
#include "types_nw4r.h"

namespace nw4r
{
    namespace lyt
    {
        namespace detail
        {
            template <typename T>
            void SetBit(T* pBits, int pos, u8 val) {
                T mask = ~(1 << pos);

                *pBits &= mask;
                *pBits |= val << pos;
            }
        }
    }
}

#endif
