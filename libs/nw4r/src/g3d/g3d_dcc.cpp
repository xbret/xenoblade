#include <nw4r/g3d/g3d_dcc.h>
#include <nw4r/math/math_types.h>
#include <nw4r/g3d/dcc/g3d_maya.h>
#include <nw4r/g3d/dcc/g3d_xsi.h>
#include <nw4r/g3d/dcc/g3d_3dsmax.h>
#include <nw4r/g3d/dcc/g3d_basic.h>

namespace nw4r
{
    namespace g3d
    {
        void CalcTexMtx(math::MTX34 *pM, bool bSet, const TexSrt &srt, TexSrt::Flag flag,
            TexSrtTypedef::TexMatrixMode mode)
        {
            bool bIdentity;

            if (mode == TexSrtTypedef::TEXMATRIXMODE_MAYA)
            {
                bIdentity = !detail::dcc::CalcTexMtx_Maya(pM, bSet, srt, flag);
            }
            else if (mode == TexSrtTypedef::TEXMATRIXMODE_XSI)
            {
                bIdentity = !detail::dcc::CalcTexMtx_Xsi(pM, bSet, srt, flag);
            }
            else
            {
                bIdentity = !detail::dcc::CalcTexMtx_3dsmax(pM, bSet, srt, flag);
            }

            if (bIdentity && bSet)
            {
                math::MTX34Identity(pM);
            }
        }

        void CalcTexMtx(math::MTX34 *pM, bool bSet, const TexSrt &srt, TexSrt::Flag flag)
        {
            bool bIdentity = !detail::dcc::CalcTexMtx_Basic(pM, bSet, srt, flag);

            if (bIdentity && bSet)
            {
                math::MTX34Identity(pM);
            }
        }
    }
}
