#ifndef NW4HBM_UT_CHAR_STRM_READER_H
#define NW4HBM_UT_CHAR_STRM_READER_H
#include <revolution/HBM/nw4hbm/types_nw4hbm.h>

namespace nw4hbm {
namespace ut {

class CharStrmReader {
public:
    typedef u16 (CharStrmReader::*ReadFunc)();

public:
    explicit CharStrmReader(ReadFunc pFunc)
        : mCharStrm(NULL), mReadFunc(pFunc) {}

    ~CharStrmReader() {}

    u16 ReadNextCharUTF8();
    u16 ReadNextCharUTF16();
    u16 ReadNextCharCP1252();
    u16 ReadNextCharSJIS();

    u16 Next() {
        return (this->*mReadFunc)();
    }

    const void* GetCurrentPos() const {
        return mCharStrm;
    }

    void Set(const char* pStrm) {
        mCharStrm = pStrm;
    }
    void Set(const wchar_t* pStrm) {
        mCharStrm = pStrm;
    }

private:
    template <typename T> T GetChar(int offset) const {
        return static_cast<const T*>(mCharStrm)[offset];
    }

    template <typename T> void StepStrm(int offset) {
        static_cast<const T*>(mCharStrm) += offset;
    }

private:
    const void* mCharStrm; // at 0x0
    ReadFunc mReadFunc;    // at 0x4
};

} // namespace ut
} // namespace nw4hbm

#endif
