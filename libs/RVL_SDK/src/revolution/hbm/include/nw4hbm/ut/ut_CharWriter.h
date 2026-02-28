#ifndef NW4HBM_UT_CHAR_WRITER_H
#define NW4HBM_UT_CHAR_WRITER_H
#include <nw4hbm/types_nw4hbm.h>

#include <nw4hbm/ut/ut_Color.h>

#include <nw4hbm/math.h>

#include <revolution/GX.h>

namespace nw4hbm {
namespace ut {

// Forward declarations
class Font;
struct Glyph;

class CharWriter {
public:
    enum GradationMode {
        GRADMODE_NONE,
        GRADMODE_H,
        GRADMODE_V,

        GRADMODE_MAX
    };

public:
    CharWriter();
    ~CharWriter();

    void SetupGX();
    void EnableLinearFilter(bool atSmall, bool atLarge);
    f32 Print(u16 ch);

    void SetColorMapping(Color min, Color max);

    void ResetColorMapping() {
        SetColorMapping(DEFAULT_COLOR_MAPPING_MIN, DEFAULT_COLOR_MAPPING_MAX);
    }

    GradationMode GetGradationMode() const {
        return mTextColor.gradationMode;
    }
    void SetGradationMode(GradationMode mode);

    Color GetTextColor() const {
        return NULL;
    }
    void SetTextColor(Color start) {
        mTextColor.start = start;
        UpdateVertexColor();
    }

    void SetTextColor(Color start, Color end);

    Color GetGradationStartColor() const {
        return NULL;
    }

    Color GetGradationEndColor() const {
        return NULL;
    }

    f32 GetScaleH() const;
    f32 GetScaleV() const;

    void SetScale(f32 x, f32 y) {
        mScale.x = x;
        mScale.y = y;
    }

    void SetScale(f32 hvScale) {
        mScale.x = hvScale;
        mScale.y = hvScale;
    }

    f32 GetCursorX() const;
    void SetCursorX(f32 x);

    f32 GetCursorY() const;
    void SetCursorY(f32 y);

    f32 GetCursorZ() const {
        return mCursorPos.z;
    }
    void SetCursorZ(f32 z) {
        mCursorPos.z = z;
    }

    void SetCursor(f32 x, f32 y);
    void SetCursor(f32 x, f32 y, f32 z) {
        mCursorPos.x = x;
        mCursorPos.y = y;
        mCursorPos.z = z;
    }

    void MoveCursorX(f32 dx);
    void MoveCursorY(f32 dy);
    void MoveCursorZ(f32 dz) {
        mCursorPos.z += dz;
    }

    void MoveCursor(f32 dx, f32 dy) {
        mCursorPos.x += dx;
        mCursorPos.y += dy;
    }

    void MoveCursor(f32 dx, f32 dy, f32 dz) {
        mCursorPos.x += dx;
        mCursorPos.y += dy;
        mCursorPos.z += dz;
    }

    void SetAlpha(u8 alpha) {
        mAlpha = alpha;
        UpdateVertexColor();
    }
    u8 GetAlpha() const {
        return mAlpha;
    }

    void EnableFixedWidth(bool enable) {
        mIsWidthFixed = enable;
    }
    bool IsWidthFixed() const;

    void SetFixedWidth(f32 width) {
        mFixedWidth = width;
    }
    f32 GetFixedWidth() const;

    bool IsLinearFilterEnableAtSmall() const {
        return false;
    }

    bool IsLinearFilterEnableAtLarge() const {
        return false;
    }

    void SetFont(const Font& rFont);
    const Font* GetFont() const;

    void SetFontSize(f32 width, f32 height);
    void SetFontSize(f32 height);

    f32 GetFontWidth() const;
    f32 GetFontHeight() const;
    f32 GetFontAscent() const;
    f32 GetFontDescent() const;

    
    //unused
    Color GetColorMappingMin() const {
        return mColorMapping.min;
    }

    //unused
    Color GetColorMappingMax() const {
        return mColorMapping.max;
    }

private:
    struct ColorMapping {
        Color min; // at 0x0
        Color max; // at 0x4
    };

    struct VertexColor {
        Color lu; // at 0x0
        Color ru; // at 0x4
        Color ld; // at 0x8
        Color rd; // at 0xC
    };

    struct TextColor {
        Color start;                 // at 0x0
        Color end;                   // at 0x4
        GradationMode gradationMode; // at 0x8
    };

    struct TextureFilter {
        GXTexFilter atSmall; // at 0x0
        GXTexFilter atLarge; // at 0x4

        bool operator!=(const TextureFilter& rOther) const {
            return atSmall != rOther.atSmall || atLarge != rOther.atLarge;
        }
    };

    struct LoadingTexture {
        GXTexMapID slot;      // at 0x0
        void* texture;        // at 0x4
        TextureFilter filter; // at 0x8

        bool operator!=(const LoadingTexture& rOther) const {
            return slot != rOther.slot || texture != rOther.texture ||
                   filter != rOther.filter;
        }

        void Reset() {
            slot = GX_TEXMAP_NULL;
            texture = NULL;
        }
    };

    static const u32 DEFAULT_COLOR_MAPPING_MIN = 0x00000000;
    static const u32 DEFAULT_COLOR_MAPPING_MAX = 0xFFFFFFFF;

private:
    static void SetupVertexFormat();
    static void SetupGXDefault();
    static void SetupGXWithColorMapping(Color min, Color max);
    static void SetupGXForI();
    static void SetupGXForRGBA();

    void UpdateVertexColor();

    void DrawGlyph(const Glyph& glyph);
    void PrintGlyph(f32 x, f32 y, f32 z, const Glyph& rGlyph);

    void LoadTexture(const Glyph& rGlyph, GXTexMapID slot);
    void ResetTextureCache() {
        mLoadingTexture.Reset();
    }

private:
    ColorMapping mColorMapping;   // at 0x0
    VertexColor mVertexColor;     // at 0x8
    TextColor mTextColor;         // at 0x18
    math::VEC2 mScale;            // at 0x24
    math::VEC3 mCursorPos;        // at 0x2C
    TextureFilter mFilter;        // at 0x38
    u8 PADDING_0x40[0x42 - 0x40]; // at 0x40
    u8 mAlpha;                    // at 0x42
    bool mIsWidthFixed;           // at 0x43
    f32 mFixedWidth;              // at 0x44
    const Font* mFont;            // at 0x48

    static LoadingTexture mLoadingTexture;
};

} // namespace ut
} // namespace nw4hbm

#endif
