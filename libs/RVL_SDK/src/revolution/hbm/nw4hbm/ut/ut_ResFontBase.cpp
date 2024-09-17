#pragma ipa file // TODO: REMOVE AFTER REFACTOR

#include <nw4hbm/ut.h>

namespace nw4hbm {
namespace ut {
namespace detail {

ResFontBase::ResFontBase() : mResource(NULL), mFontInfo(NULL) {}

ResFontBase::~ResFontBase() {}

void ResFontBase::SetResourceBuffer(void* pUserBuffer, FontInformation* pFontInfo) {
    mResource = pUserBuffer;
    mFontInfo = pFontInfo;
}

//unused
void* ResFontBase::RemoveResourceBuffer() {
    void* pUserData = mResource;
    mResource = nullptr;
    mFontInfo = nullptr;
    return pUserData;
}

int ResFontBase::GetWidth() const { return mFontInfo->width; }

int ResFontBase::GetHeight() const { return mFontInfo->height; }

int ResFontBase::GetAscent() const { return mFontInfo->ascent; }

int ResFontBase::GetDescent() const {
    return mFontInfo->height - mFontInfo->ascent;
}

int ResFontBase::GetBaselinePos() const {
    return mFontInfo->fontGlyph->baselinePos;
}

int ResFontBase::GetCellHeight() const {
    return mFontInfo->fontGlyph->cellHeight;
}

int ResFontBase::GetCellWidth() const {
    return mFontInfo->fontGlyph->cellWidth;
}

int ResFontBase::GetMaxCharWidth() const {
    return mFontInfo->fontGlyph->maxCharWidth;
}

Font::Type ResFontBase::GetType() const { return TYPE_RESOURCE; }

GXTexFmt ResFontBase::GetTextureFormat() const {
    return static_cast<GXTexFmt>(mFontInfo->fontGlyph->sheetFormat);
}

int ResFontBase::GetLineFeed() const { return mFontInfo->lineFeed; }

CharWidths ResFontBase::GetDefaultCharWidths() const {
    return mFontInfo->defaultWidth;
}

void ResFontBase::SetDefaultCharWidths(const CharWidths& widths) {
    mFontInfo->defaultWidth = widths;
}

bool ResFontBase::SetAlternateChar(u16 c) {
    u16 index = FindGlyphIndex(c);

    if (index != 0xFFFF) {
        mFontInfo->alterCharIndex = index;
        return true;
    }

    return false;
}

void ResFontBase::SetLineFeed(int linefeed) {
    mFontInfo->lineFeed = linefeed;
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

FontEncoding ResFontBase::GetEncoding() const {
    return static_cast<FontEncoding>(mFontInfo->encoding);
}

u16 ResFontBase::GetGlyphIndex(u16 c) const {
    u16 index = FindGlyphIndex(c);
    return (index != 0xFFFF) ? index : mFontInfo->alterCharIndex;
}

u16 ResFontBase::FindGlyphIndex(u16 c) const {
    for (FontCodeMap* pMap = mFontInfo->fontMap; pMap != NULL; pMap = pMap->next) {
        if (pMap->firstChar <= c && c <= pMap->lastChar) {
            return FindGlyphIndex(pMap, c);
        }
    }

    return 0xFFFF;
}

u16 ResFontBase::FindGlyphIndex(const FontCodeMap* map, u16 c) const {
    struct CMapScanEntry {
        u16 code;  // at 0x0
        u16 index; // at 0x2
    };

    struct CMapInfoScan {
        u16 num;                 // at 0x0
        CMapScanEntry entries[]; // at 0x2
    };

    u16 index = 0xFFFF;

    switch (map->mappingMethod) {
    case FONT_MAPMETHOD_LINEAR:
        index = map->mapInfo[0] + (c - map->firstChar);
        break;
    case FONT_MAPMETHOD_ARRAY:
        index = map->mapInfo[c - map->firstChar];
        break;
    case FONT_MAPMETHOD_SCAN:
        const CMapInfoScan* scanInfo =
            reinterpret_cast<const CMapInfoScan*>(map->mapInfo);

        const CMapScanEntry* first = scanInfo->entries;
        const CMapScanEntry* last = &scanInfo->entries[scanInfo->num - 1];

        while (first <= last) {
            const CMapScanEntry* mid = first + (last - first) / 2;

            if (mid->code < c) {
                first = mid + 1;
            } else if (c < mid->code) {
                last = mid - 1;
            } else {
                return mid->index;
            }
        }

        break;
    }

    return index;
}

const CharWidths& ResFontBase::GetCharWidthsFromIndex(u16 index) const {
    for (const FontWidth* pWidth = mFontInfo->fontWidth; pWidth != NULL;
         pWidth = pWidth->next) {
        if (pWidth->firstChar <= index && index <= pWidth->lastChar) {
            return GetCharWidthsFromIndex(pWidth, index);
        }
    }

    return mFontInfo->defaultWidth;
}

const CharWidths& ResFontBase::GetCharWidthsFromIndex(const FontWidth* width,
                                                      u16 index) const {
    return width->widthTable[index - width->firstChar];
}

void ResFontBase::GetGlyphFromIndex(Glyph* glyph, u16 index) const {
    const FontTextureGlyph* texGlyph = mFontInfo->fontGlyph;

    u32 cellsInASheet = texGlyph->sheetRow * texGlyph->sheetLine;

    u32 cellNo = index % cellsInASheet;
    u32 sheetNo = index / cellsInASheet;

    u32 cellUnitX = cellNo % texGlyph->sheetRow;
    u32 cellUnitY = cellNo / texGlyph->sheetRow;

    u32 cellPixelX = cellUnitX * (texGlyph->cellWidth + 1);
    u32 cellPixelY = cellUnitY * (texGlyph->cellHeight + 1);

    glyph->texture = texGlyph->sheetImage + (sheetNo * texGlyph->sheetSize);

    glyph->widths = GetCharWidthsFromIndex(index);
    glyph->height = texGlyph->cellHeight;

    glyph->format = static_cast<GXTexFmt>(texGlyph->sheetFormat);

    glyph->texWidth = texGlyph->sheetWidth;
    glyph->texHeight = texGlyph->sheetHeight;

    glyph->cellX = cellPixelX + 1;
    glyph->cellY = cellPixelY + 1;
}

} // namespace detail
} // namespace ut
} // namespace nw4hbm
