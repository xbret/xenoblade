#ifndef NW4R_G3D_MAYA_H
#define NW4R_G3D_MAYA_H
#include <nw4r/types_nw4r.h>
#include <nw4r/g3d/g3d_anmtexsrt.h>

namespace nw4r
{
    namespace g3d
    {
        namespace detail
        {
            namespace dcc
            {
                bool CalcTexMtx_Maya(math::MTX34 *, bool, const TexSrt &, TexSrt::Flag);
            }
        }
    }
}

#endif
