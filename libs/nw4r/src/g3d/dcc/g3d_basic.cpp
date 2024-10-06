#include "g3d_basic.h"
#include <nw4r/math.h>

namespace nw4r
{
    namespace g3d
    {
        namespace detail
        {
            namespace dcc
            {
                bool CalcTexMtx_Basic(math::MTX34 *pMtx, bool bSet, const TexSrt &srt, TexSrt::Flag flag)
                {
                    u32 funcIndex; //unused
                    f32 sinR;
                    f32 cosR;

                    if ((u32)((flag >> 1) & 0b111) == 0b111) return false;

                    math::SinCosDeg(&sinR, &cosR, srt.R);

                    if (bSet)
                    {
                        pMtx->m[0][0] = srt.Su * cosR;
                        pMtx->m[0][1] = -srt.Sv * sinR;
                        pMtx->m[0][2] = 0.0f;
                        pMtx->m[0][3] = srt.Tu;
                        pMtx->m[1][0] = srt.Su * sinR;
                        pMtx->m[1][1] = srt.Sv * cosR;
                        pMtx->m[1][2] = 0.0f;
                        pMtx->m[1][3] = srt.Tv;
                        pMtx->m[2][0] = 0.0f;
                        pMtx->m[2][1] = 0.0f;
                        pMtx->m[2][2] = 1.0f;
                        pMtx->m[2][3] = 0.0f;
                    }
                    else
                    {
                        math::MTX34 m;

                        m.m[0][0] = srt.Su * cosR;
                        m.m[0][1] = -srt.Sv * sinR;
                        m.m[0][2] = 0.0f;
                        m.m[0][3] = srt.Tu;
                        m.m[1][0] = srt.Su * sinR;
                        m.m[1][1] = srt.Sv * cosR;
                        m.m[1][2] = 0.0f;
                        m.m[1][3] = srt.Tv;
                        m.m[2][0] = 0.0f;
                        m.m[2][1] = 0.0f;
                        m.m[2][2] = 1.0f;
                        m.m[2][3] = 0.0f;
                        math::MTX34Mult(pMtx,&m,pMtx);
                    }

                    return true;
                }

                u32 CalcWorldMtx_Basic(math::MTX34 *pW, math::VEC3 *pS, const math::MTX34 *pW_1,
                const math::VEC3 *pS_1, u32 attr_1, const ChrAnmResult *pResult)
                {
                    u32 flag = pResult->flags;
                    u32 attr;

                    if ((flag & 0x2) || (flag & 0x4))
                    {
                        if (WorldMtxAttr::IsScaleOne(attr_1))
                        {
                            math::MTX34Copy(pW, pW_1);
                        }
                        else
                        {
                            math::MTX34Scale(pW, pW_1, pS_1);
                        }
                    }
                    else if (flag & 0x20)
                    {
                        if (WorldMtxAttr::IsScaleOne(attr_1))
                        {
                            const math::VEC3 trans(pResult->rt[0][3], pResult->rt[1][3], pResult->rt[2][3]);
                            math::MTX34Trans(pW, pW_1, &trans);
                        }
                        else
                        {
                            math::MTX34 tmp;
                            math::MTX34Scale(&tmp, pS_1, &pResult->rt);
                            math::MTX34Mult(pW, pW_1, &tmp);
                        }
                    }
                    else if (WorldMtxAttr::IsScaleOne(attr_1))
                    {
                        math::MTX34Mult(pW, pW_1, &pResult->rt);
                    }
                    else
                    {
                        math::MTX34Scale(pW, pW_1, pS_1);
                        math::MTX34Mult(pW, pW, &pResult->rt);
                    }

                    if (flag & 0x8)
                    {
                        attr = WorldMtxAttr::AnmScaleOne(attr_1);
                        pS->z = 1.0f;
                        pS->y = 1.0f;
                        pS->x = 1.0f;
                    }
                    else
                    {
                        attr = WorldMtxAttr::AnmNotScaleOne(attr_1);
                        *pS = pResult->s;
                    }

                    u32 result = WorldMtxAttr::AnmNotScaleUniform(attr);

                    if (flag & 0x10)
                    {
                        result = WorldMtxAttr::AnmScaleUniform(attr);
                    }

                    return result;
                }
            }
        }
    }
}
