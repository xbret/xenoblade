#ifndef NW4HBM_UT_CHAR_WRITER_H
#define NW4HBM_UT_CHAR_WRITER_H
#include <nw4hbm/math.h>
#include <nw4hbm/types_nw4hbm.h>
#include <nw4hbm/ut/ut_Color.h>
#include <revolution/GX.h>

namespace nw4hbm {
namespace ut {

class CharWriter {
public:
    enum GradationMode { GRADMODE_NONE, GRADMODE_H, GRADMODE_V };

    struct ColorMapping {
        Color min; // at 0x0
        Color max; // at 0x4
    };

    struct VertexColor {
        Color tl; // at 0x0
        Color tr; // at 0x4
        Color bl; // at 0x8
        Color br; // at 0xC
    };

    struct TextColor {
        Color start;            // at 0x0
        Color end;              // at 0x4
        GradationMode gradMode; // at 0x8
    };

    struct TextureFilter {
        GXTexFilter atSmall; // at 0x0
        GXTexFilter atLarge; // at 0x4

        bool operator!=(const TextureFilter& other) const {
            return atSmall != other.atSmall || atLarge != other.atLarge;
        }
    };

    struct LoadingTexture {
        GXTexMapID slot;      // at 0x0
        void* texture;        // at 0x4
        TextureFilter filter; // at 0x8

        bool operator!=(const LoadingTexture& other) const {
            return slot != other.slot || texture != other.texture ||
                   filter != other.filter;
        }

        void Reset() {
            slot = GX_TEXMAP_NULL;
            texture = NULL;
        }
    };

public:
    static void SetupVertexFormat();
    static void SetupGXDefault();
    static void SetupGXWithColorMapping(Color min, Color max);
    static void SetupGXForI();
    static void SetupGXForRGBA();

    CharWriter();
    ~CharWriter();

    void SetFont(const Font& font);
    const Font* GetFont() const;

    void SetColorMapping(Color min, Color max);
    Color GetColorMappingMin() const;
    Color GetColorMappingMax() const;
    void ResetColorMapping();

    void ResetTextureCache();
    
    void SetAlpha(u8 alpha);
    u8 GetAlpha() const;

    void SetGradationMode(GradationMode mode);
    GradationMode GetGradationMode() const;

    void SetTextColor(Color start);
    void SetTextColor(Color start, Color end);

    Color GetTextColor() const;
    Color GetGradationStartColor() const;
    Color GetGradationEndColor() const;

    f32 GetScaleH() const;
    f32 GetScaleV() const;

    void SetScale(f32 hScale, f32 vScale);
    void SetScale(f32 hvScale);

    void EnableFixedWidth(bool enable);
    bool IsWidthFixed() const;

    void SetFixedWidth(f32 width);
    f32 GetFixedWidth() const;

    void SetCursor(f32 x, f32 y);
    void SetCursor(f32 x, f32 y, f32 z);
    void MoveCursor(f32 x, f32 y);
    void MoveCursor(f32 x, f32 y, f32 z);
    void SetCursorX(f32 x);
    void SetCursorY(f32 y);
    void SetCursorZ(f32 z);
    void MoveCursorX(f32 dx);
    void MoveCursorY(f32 dy);
    void MoveCursorZ(f32 dz);
    f32 GetCursorX() const;
    f32 GetCursorY() const;
    f32 GetCursorZ() const;

    void SetupGX();
    void SetFontSize(f32 width, f32 height);
    void SetFontSize(f32 height);
    f32 GetFontWidth() const;
    f32 GetFontHeight() const;
    f32 GetFontAscent() const;
    f32 GetFontDescent() const;

    void EnableLinearFilter(bool atSmall, bool atLarge);
    bool IsLinearFilterEnableAtSmall() const;
    bool IsLinearFilterEnableAtLarge() const;

    f32 Print(u16 code);
    void DrawGlyph(const Glyph& glyph);
    void PrintGlyph(f32 x, f32 y, f32 z, const Glyph& glyph);
    void LoadTexture(const Glyph& glyph, GXTexMapID slot);
    void UpdateVertexColor();

private:
    ColorMapping mColorMapping; // at 0x0
    VertexColor mVertexColor;   // at 0x8
    TextColor mTextColor;       // at 0x18
    math::VEC2 mScale;          // at 0x24
    math::VEC3 mCursorPos;      // at 0x2C
    TextureFilter mFilter;      // at 0x38
    u8 padding[2];              // at 0x40
    u8 mAlpha;                  // at 0x42
    bool mIsWidthFixed;         // at 0x43
    f32 mFixedWidth;            // at 0x44
    const Font* mFont;          // at 0x48

    static LoadingTexture mLoadingTexture;
};

} // namespace ut
} // namespace nw4hbm

#endif
