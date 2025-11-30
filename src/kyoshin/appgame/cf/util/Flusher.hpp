#pragma once

#include <types.h>

namespace cf {
    //size: 0xC
    template <typename T>
    class Flusher {
    public:

        u32 unk0;
        u32 unk4;
        //0x8: vtable

        Flusher() : unk0(0), unk4(0) {
        }
        virtual ~Flusher(){}
    };
}
