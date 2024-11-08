#ifndef NW4R_LYT_BOUNDING_H
#define NW4R_LYT_BOUNDING_H
#include <nw4r/types_nw4r.h>
#include <nw4r/lyt/lyt_pane.h>
#include <nw4r/lyt/lyt_drawInfo.h>

namespace nw4r
{
    namespace lyt
    {
        namespace res
        {
            struct Bounding : Pane
            {

            };
        }

        struct ResBlockSet
        {

        };

        struct Bounding : Pane
        {
            Bounding(const res::Bounding *, const ResBlockSet&);
            virtual ~Bounding();
            virtual const ut::detail::RuntimeTypeInfo * GetRuntimeTypeInfo() const;
            virtual void DrawSelf(const DrawInfo&);

            static ut::detail::RuntimeTypeInfo typeInfo;
        };
    }
}

#endif
