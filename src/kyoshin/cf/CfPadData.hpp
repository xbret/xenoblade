#pragma once

#include <types.h>
#include "monolib/core.hpp"

namespace cf{
    //Separate deadzone value specifically for CfPadData
    static const float CFPAD_STICK_DEADZONE = 0.5f;

    //TODO: unsure if it inherits CPad or not
    //max size: 0x128
    struct CfPadData {
        CPad mPad; //0x0
        //Is having a separate set of flags *really* necessary, Monolithsoft?
        u32 mHeldButtonFlags; //0xF8
        u32 mPrevHeldButtonFlags; //0xFC
        u32 mPressedButtonFlags; //0x100
        u32 mTurboPressButtonFlags; //0x104
        u8 mButtonHoldTimersTurbo[MAX_PAD_INPUT_FLAGS]; //0x108
    };
}
