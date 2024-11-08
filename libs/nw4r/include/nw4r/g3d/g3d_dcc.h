#ifndef NW4R_G3D_DCC_H
#define NW4R_G3D_DCC_H
#include <nw4r/types_nw4r.h>
#include <nw4r/g3d/g3d_anmtexsrt.h>

namespace nw4r
{
    namespace g3d
    {
        void CalcTexMtx(math::MTX34 *pM, bool bSet, const TexSrt &srt, TexSrt::Flag flag,
            TexSrtTypedef::TexMatrixMode mode);
        void CalcTexMtx(math::MTX34 *pM, bool bSet, const TexSrt &srt, TexSrt::Flag flag);
    }
}

#endif
