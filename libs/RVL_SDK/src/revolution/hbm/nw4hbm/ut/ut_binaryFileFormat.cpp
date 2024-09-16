#pragma ipa file // TODO: REMOVE AFTER REFACTOR

#include <nw4hbm/ut.h>

namespace nw4hbm {
namespace ut {

bool IsValidBinaryFile(const BinaryFileHeader* header, u32 magic, u16 version,
                       u16 numBlocks) {
    if (header->magic != magic) {
        return false;
    }

    if (header->byteOrder != NW4R_BYTEORDER_BIG) {
        return false;
    }

    if (header->version != version) {
        return false;
    }

    if (header->fileSize <
        sizeof(BinaryFileHeader) + (numBlocks * sizeof(BinaryBlockHeader))) {
        return false;
    }

    if (header->numBlocks < numBlocks) {
        return false;
    }

    return true;
}

//unused
bool IsReverseEndianBinaryFile(const BinaryFileHeader* fileHeader) {
    return false;
}

//unused
BinaryBlockHeader* GetNextBinaryBlockHeader(BinaryFileHeader* fileHeader, BinaryBlockHeader* blockHeader) {
    return nullptr;
}

} // namespace ut
} // namespace nw4hbm
