#ifndef NW4HBM_LYT_RESOURCE_ACCESSOR_H
#define NW4HBM_LYT_RESOURCE_ACCESSOR_H
#include <nw4hbm/types_nw4hbm.h>
#include <nw4hbm/ut/ut_Font.h>

namespace nw4hbm
{
    namespace lyt
    {
        class ResourceAccessor
        {
        public:
            ResourceAccessor();
            virtual ~ResourceAccessor(); // at 0x8
            virtual UNKTYPE * GetResource(u32, const char *, u32 *) = 0; // at 0xC
            virtual ut::Font * GetFont(const char *); // at 0x10
        };
    }
}

#endif
