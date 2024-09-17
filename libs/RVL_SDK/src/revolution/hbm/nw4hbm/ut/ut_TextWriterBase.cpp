#pragma ipa file // TODO: REMOVE AFTER REFACTOR

#include <nw4hbm/ut.h>

namespace nw4hbm {
namespace ut {

template <typename T> T* TextWriterBase<T>::mFormatBuffer;
template <typename T> u32 TextWriterBase<T>::mFormatBufferSize = 0x100;

template <typename T>
TagProcessorBase<T> TextWriterBase<T>::mDefaultTagProcessor;

template <typename T>
TextWriterBase<T>::TextWriterBase()
    : mCharSpace(0.0f),
      mWidthLimit(NW4R_MATH_FLT_MAX),
      mLineSpace(0.0f),
      mTabWidth(4),
      mDrawFlag(0),
      mTagProcessor(&mDefaultTagProcessor) {}

template <typename T> TextWriterBase<T>::~TextWriterBase() {}

template <typename T> f32 TextWriterBase<T>::GetLineHeight() const {
    const Font* font = GetFont();
    int linefeed = font != NULL ? font->GetLineFeed() : 0;
    return mLineSpace + GetScaleV() * linefeed;
}

template <typename T>
f32 TextWriterBase<T>::VPrintf(const T* format, std::va_list args) {
    T* buffer;

    if (mFormatBuffer != NULL) {
        buffer = mFormatBuffer;
    } else {
        buffer = static_cast<T*>(__alloca(mFormatBufferSize));
    }

    int length = VSNPrintf(buffer, mFormatBufferSize, format, args);
    return Print(buffer, length);
}

template <typename T> f32 TextWriterBase<T>::Print(const T* str, int length) {
    TextWriterBase<T> myCopy(*this);

    f32 width = myCopy.PrintImpl(str, length);
    SetCursor(myCopy.GetCursorX(), myCopy.GetCursorY());

    return width;
}

template <typename T>
f32 TextWriterBase<T>::CalcLineWidth(const T* str, int length) {
    Rect rect;
    TextWriterBase<T> myCopy(*this);

    myCopy.SetCursor(0.0f, 0.0f);
    myCopy.CalcLineRectImpl(&rect, &str, length);

    return rect.GetWidth();
}

template <typename T>
bool TextWriterBase<T>::CalcLineRectImpl(Rect* pRect, const T** pStr, int length) {
    const T* const str = *pStr;
    const T* const end = str + length;
    bool bUseLimit = mWidthLimit < NW4R_MATH_FLT_MAX;

    PrintContext<T> context = {this, str};

    f32 x = 0.0f;
    bool bCharSpace = false;
    bool bOverLimit = false;

    const T* prevStreamPos = NULL;
    Rect prevRect;

    CharStrmReader reader = GetFont()->GetCharStrmReader();

    pRect->left = 0.0f;
    pRect->right = 0.0f;
    pRect->top = Min(0.0f, GetLineHeight());
    pRect->bottom = Max(0.0f, GetLineHeight());
    prevRect = *pRect;

    reader.Set(str);
    prevStreamPos = NULL;

    u16 code = reader.Next();

    while (static_cast<const T*>(reader.GetCurrentPos()) <= end) {
        if (code < ' ') {
            Rect rect(x, 0.0f, 0.0f, 0.0f);
            context.str = static_cast<const T*>(reader.GetCurrentPos());
            context.flags = bCharSpace ? 0 : PRINTFLAGS_CHARSPACE;
            SetCursorX(x);

            if (bUseLimit && code != '\n' && prevStreamPos != NULL) {
                PrintContext<T> context2 = context;
                TextWriterBase<T> myCopy(*this);

                Rect rect;
                context2.writer = &myCopy;
                mTagProcessor->CalcRect(&rect, code, &context2);

                if (rect.GetWidth() > 0.0f &&
                    myCopy.GetCursorX() - context.x > mWidthLimit) {
                    bOverLimit = true;
                    code = '\n';
                    reader.Set(prevStreamPos);
                    continue;
                }
            }

            Operation oper = mTagProcessor->CalcRect(&rect, code, &context);
            reader.Set(context.str);

            pRect->left = Min(pRect->left, rect.left);
            pRect->top = Min(pRect->top, rect.top);
            pRect->right = Max(pRect->right, rect.right);
            pRect->bottom = Max(pRect->bottom, rect.bottom);

            x = GetCursorX();

            if (oper == OPERATION_END_DRAW) {
                *pStr += length;
                return false;
            }

            if (oper == OPERATION_NO_CHAR_SPACE) {
                bCharSpace = false;
            } else if (oper == OPERATION_CHAR_SPACE) {
                bCharSpace = true;
            } else if (oper == OPERATION_NEXT_LINE) {
                break;
            }
        } else {
            f32 dx = 0.0f;

            if (bCharSpace) {
                dx += GetCharSpace();
            }

            if (IsWidthFixed()) {
                dx += GetFixedWidth();
            } else {
                dx += GetFont()->GetCharWidth(code) * GetScaleH();
            }

            if (bUseLimit && prevStreamPos != NULL && x + dx > mWidthLimit) {
                bOverLimit = true;
                code = '\n';
                reader.Set(prevStreamPos);
                continue;
            }

            x += dx;
            pRect->left = Min(pRect->left, x);
            pRect->right = Max(pRect->right, x);

            bCharSpace = true;
        }

        if (bUseLimit) {
            prevStreamPos = static_cast<const T*>(reader.GetCurrentPos());
        }

        code = reader.Next();
    }

    *pStr = static_cast<const T*>(reader.GetCurrentPos());
    return bOverLimit;
}

template <typename T>
void TextWriterBase<T>::CalcStringRectImpl(Rect* pRect, const T* str, int length) {
    const T* const end = str + length;
    int remain = length;

    pRect->left = 0.0f;
    pRect->right = 0.0f;
    pRect->top = 0.0f;
    pRect->bottom = 0.0f;

    SetCursor(0.0f, 0.0f);

    do {
        Rect rect;
        CalcLineRectImpl(&rect, &str, remain);
        remain = end - str;

        pRect->left = Min(pRect->left, rect.left);
        pRect->top = Min(pRect->top, rect.top);
        pRect->right = Max(pRect->right, rect.right);
        pRect->bottom = Max(pRect->bottom, rect.bottom);
    } while (remain > 0);
}

template <typename T> f32 TextWriterBase<T>::PrintImpl(const T* str, int length) {
    f32 xOrigin = GetCursorX();
    f32 yOrigin = GetCursorY();

    bool bUseLimit = mWidthLimit < NW4R_MATH_FLT_MAX;

    f32 orgCursorX = xOrigin;
    f32 orgCursorY = yOrigin;

    f32 xCursorAdj = 0.0f;
    f32 yCursorAdj = 0.0f;

    bool bCharSpace = false;

    const T* prevStreamPos = str;
    const T* prevNewLinePos = str;

    f32 textWidth = AdjustCursor(&xOrigin, &yOrigin, str, length);

    xCursorAdj = orgCursorX - GetCursorX();
    yCursorAdj = orgCursorY - GetCursorY();

    PrintContext<T> context = {this, str, xOrigin, yOrigin};

    CharStrmReader reader = GetFont()->GetCharStrmReader();
    reader.Set(str);

    Operation operation;
    u16 code = reader.Next();

    while (static_cast<const T*>(reader.GetCurrentPos()) - str <= length) {
        if (code < ' ') {
            context.str = static_cast<const T*>(reader.GetCurrentPos());
            context.flags = bCharSpace ? 0 : PRINTFLAGS_CHARSPACE;

            if (bUseLimit && code != '\n' && prevStreamPos != prevNewLinePos) {
                PrintContext<T> context2 = context;
                TextWriterBase<T> myCopy(*this);
                Rect rect;

                context2.writer = &myCopy;
                operation = mTagProcessor->CalcRect(&rect, code, &context2);

                if (rect.GetWidth() > 0.0f &&
                    myCopy.GetCursorX() - context.x > mWidthLimit) {
                    code = '\n';
                    reader.Set(prevStreamPos);
                    continue;
                }
            }

            operation = mTagProcessor->Process(code, &context);
            if (operation == OPERATION_NEXT_LINE) {
                if (IsDrawFlagSet(0x3, 0x1)) {
                    int remain = length - (context.str - str);
                    f32 width = CalcLineWidth(context.str, remain);
                    f32 offset = (textWidth - width) / 2.0f;
                    SetCursorX(context.x + offset);
                } else if (IsDrawFlagSet(0x3, 0x2)) {
                    int remain = length - (context.str - str);
                    f32 width = CalcLineWidth(context.str, remain);
                    f32 offset = textWidth - width;
                    SetCursorX(context.x + offset);
                } else {
                    f32 width = GetCursorX() - context.x;
                    textWidth = Max(textWidth, width);
                    SetCursorX(context.x);
                }

                if (bUseLimit) {
                    prevNewLinePos = static_cast<const T*>(reader.GetCurrentPos());
                }

                bCharSpace = false;
            } else if (operation == OPERATION_NO_CHAR_SPACE) {
                bCharSpace = false;
            } else if (operation == OPERATION_CHAR_SPACE) {
                bCharSpace = true;
            } else if (operation == OPERATION_END_DRAW) {
                break;
            }

            reader.Set(context.str);
        } else {
            f32 baseY = GetCursorY();
            if (bUseLimit && prevStreamPos != prevNewLinePos) {
                f32 baseX = GetCursorX();
                f32 charSpace = bCharSpace ? GetCharSpace() : 0.0f;
                f32 charWidth = IsWidthFixed()
                                ? GetFixedWidth()
                                : GetFont()->GetCharWidth(code) * GetScaleH();
                if (baseX - xOrigin + charSpace + charWidth > mWidthLimit) {
                    code = '\n';
                    reader.Set(prevStreamPos);
                    continue;
                }
            }

            if (bCharSpace) {
                MoveCursorX(GetCharSpace());
            }

            bCharSpace = true;

            const Font* pFont = GetFont();
            f32 adj = -pFont->GetBaselinePos() * GetScaleV();
            MoveCursorY(adj);
            CharWriter::Print(code);
            SetCursorY(baseY);
        }

        if (bUseLimit) {
            prevStreamPos = static_cast<const T*>(reader.GetCurrentPos());
        }

        code = reader.Next();
    }

    f32 width = GetCursorX() - context.x;
    textWidth = Max(textWidth, width);

    if (IsDrawFlagSet(0x300, 0x100) || IsDrawFlagSet(0x300, 0x200)) {
        SetCursorY(orgCursorY);
    } else {
        MoveCursorY(yCursorAdj);
    }

    return textWidth;
}

template <typename T>
f32 TextWriterBase<T>::AdjustCursor(f32* xOrigin, f32* yOrigin, const T* str, int length) {
    f32 textWidth = 0.0f;
    f32 textHeight = 0.0f;

    if (!IsDrawFlagSet(0x333, 0x300) && !IsDrawFlagSet(0x333, 0)) {
        Rect textRect;
        CalcStringRect(&textRect, str, length);

        textWidth = textRect.left + textRect.right;
        textHeight = textRect.top + textRect.bottom;
    }

    if (IsDrawFlagSet(0x30, 0x10)) {
        *xOrigin -= textWidth / 2;
    } else if (IsDrawFlagSet(0x30, 0x20)) {
        *xOrigin -= textWidth;
    }

    if (IsDrawFlagSet(0x300, 0x100)) {
        *yOrigin -= textHeight / 2;
    } else if (IsDrawFlagSet(0x300, 0x200)) {
        *yOrigin -= textHeight;
    }

    if (IsDrawFlagSet(0x3, 0x1)) {
        SetCursorX(*xOrigin + (textWidth - CalcLineWidth(str, length)) / 2);
    } else if (IsDrawFlagSet(0x3, 0x2)) {
        SetCursorX(*xOrigin + (textWidth - CalcLineWidth(str, length)));
    } else {
        SetCursorX(*xOrigin);
    }

    if (IsDrawFlagSet(0x300, 0x300)) {
        SetCursorY(*yOrigin);
    } else {
        SetCursorY(*yOrigin + GetFontAscent());
    }

    return textWidth;
}

template <typename T>
f32 TextWriterBase<T>::CalcStringWidth(const T* str, int length) const {
    Rect rect;
    CalcStringRect(&rect, str, length);
    return rect.GetWidth();
}

template <typename T>
void TextWriterBase<T>::CalcStringRect(Rect* pRect, const T* str,
                                       int length) const {
    TextWriterBase<T> myCopy(*this);
    myCopy.CalcStringRectImpl(pRect, str, length);
}

template struct TextWriterBase<char>;
template struct TextWriterBase<wchar_t>;

} // namespace ut
} // namespace nw4hbm
