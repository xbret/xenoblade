#pragma once

#include <types.h>
#include <revolution/TPL.h>

namespace ml{

    /* Wrapper TPL file struct to allow for easy access to the image header data in simple single image
    TPL files without needing to resort to raw pointer/macro abuse. Note that this struct only is valid for
    TPL files that have a single image in them and don't use a palette based format. */
    struct CTPLData{
        TPLPalette fileHeader; //0x0
        TPLDescriptor descriptor; //0xC
        TPLHeader imageHeader; //0x14
    };

}
