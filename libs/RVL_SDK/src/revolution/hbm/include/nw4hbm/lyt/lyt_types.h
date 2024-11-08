#ifndef NW4HBM_LYT_TYPES_H
#define NW4HBM_LYT_TYPES_H
#include <nw4hbm/types_nw4hbm.h>

namespace nw4hbm
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
