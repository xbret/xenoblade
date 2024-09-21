#pragma ipa file // TODO: REMOVE AFTER REFACTOR

#include <nw4r/ut.h>

namespace nw4r {
namespace ut {
namespace detail {

ResFontBase::ResFontBase() : mResource(NULL), mFontInfo(NULL), mLastCharCode(0), mLastGlyphIndex(-1) {}

ResFontBase::~ResFontBase() {}

void ResFontBase::SetResourceBuffer(void* pUserBuffer, FontInformation* pFontInfo) {
    mResource = pUserBuffer;
    mFontInfo = pFontInfo;
}

void* ResFontBase::RemoveResourceBuffer() {
    void* pUserData = mResource;
    mResource = nullptr;
    mFontInfo = nullptr;
    return pUserData;
}

int ResFontBase::GetWidth() const {
    return mFontInfo->width;
}

int ResFontBase::GetHeight() const {
    return mFontInfo->height;
}

int ResFontBase::GetAscent() const {
    return mFontInfo->ascent;
}

int ResFontBase::GetDescent() const {
    return mFontInfo->height - mFontInfo->ascent;
}

int ResFontBase::GetBaselinePos() const {
    return mFontInfo->pGlyph->baselinePos;
}

int ResFontBase::GetCellHeight() const {
    return mFontInfo->pGlyph->cellHeight;
}

int ResFontBase::GetCellWidth() const {
    return mFontInfo->pGlyph->cellWidth;
}

int ResFontBase::GetMaxCharWidth() const {
    return mFontInfo->pGlyph->maxCharWidth;
}

Font::Type ResFontBase::GetType() const {
    return TYPE_RESOURCE;
}

GXTexFmt ResFontBase::GetTextureFormat() const {
    return static_cast<GXTexFmt>(mFontInfo->pGlyph->sheetFormat);
}

int ResFontBase::GetLineFeed() const {
    return mFontInfo->linefeed;
}

CharWidths ResFontBase::GetDefaultCharWidths() const {
    return mFontInfo->defaultWidth;
}

void ResFontBase::SetDefaultCharWidths(const CharWidths& widths) {
    mFontInfo->defaultWidth = widths;
}

bool ResFontBase::SetAlternateChar(u16 c) {
    u16 index = FindGlyphIndex(c);

    if (index != GLYPH_INDEX_NOT_FOUND) {
        mFontInfo->alterCharIndex = index;
        return true;
    }

    return false;
}

void ResFontBase::SetLineFeed(int linefeed) {
    mFontInfo->linefeed = linefeed;
}

int ResFontBase::GetCharWidth(u16 c) const {
    return GetCharWidths(c).charWidth;
}

CharWidths ResFontBase::GetCharWidths(u16 c) const {
    return GetCharWidthsFromIndex(GetGlyphIndex(c));
}

void ResFontBase::GetGlyph(Glyph* glyph, u16 c) const {
    GetGlyphFromIndex(glyph, GetGlyphIndex(c));
}

bool ResFontBase::HasGlyph(u16 c) const {
    return FindGlyphIndex(c) != GLYPH_INDEX_NOT_FOUND;
}

FontEncoding ResFontBase::GetEncoding() const {
    return static_cast<FontEncoding>(mFontInfo->encoding);
}

u16 ResFontBase::GetGlyphIndex(u16 c) const {
    u16 index = FindGlyphIndex(c);
    return index != GLYPH_INDEX_NOT_FOUND ? index : mFontInfo->alterCharIndex;
}

// TODO: how tf did they write to mLastCharCode and mLastGlyphIndex here? did they really
// make the variables mutable???
u16 ResFontBase::FindGlyphIndex(u16 c) const {
    if (c == mLastCharCode) {
        return mLastGlyphIndex;
    }

    mLastCharCode = c;

    for (FontCodeMap* pMap = mFontInfo->pMap; pMap != NULL; pMap = pMap->pNext) {
        if (pMap->ccodeBegin <= c && c <= pMap->ccodeEnd) {
            mLastGlyphIndex = FindGlyphIndex(pMap, c);
            return mLastGlyphIndex;
        }
    }

    mLastGlyphIndex = GLYPH_INDEX_NOT_FOUND;
    
    return mLastGlyphIndex;
}

u16 ResFontBase::FindGlyphIndex(const FontCodeMap* pMap, u16 c) const {
    u16 index = GLYPH_INDEX_NOT_FOUND;

    switch (pMap->mappingMethod) {
    case FONT_MAPMETHOD_DIRECT: {
        index = pMap->mapInfo[0] + (c - pMap->ccodeBegin);
        break;
    }

    case FONT_MAPMETHOD_TABLE: {
        index = pMap->mapInfo[c - pMap->ccodeBegin];
        break;
    }

    case FONT_MAPMETHOD_SCAN: {
        struct CMapScanEntry {
            u16 ccode; // at 0x0
            u16 index; // at 0x2
        };
        struct CMapInfoScan {
            u16 num;                 // at 0x0
            CMapScanEntry entries[]; // at 0x2
        };

        const CMapInfoScan* scanInfo =
            reinterpret_cast<const CMapInfoScan*>(pMap->mapInfo);

        const CMapScanEntry* first = scanInfo->entries;
        const CMapScanEntry* last = &scanInfo->entries[scanInfo->num - 1];

        while (first <= last) {
            const CMapScanEntry* mid = first + (last - first) / 2;

            if (mid->ccode < c) {
                first = mid + 1;
            } else if (c < mid->ccode) {
                last = mid - 1;
            } else {
                return mid->index;
            }
        }

        break;
    }
    }

    return index;
}

const CharWidths& ResFontBase::GetCharWidthsFromIndex(u16 index) const {
    for (const FontWidth* pWidth = mFontInfo->pWidth; pWidth != NULL;
         pWidth = pWidth->pNext) {
        if (pWidth->indexBegin <= index && index <= pWidth->indexEnd) {
            return GetCharWidthsFromIndex(pWidth, index);
        }
    }

    return mFontInfo->defaultWidth;
}

const CharWidths& ResFontBase::GetCharWidthsFromIndex(const FontWidth* width,
                                                      u16 index) const {
    return width->widthTable[index - width->indexBegin];
}

void ResFontBase::GetGlyphFromIndex(Glyph* glyph, u16 index) const {
    const FontTextureGlyph* texGlyph = mFontInfo->pGlyph;

    u32 cellsInASheet = texGlyph->sheetRow * texGlyph->sheetLine;

    u32 cellNo = index % cellsInASheet;
    u32 sheetNo = index / cellsInASheet;

    u32 cellUnitX = cellNo % texGlyph->sheetRow;
    u32 cellUnitY = cellNo / texGlyph->sheetRow;

    u32 cellPixelX = cellUnitX * (texGlyph->cellWidth + 1);
    u32 cellPixelY = cellUnitY * (texGlyph->cellHeight + 1);

    glyph->pTexture = texGlyph->sheetImage + (sheetNo * texGlyph->sheetSize);

    glyph->widths = GetCharWidthsFromIndex(index);
    glyph->height = texGlyph->cellHeight;

    glyph->texFormat = static_cast<GXTexFmt>(texGlyph->sheetFormat);

    glyph->texWidth = texGlyph->sheetWidth;
    glyph->texHeight = texGlyph->sheetHeight;

    glyph->cellX = cellPixelX + 1;
    glyph->cellY = cellPixelY + 1;
}

} // namespace detail
} // namespace ut
} // namespace nw4r
