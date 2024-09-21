#pragma ipa file // TODO: REMOVE AFTER REFACTOR

#include <nw4r/ut.h>

namespace nw4r {
namespace ut {

bool IsValidBinaryFile(const BinaryFileHeader* header, u32 signature, u16 version,
                       u16 minBlocks) {
    if (header->signature != signature) {
        return false;
    }

    if (header->byteOrder != NW4R_BYTEORDER_NATIVE) {
        return false;
    }

    if (header->version != version) {
        return false;
    }

    if (header->fileSize <
        sizeof(BinaryFileHeader) + (minBlocks * sizeof(BinaryBlockHeader))) {
        return false;
    }

    if (header->dataBlocks < minBlocks) {
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
} // namespace nw4r
