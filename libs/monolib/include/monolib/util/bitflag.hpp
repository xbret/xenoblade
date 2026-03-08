#pragma once

#include <types.h>

namespace mtl{

    template <int N>
    struct bitflag{
        static const int ENTRY_SIZE = sizeof(u32);
        static const int BIT_ARRAY_SIZE = N/ENTRY_SIZE;

        bool chk(u32 bit) const {
            u32 index = bit/ENTRY_SIZE;
            u32 entryBit = bit % ENTRY_SIZE;

            return mBitArray[index] & (1 << entryBit);
        }

        bool get(u32 bit) const {
            return chk(bit);
        }

        void set(u32 bit) {
            u32 index = bit/ENTRY_SIZE;
            u32 entryBit = bit % ENTRY_SIZE;

            mBitArray[index] |= (1 << entryBit);
        }

        void clr(u32 bit) {
            u32 index = bit/ENTRY_SIZE;
            u32 entryBit = bit % ENTRY_SIZE;

            mBitArray[index] &= ~(1 << entryBit);
        }

        u32 mBitArray[BIT_ARRAY_SIZE];
    };

}
