#pragma ipa file

#include <nw4r/lyt/lyt_texMap.h>

namespace nw4r
{
    namespace lyt
    {
        using namespace detail;

        void TexMap::Get(GXTexObj *pTexObj) const
        {
            if (IsCITexelFormat(GetTexelFormat()))
            {
                u32 tlut = GXGetTexObjTlut(pTexObj);
                GXInitTexObjCI(pTexObj, GetImage(), GetWidth(), GetHeight(),
                    GetTexelFormat(), GetWrapModeS(), GetWrapModeT(), IsMipMap(), tlut);
            }
            else
            {
                GXInitTexObj(pTexObj, GetImage(), GetWidth(), GetHeight(),
                    GetTexelFormat(), GetWrapModeS(), GetWrapModeT(), IsMipMap());
            }

            GXInitTexObjLOD(pTexObj, GetMinFilter(), GetMagFilter(), GetMinLOD(),
                GetMaxLOD(), GetLODBias(), IsBiasClampEnable(), IsEdgeLODEnable(), GetAnisotropy());
        }

        void TexMap::Get(GXTlutObj *pTLUTObj) const
        {
            GXInitTlutObj(pTLUTObj, GetPalette(), GetPaletteFormat(), GetPaletteEntryNum());
        }

        void TexMap::Set(TPLPalette *pPalette, u32 tplID)
        {
            // Not yet converted from offset to pointer (unbound)
            if ((uintptr_t)pPalette->descriptorArray < 0x80000000)
            {
                TPLBind(pPalette);
            }

            Set(TPLGet(pPalette, tplID));
        }

        void TexMap::Set(const TPLDescriptor *pDescriptor)
        {
            SetNoWrap(pDescriptor);
            SetWrapMode(pDescriptor->textureHeader->wrapS, pDescriptor->textureHeader->wrapT);
        }

        void TexMap::SetNoWrap(const TexMap& map)
        {
            GXTexWrapMode wrapS = GetWrapModeS();
            GXTexWrapMode wrapT = GetWrapModeT();

            Set(map);
            SetWrapMode(wrapS, wrapT);
        }

        void TexMap::SetNoWrap(const TPLDescriptor *pDescriptor)
        {
            TPLHeader *tex = pDescriptor->textureHeader;
            SetImage(tex->data);
            SetSize(tex->width, tex->height);
            SetTexelFormat(static_cast<GXTexFmt>(tex->format));

            bool bMipMap = (tex->minLOD != tex->maxLOD);
            SetMipMap(bMipMap);

            SetFilter(tex->minFilter, tex->magFilter);
            SetLOD(tex->minLOD, tex->maxLOD);
            SetLODBias(tex->LODBias);
            SetEdgeLODEnable(tex->edgeLODEnable);

            TPLClutHeader *clut = pDescriptor->CLUTHeader;
            if (clut != NULL)
            {
                SetPalette(clut->data);
                SetPaletteFormat(clut->format);
                SetPaletteEntryNum(clut->numEntries);
            }
            else
            {
                SetPalette(NULL);
                SetPaletteFormat(GX_TL_IA8);
                SetPaletteEntryNum(0);
            }
        }
    }
}
