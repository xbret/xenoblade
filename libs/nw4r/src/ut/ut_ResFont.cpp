#pragma ipa file // TODO: REMOVE AFTER REFACTOR

#include <nw4r/ut.h>

namespace nw4r {
namespace ut {
namespace {

template <typename T> void ResolveOffset(T*& ptr, void* base) {
    ptr = reinterpret_cast<T*>(static_cast<char*>(base) +
                               reinterpret_cast<std::ptrdiff_t>(ptr));
}

} // namespace

ResFont::ResFont() {}

ResFont::~ResFont() {}

bool ResFont::SetResource(void* buffer) {
    BinaryFileHeader* header = static_cast<BinaryFileHeader*>(buffer);
    FontInformation* info = NULL;

    if (!IsManaging(NULL)) {
        return false;
    }

    if (header->signature == SIGNATURE_UNPACKED) {
        BinaryBlockHeader* block = reinterpret_cast<BinaryBlockHeader*>(
            reinterpret_cast<char*>(header) + header->headerSize);

        for (int i = 0; i < header->dataBlocks; i++) {
            if (block->kind == SIGNATURE_FONTINFO) {
                info = reinterpret_cast<FontInformation*>(block + 1);
                break;
            }

            block = reinterpret_cast<BinaryBlockHeader*>(
                reinterpret_cast<char*>(block) + block->size);
        }
    } else {
        if (header->version == NW4R_VERSION(1, 4)) {
            if (!IsValidBinaryFile(header, SIGNATURE, NW4R_VERSION(1, 4), 2)) {
                return false;
            }
        } else if (!IsValidBinaryFile(header, SIGNATURE, NW4R_VERSION(1, 2),
                                      2)) {
            return false;
        }

        info = Rebuild(header);
    }

    if (info == NULL) {
        return false;
    }

    SetResourceBuffer(header, info);
    InitReaderFunc(GetEncoding());

    return true;
}

FontInformation* ResFont::Rebuild(BinaryFileHeader* header) {
    BinaryBlockHeader* block = reinterpret_cast<BinaryBlockHeader*>(
        reinterpret_cast<char*>(header) + header->headerSize);

    FontInformation* info = NULL;

    for (int i = 0; i < header->dataBlocks; i++) {

        switch (block->kind) {
        case SIGNATURE_FONTINFO: {
            info = reinterpret_cast<FontInformation*>(block + 1);
            ResolveOffset<FontTextureGlyph>(info->pGlyph, header);

            if (info->pWidth != 0) {
                ResolveOffset<FontWidth>(info->pWidth, header);
            }

            if (info->pMap != 0) {
                ResolveOffset<FontCodeMap>(info->pMap, header);
            }
            break;
        }

        case SIGNATURE_TEXGLYPH: {
            ResolveOffset<u8>(
                reinterpret_cast<FontTextureGlyph*>(block + 1)->sheetImage,
                header);
            break;
        }

        case SIGNATURE_CHARWIDTH: {
            FontWidth* width = reinterpret_cast<FontWidth*>(block + 1);
            if (width->pNext != 0) {
                ResolveOffset<FontWidth>(width->pNext, header);
            }
            break;
        }

        case SIGNATURE_CHARMAP: {
            FontCodeMap* map = reinterpret_cast<FontCodeMap*>(block + 1);
            if (map->pNext != 0) {
                ResolveOffset<FontCodeMap>(map->pNext, header);
            }
            break;
        }

        case SIGNATURE_GLGR: {
            break;
        }

        default: {
            return NULL;
        }
        }

        block = reinterpret_cast<BinaryBlockHeader*>(
            reinterpret_cast<char*>(block) + block->size);
    }

    header->signature = SIGNATURE_UNPACKED;
    return info;
}

} // namespace ut
} // namespace nw4r
