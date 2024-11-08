#ifndef NW4HBM_LYT_BOUNDING_H
#define NW4HBM_LYT_BOUNDING_H
#include <nw4hbm/types_nw4hbm.h>
#include <nw4hbm/lyt/lyt_pane.h>
#include <nw4hbm/lyt/lyt_drawInfo.h>

namespace nw4hbm
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
