#ifndef NW4R_UT_TEXT_WRITER_BASE_H
#define NW4R_UT_TEXT_WRITER_BASE_H
#include <nw4r/types_nw4r.h>

#include <nw4r/ut/ut_CharWriter.h>
#include <nw4r/ut/ut_TagProcessorBase.h>

#include <nw4r/math.h>

#include <cstdio>
#include <cwchar>

namespace nw4r {
namespace ut {

template <typename T> class TextWriterBase : public CharWriter {
public:
    enum DrawFlags {
        // Align text lines
        DRAWFLAG_ALIGN_TEXT_CENTER = (1 << 0),
        DRAWFLAG_ALIGN_TEXT_RIGHT = (1 << 1),

        // Align text block
        DRAWFLAG_ALIGN_H_CENTER = (1 << 4),
        DRAWFLAG_ALIGN_H_RIGHT = (1 << 5),
        DRAWFLAG_ALIGN_V_CENTER = (1 << 8),
        DRAWFLAG_ALIGN_V_TOP = (1 << 9),
    };

public:
    TextWriterBase();
    ~TextWriterBase();

    f32 GetWidthLimit() const {
        return mWidthLimit;
    }
    void SetWidthLimit(f32 limit) {
        mWidthLimit = limit;
    }
    void ResetWidthLimit() {
        mWidthLimit = NW4R_MATH_FLT_MAX;
    }

    f32 GetCharSpace() const {
        return mCharSpace;
    }
    void SetCharSpace(f32 space) {
        mCharSpace = space;
    }

    f32 GetLineSpace() const {
        return mLineSpace;
    }
    void SetLineSpace(f32 space) {
        mLineSpace = space;
    }

    int GetTabWidth() const {
        return mTabWidth;
    }
    void SetTabWidth(int width) {
        mTabWidth = width;
    }

    u32 GetDrawFlag() const {
        return mDrawFlag;
    }
    void SetDrawFlag(u32 flag) {
        mDrawFlag = flag;
    }

    TagProcessorBase<T>* GetTagProcessor() const {
        return mTagProcessor;
    }
    void SetTagProcessor(TagProcessorBase<T>* pProcessor) {
        mTagProcessor = pProcessor;
    }
    void ResetTagProcessor() {
        mTagProcessor = &mDefaultTagProcessor;
    }

    f32 GetLineHeight() const;

    f32 CalcLineWidth(const T* str, int length);
    f32 CalcStringWidth(const T* str, int length) const;
    void CalcStringRect(Rect* pRect, const T* str, int length) const;

    int VSNPrintf(T* buffer, u32 count, const T* format, std::va_list args);
    f32 VPrintf(const T* format, std::va_list args);
    f32 Print(const T* str, int length);
    f32 PrintMutable(const T* str, int length);

    static T* GetBuffer() {
        return mFormatBuffer;
    }
    static T* SetBuffer(T* buffer, u32 size) {
        T* old = mFormatBuffer;
        mFormatBuffer = buffer;
        mFormatBufferSize = size;
        return old;
    }

    static u32 GetBufferSize() {
        return mFormatBufferSize;
    }

private:
    static const int DEFAULT_FORMAT_BUFFER_SIZE = 256;

    static const u32 DRAWFLAG_MASK_TEXT =
        DRAWFLAG_ALIGN_TEXT_RIGHT | DRAWFLAG_ALIGN_TEXT_CENTER;

    static const u32 DRAWFLAG_MASK_H =
        DRAWFLAG_ALIGN_H_CENTER | DRAWFLAG_ALIGN_H_RIGHT;

    static const u32 DRAWFLAG_MASK_V =
        DRAWFLAG_ALIGN_V_CENTER | DRAWFLAG_ALIGN_V_TOP;

    static const u32 DRAWFLAG_MASK_ALL =
        DRAWFLAG_MASK_TEXT | DRAWFLAG_MASK_H | DRAWFLAG_MASK_V;

private:
    bool IsDrawFlagSet(u32 mask, u32 flag) const {
        return (mDrawFlag & mask) == flag;
    }

    bool CalcLineRectImpl(Rect* pRect, const T** pStr, int length);
    void CalcStringRectImpl(Rect* pRect, const T* str, int length);

    f32 PrintImpl(const T* str, int length, bool bMutable);
    f32 AdjustCursor(f32* xOrigin, f32* yOrigin, const T* str, int length);

private:
    f32 mWidthLimit;                    // at 0x4C
    f32 mCharSpace;                     // at 0x50
    f32 mLineSpace;                     // at 0x54
    int mTabWidth;                      // at 0x58
    u32 mDrawFlag;                      // at 0x5C
    TagProcessorBase<T>* mTagProcessor; // at 0x60

    static T* mFormatBuffer;
    static u32 mFormatBufferSize;
    static TagProcessorBase<T> mDefaultTagProcessor;
};

template <>
inline int TextWriterBase<char>::VSNPrintf(char* buffer, u32 count,
                                           const char* format,
                                           std::va_list args) {
    return std::vsnprintf(buffer, count, format, args);
}

template <>
inline int TextWriterBase<wchar_t>::VSNPrintf(wchar_t* buffer, u32 count,
                                              const wchar_t* format,
                                              std::va_list args) {
    return std::vswprintf(buffer, count, format, args);
}

} // namespace ut
} // namespace nw4r

#endif
