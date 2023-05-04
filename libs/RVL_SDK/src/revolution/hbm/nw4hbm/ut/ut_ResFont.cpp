#include "nw4hbm/ut/ut_ResFont.h"

namespace nw4hbm
{
	namespace ut
	{
		template <typename T>
		inline void ResolveOffset(T *& t, void * v)
		{
			t = reinterpret_cast<T *>((u8 *)v + (s32)t);
		}
		
		ResFont::ResFont() {}
		ResFont::~ResFont() {}
		
		bool ResFont::SetResource(void * pBuffer)
		{
			BinaryFileHeader * file = static_cast<BinaryFileHeader *>(pBuffer);
			
			FontInformation * pFontInfo = NULL;
			
			if (mBuffer) return false;
			
			if (file->magic == 'RFNU') //IsManaging?
			{
				BinaryBlockHeader * pCurBlock = (BinaryBlockHeader *)((u8 *)file + file->headerLen);
				
				for (int i = 0; i < file->blockCount; i++)
				{
					if (pCurBlock->magic == 'FINF')
					{
						pFontInfo = (FontInformation *)(pCurBlock + 1);
						break;
					}
					pCurBlock = (BinaryBlockHeader *)((u8 *)pCurBlock + pCurBlock->length);
				}
			}
			else
			{
				if (file->version == 0x0104)
				{
					if (!IsValidBinaryFile(file, 'RFNT', 0x0104, 2)) return false;
				}
				else
				{
					if (!IsValidBinaryFile(file, 'RFNT', 0x0102, 2)) return false;
				}
				pFontInfo = Rebuild(file);
			}
			
			if (pFontInfo == NULL) return false;
			
			SetResourceBuffer(pBuffer, pFontInfo);
			InitReaderFunc(GetEncoding());
			
			return true;
		}
		
		//TODO: fix mwcc warnings
		FontInformation * ResFont::Rebuild(BinaryFileHeader * file)
		{
			BinaryBlockHeader * pCurBlock = (BinaryBlockHeader *)((u8 *)file + file->headerLen);
			FontInformation * pFontInfo = NULL;
			
			for (int i = 0; i < file->blockCount; i++)
			{
				switch (pCurBlock->magic)
				{
					case 'FINF': //8000ABD8
						pFontInfo = reinterpret_cast<FontInformation *>(pCurBlock + 1);
						ResolveOffset<FontTextureGlyph>(pFontInfo->mTextureGlyph, file);
						if (pFontInfo->mWidthList) ResolveOffset<FontWidth>(pFontInfo->mWidthList, file);
						if (pFontInfo->mCodeMapList) ResolveOffset<FontCodeMap>(pFontInfo->mCodeMapList, file);
						break;
					case 'TGLP': //8000AC14
						ResolveOffset<u8>(reinterpret_cast<FontTextureGlyph *>(pCurBlock + 1)->PTR_0x14, file);
						break;
					case 'CWDH': //8000AC24
						FontWidth * pWidths = reinterpret_cast<FontWidth *>(pCurBlock + 1);
						if (pWidths->mNext) ResolveOffset<FontWidth>(pWidths->mNext, file);
						break;
					case 'CMAP': //8000AC3C
						FontCodeMap * pMap = reinterpret_cast<FontCodeMap *>(pCurBlock + 1);
						if (pMap->mNext) ResolveOffset<FontCodeMap>(pMap->mNext, file);
						break;
					case 'GLGR':
						break;
					default:
						return NULL;
				}
				
				pCurBlock = (BinaryBlockHeader *)((u8 *)pCurBlock + pCurBlock->length);
			}
			
			file->magic = 'RFNU';
			return pFontInfo;
		}
	}
}
