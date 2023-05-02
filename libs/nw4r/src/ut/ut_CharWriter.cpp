#include "nw4r/ut/ut_CharWriter.h"
#include "revolution/GX.h"

namespace
{
	static void SetupGXCommon()
	{
		static const nw4r::ut::Color fog = 0;
		
		GXSetFog(GX_FOG_NONE, fog.mChannels, 0.0f, 0.0f, 0.0f, 0.0f);
		GXSetTevSwapModeTable(GX_TEV_SWAP0, GX_CH_RED, GX_CH_GREEN, GX_CH_BLUE, GX_CH_ALPHA);
		GXSetZTexture(GX_ZT_DISABLE, GX_TF_Z8, 0);
		GXSetNumChans(1);
		GXSetChanCtrl(GX_COLOR0A0, FALSE, GX_SRC_REG, GX_SRC_VTX, GX_LIGHT_NULL, GX_DF_NONE, GX_AF_NONE);
		GXSetChanCtrl(GX_COLOR1A1, FALSE, GX_SRC_REG, GX_SRC_REG, GX_LIGHT_NULL, GX_DF_NONE, GX_AF_NONE);
		GXSetNumTexGens(1);
		GXSetTexCoordGen2(GX_TEXCOORD0, GX_TG_MTX2x4, GX_TG_TEX0, 60, 0, 125);
		GXSetNumIndStages(0);
		GXSetBlendMode(GX_BM_BLEND, GX_BL_SRCALPHA, GX_BL_INVSRCALPHA, GX_LO_SET);
	}
}

namespace nw4r
{
	namespace ut
	{
		CharWriter::CharWriter() : BYTE_0x42(0xFF), mWidthFixedFlag(false), mFixedWidth(0.0f), mFont(NULL)
		{
			mLoadingTexture.Reset();
			ResetColorMapping();
			SetGradationMode(GradMode_None);
			SetTextColor(Color());
			SetScale(1.0f, 1.0f);
			SetCursor(0.0f, 0.0f, 0.0f);
			mFilter.WORD_0x0 = GX_LINEAR;
			mFilter.WORD_0x4 = GX_LINEAR;
		}
		
		void CharWriter::SetColorMapping(Color color1, Color color2)
		{
			mColorMapping.COLOR_0x0 = color1;
			mColorMapping.COLOR_0x4 = color2;
		}
		
		void CharWriter::SetTextColor(Color color)
		{
			mTextColor.mStart = color;
			mVertexColor.mTopLeft = mTextColor.mStart;
			mVertexColor.mTopRight = (mGradationMode != GradMode_Horizontal) ? mTextColor.mStart : mTextColor.mEnd;
			mVertexColor.mBottomLeft = (mGradationMode != GradMode_Vertical) ? mTextColor.mStart : mTextColor.mEnd;
			mVertexColor.mBottomRight = (mGradationMode == GradMode_None) ? mTextColor.mStart : mTextColor.mEnd;
			
			mVertexColor.mTopLeft.mChannels.a = (mVertexColor.mTopLeft.mChannels.a * BYTE_0x42) / 0xFF,
			mVertexColor.mTopRight.mChannels.a = (mVertexColor.mTopRight.mChannels.a * BYTE_0x42) / 0xFF;
			mVertexColor.mBottomLeft.mChannels.a = (mVertexColor.mBottomLeft.mChannels.a * BYTE_0x42) / 0xFF;
			mVertexColor.mBottomRight.mChannels.a = (mVertexColor.mBottomRight.mChannels.a * BYTE_0x42) / 0xFF;
		}
		CharWriter::~CharWriter() {}
		
		void CharWriter::SetupGXDefault()
		{
			SetupGXCommon();
			GXSetNumTevStages(1);
			GXSetTevDirect(GX_TEVSTAGE0);
			GXSetTevSwapMode(GX_TEVSTAGE0, GX_TEV_SWAP0, GX_TEV_SWAP0);
			GXSetTevOrder(GX_TEVSTAGE0, GX_TEXCOORD0, GX_TEXMAP0, GX_COLOR0A0);
			GXSetTevOp(GX_TEVSTAGE0, GX_DECAL);
			GXSetVtxAttrFmt(0, GX_VA_POS, 1, 4, 0);
			GXSetVtxAttrFmt(0, GX_VA_CLR0, 1, 5, 0);
			GXSetVtxAttrFmt(0, GX_VA_TEX0, 1, 2, 0xf);
			GXClearVtxDesc();
			GXSetVtxDesc(GX_VA_POS, GX_VA_TEX0MTXIDX);
			GXSetVtxDesc(GX_VA_CLR0, GX_VA_TEX0MTXIDX);
			GXSetVtxDesc(GX_VA_TEX0, GX_VA_TEX0MTXIDX);
		}
		
		void CharWriter::SetupGX()
		{
			mLoadingTexture.Reset();
			if ((u32)mColorMapping.COLOR_0x0 != 0 || (u32)mColorMapping.COLOR_0x4 != 0xFFFFFFFF)
			{
				SetupGXWithColorMapping(mColorMapping.COLOR_0x0, mColorMapping.COLOR_0x4);
			}
			else if (mFont)
			{
				switch (mFont->GetTextureFormat())
				{
					case 0:
					case 1:
						SetupGXCommon();
						GXSetNumTevStages(1);
						GXSetTevDirect(GX_TEVSTAGE0);
						GXSetTevSwapMode(GX_TEVSTAGE0, GX_TEV_SWAP0, GX_TEV_SWAP0);
						GXSetTevOrder(GX_TEVSTAGE0, GX_TEXCOORD0, GX_TEXMAP0, GX_COLOR0A0);
						GXSetTevColorIn(GX_TEVSTAGE0, GX_CC_ZERO, GX_CC_ZERO, GX_CC_ZERO, GX_CC_RASC);
						GXSetTevAlphaIn(GX_TEVSTAGE0, GX_CA_ZERO, GX_CA_TEXA, GX_CA_RASA, GX_CA_ZERO);
						GXSetTevColorOp(GX_TEVSTAGE0, GX_TEV_ADD, GX_TB_ZERO, GX_TEV_SCALE_0, 1, GX_TEVPREV);
						GXSetTevAlphaOp(GX_TEVSTAGE0, GX_TEV_ADD, GX_TB_ZERO, GX_TEV_SCALE_0, 1, GX_TEVPREV);
						GXSetVtxAttrFmt(0, GX_VA_POS, 1, 4, 0);
						GXSetVtxAttrFmt(0, GX_VA_CLR0, 1, 5, 0);
						GXSetVtxAttrFmt(0, GX_VA_TEX0, 1, 2, 0xf);
						GXClearVtxDesc();
						GXSetVtxDesc(GX_VA_POS, GX_VA_TEX0MTXIDX);
						GXSetVtxDesc(GX_VA_CLR0, GX_VA_TEX0MTXIDX);
						GXSetVtxDesc(GX_VA_TEX0, GX_VA_TEX0MTXIDX);
						break;
					case 2:
					case 3:
						SetupGXDefault();
						break;
					case 4:
					case 5:
					case 6:
						SetupGXDefault();
						break;
					default:
						SetupGXDefault();
						break;
				}
			}
			else
			{
				SetupGXDefault();
			}
		}
		
		void CharWriter::SetFontSize(float width, float height)
		{
			SetScale(width / mFont->GetWidth(), height / mFont->GetHeight());
		}
		
		float CharWriter::GetFontWidth() const
		{
			return mScale.mCoords.x * mFont->GetWidth();
		}
		
		float CharWriter::GetFontHeight() const
		{
			return mScale.mCoords.y * mFont->GetHeight();
		}
		
		float CharWriter::GetFontAscent() const
		{
			return mScale.mCoords.y * mFont->GetAscent();
		}
		
		float CharWriter::GetFontDescent() const
		{
			return mScale.mCoords.y * mFont->GetDescent();
		}
		
		void CharWriter::EnableLinearFilter(bool b1, bool b2)
		{
			mFilter.WORD_0x0 = b1 != FALSE ? GX_LINEAR : GX_NEAR;
			mFilter.WORD_0x4 = b2 != FALSE ? GX_LINEAR : GX_NEAR;
		}
		
		float CharWriter::Print(u16 ch)
		{
			Glyph glyph; // at 0x8
			
			mFont->GetGlyph(&glyph, ch);
			
			float xOfs;
			float ret;
			
			if (mWidthFixedFlag)
			{
				ret = mFixedWidth;
				xOfs = (ret - glyph.BYTE_0x6 * mScale.mCoords.x) / 2 + (glyph.BYTE_0x4 * mScale.mCoords.x);
			}
			else
			{
				ret = glyph.BYTE_0x6 * mScale.mCoords.x;
				xOfs = glyph.BYTE_0x4 * mScale.mCoords.x;
			}
			
			PrintGlyph(mCursor.mCoords.x + xOfs, mCursor.mCoords.y, mCursor.mCoords.z, glyph);
			mCursor.mCoords.x += ret;
			
			return ret;
		}
		
		void CharWriter::LoadTexture(const Glyph & glyph)
		{
			GXTexObj texObj;
			LoadingTexture loadingTexture;
			
			loadingTexture.s32_0x0 = 0;
			loadingTexture.PTR_0x4 = glyph.PTR_0x0;//r0
			loadingTexture.mFilter = mFilter;
			
			if (loadingTexture != mLoadingTexture)
			{
				GXInitTexObj(&texObj, glyph.PTR_0x0, glyph.SHORT_0xC, glyph.SHORT_0xE,
				glyph.WORD_0x8, GX_CLAMP, GX_CLAMP, 0);
				GXInitTexObjLOD(&texObj, mFilter.WORD_0x0, mFilter.WORD_0x4, 0.0f, 0.0f, 0.0f, 0, 0, GX_ANISO_1);
				GXLoadTexObj(&texObj, GX_TEXMAP0);
				mLoadingTexture = loadingTexture;
			}
		}
		
		void CharWriter::PrintGlyph(float x, float y, float z, const Glyph & glyph)
		{
			u32 left;
			u32 top;
			u32 right;
			u32 bottom;
			
			u16 normLeft;
			u16 normTop;
			u16 normRight;
			u16 normBottom;
			
			float x2;
			float y2;
			
			x2 = x + (glyph.cellWidth * mScale.mCoords.x);
			y2 = y + (glyph.cellHeight * mScale.mCoords.y);
			
			left = glyph.SHORT_0x10;
			normLeft = 0x8000 * left / glyph.SHORT_0xC;
			
			top = glyph.SHORT_0x12;
			normTop = 0x8000 * top / glyph.SHORT_0xE;
			
			right = left + glyph.cellWidth;
			normRight = 0x8000 * right / glyph.SHORT_0xC;
			
			bottom = top + glyph.cellHeight;
			normBottom = 0x8000 * bottom / glyph.SHORT_0xE;
			
			LoadTexture(glyph);
			
			GXBegin(GX_QUADS, 0, 4);

			GXPosition3f32(x, y, z);
			GXColor1u32(mVertexColor.mTopLeft);
			GXTexCoord2u16(normLeft, normTop);

			GXPosition3f32(x2, y, z);
			GXColor1u32(mVertexColor.mTopRight);
			GXTexCoord2u16(normRight, normTop);

			GXPosition3f32(x2, y2, z);
			GXColor1u32(mVertexColor.mBottomRight);
			GXTexCoord2u16(normRight, normBottom);

			GXPosition3f32(x, y2, z);
			GXColor1u32(mVertexColor.mBottomLeft);
			GXTexCoord2u16(normLeft, normBottom);
			
			GXEnd();
		}
		
		void CharWriter::UpdateVertexColor()
		{
			mVertexColor.mTopLeft = mTextColor.mStart;
			mVertexColor.mTopRight = (mGradationMode != GradMode_Horizontal) ? mTextColor.mStart : mTextColor.mEnd;
			mVertexColor.mBottomLeft = (mGradationMode != GradMode_Vertical) ? mTextColor.mStart : mTextColor.mEnd;
			mVertexColor.mBottomRight = (mGradationMode == GradMode_None) ? mTextColor.mStart : mTextColor.mEnd;
			
			mVertexColor.mTopLeft.mChannels.a = (mVertexColor.mTopLeft.mChannels.a * BYTE_0x42) / 0xFF,
			mVertexColor.mTopRight.mChannels.a = (mVertexColor.mTopRight.mChannels.a * BYTE_0x42) / 0xFF;
			mVertexColor.mBottomLeft.mChannels.a = (mVertexColor.mBottomLeft.mChannels.a * BYTE_0x42) / 0xFF;
			mVertexColor.mBottomRight.mChannels.a = (mVertexColor.mBottomRight.mChannels.a * BYTE_0x42) / 0xFF;
		}
		
		void CharWriter::SetupGXWithColorMapping(Color color1, Color color2)
		{
			SetupGXCommon();
			GXSetNumTevStages(2);
			GXSetTevDirect(GX_TEVSTAGE0);
			GXSetTevDirect(GX_TEVSTAGE1);
			GXSetTevSwapMode(GX_TEVSTAGE0, GX_TEV_SWAP0, GX_TEV_SWAP0);
			GXSetTevSwapMode(GX_TEVSTAGE1, GX_TEV_SWAP0, GX_TEV_SWAP0);
			GXSetTevOrder(GX_TEVSTAGE0, GX_TEXCOORD0, GX_TEXMAP0, GX_COLOR_NULL);
			GXSetTevColor(GX_TEVREG0, color1.mChannels);
			GXSetTevColor(GX_TEVREG1, color2.mChannels);
			GXSetTevColorIn(GX_TEVSTAGE0, GX_CC_C0, GX_CC_C1, GX_CC_TEXC, GX_CC_ZERO);
			GXSetTevAlphaIn(GX_TEVSTAGE0, GX_CA_A0, GX_CA_A1, GX_CA_TEXA, GX_CA_ZERO);
			GXSetTevColorOp(GX_TEVSTAGE0, GX_TEV_ADD, GX_TB_ZERO, GX_TEV_SCALE_0, 1, GX_TEVPREV);
			GXSetTevAlphaOp(GX_TEVSTAGE0, GX_TEV_ADD, GX_TB_ZERO, GX_TEV_SCALE_0, 1, GX_TEVPREV);
			GXSetTevOrder(GX_TEVSTAGE1, GX_TEXCOORD_NULL, GX_TEXMAP_NULL, GX_COLOR0A0);
			GXSetTevColorIn(GX_TEVSTAGE1, GX_CC_ZERO, GX_CC_CPREV, GX_CC_RASC, GX_CC_ZERO);
			GXSetTevAlphaIn(GX_TEVSTAGE1, GX_CA_ZERO, GX_CA_APREV, GX_CA_RASA, GX_CA_ZERO);
			GXSetTevColorOp(GX_TEVSTAGE1, GX_TEV_ADD, GX_TB_ZERO, GX_TEV_SCALE_0, 1, GX_TEVPREV);
			GXSetTevAlphaOp(GX_TEVSTAGE1, GX_TEV_ADD, GX_TB_ZERO, GX_TEV_SCALE_0, 1, GX_TEVPREV);
			GXSetVtxAttrFmt(0, GX_VA_POS, 1, 4, 0);
			GXSetVtxAttrFmt(0, GX_VA_CLR0, 1, 5, 0);
			GXSetVtxAttrFmt(0, GX_VA_TEX0, 1, 2, 0xf);
			GXClearVtxDesc();
			GXSetVtxDesc(GX_VA_POS, GX_VA_TEX0MTXIDX);
			GXSetVtxDesc(GX_VA_CLR0, GX_VA_TEX0MTXIDX);
			GXSetVtxDesc(GX_VA_TEX0, GX_VA_TEX0MTXIDX);
		}
		
		CharWriter::LoadingTexture CharWriter::mLoadingTexture;
	}
}
