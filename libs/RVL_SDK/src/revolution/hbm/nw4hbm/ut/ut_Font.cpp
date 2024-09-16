#pragma ipa file // TODO: REMOVE AFTER REFACTOR

#include <nw4hbm/ut.h>

namespace nw4hbm {
namespace ut {

void Font::InitReaderFunc(FontEncoding encode) {
    switch (encode) {
    case FONT_ENCODE_UTF8:
        mReadFunc = &CharStrmReader::ReadNextCharUTF8;
        break;
    case FONT_ENCODE_UTF16:
        mReadFunc = &CharStrmReader::ReadNextCharUTF16;
        break;
    case FONT_ENCODE_SJIS:
        mReadFunc = &CharStrmReader::ReadNextCharSJIS;
        break;
    case FONT_ENCODE_CP1252:
    default:
        mReadFunc = &CharStrmReader::ReadNextCharCP1252;
        break;
    }
}

} // namespace ut
} // namespace nw4hbm
