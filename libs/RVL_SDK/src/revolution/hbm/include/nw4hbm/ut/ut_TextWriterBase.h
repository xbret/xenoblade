#ifndef NW4HBM_UT_TEXT_WRITER_BASE_H
#define NW4HBM_UT_TEXT_WRITER_BASE_H
#include <cstdio>
#include <cwchar>
#include <nw4hbm/math.h>
#include <nw4hbm/types_nw4hbm.h>
#include <nw4hbm/ut/ut_CharWriter.h>
#include <nw4hbm/ut/ut_TagProcessorBase.h>

namespace nw4hbm {
namespace ut {

template <typename T> class TextWriterBase : public CharWriter {
public:
    static T* GetBuffer() { return mFormatBuffer; }
    static T* SetBuffer(T* buffer, u32 size) {
        T* old = mFormatBuffer;
        mFormatBuffer = buffer;
        mFormatBufferSize = size;
        return old;
    }

    static u32 GetBufferSize() { return mFormatBufferSize; }

    TextWriterBase();
    ~TextWriterBase();

    f32 GetWidthLimit() const { return mWidthLimit; }
    void SetWidthLimit(f32 limit) { mWidthLimit = limit; }
    void ResetWidthLimit() { mWidthLimit = NW4R_MATH_FLT_MAX; }

    f32 GetCharSpace() const { return mCharSpace; }
    void SetCharSpace(f32 space) { mCharSpace = space; }

    f32 GetLineSpace() const { return mLineSpace; }
    void SetLineSpace(f32 space) { mLineSpace = space; }

    int GetTabWidth() const DECOMP_DONT_INLINE { return mTabWidth; }
    void SetTabWidth(int width) { mTabWidth = width; }

    void SetDrawFlag(u32 flag) { mDrawFlag = flag; }
    bool IsDrawFlagSet(u32 mask, u32 flag) const {
        return (mDrawFlag & mask) == flag;
    }

    TagProcessorBase<T>* GetTagProcessor() const { return mTagProcessor; }
    void SetTagProcessor(TagProcessorBase<T>* processor) {
        mTagProcessor = processor;
    }
    void ResetTagProcessor() { mTagProcessor = &mDefaultTagProcessor; }

    f32 GetLineHeight() const;

    f32 CalcLineWidth(const T* str, int length);
    f32 CalcStringWidth(const T* str, int length) const;
    void CalcStringRect(Rect* pRect, const T* str, int length) const;

    int VSNPrintf(T* buffer, u32 count, const T* format, std::va_list args);
    f32 VPrintf(const T* format, std::va_list args);
    f32 Print(const T* str, int length);

    bool CalcLineRectImpl(Rect* pRect, const T** pStr, int length);
    void CalcStringRectImpl(Rect* pRect, const T* str, int length);

    f32 PrintImpl(const T* str, int length);
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
                                           const char* format, std::va_list args) {
    return std::vsnprintf(buffer, count, format, args);
}

template <>
inline int TextWriterBase<wchar_t>::VSNPrintf(wchar_t* buffer, u32 count,
                                              const wchar_t* format,
                                              std::va_list args) {
    return std::vswprintf(buffer, count, format, args);
}

} // namespace ut
} // namespace nw4hbm

#endif
