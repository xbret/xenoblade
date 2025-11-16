#pragma once

#include "types.h"
#include "monolib/CNBanner.hpp"

class CNandData {
public:
    CNBanner mNandBanner;

    CNandData() : mNandBanner() {
        mNandBanner.func_804F52F8(scNandTitleText);
        mNandBanner.func_804F5304(scNandDescriptionText);
        mNandBanner.func_804F5310(scNandBannerFilename);
        mNandBanner.func_804F531C(sNandIconTextureFilenames, sNandIconTextureSomething);
        mNandBanner.unkC &= ~0x10;
    }

    ~CNandData(){
    }

private:
    static const char* scNandTitleText;
    static const char* scNandDescriptionText;
    static const char* scNandBannerFilename;
    static const char* sNandIconTextureFilenames[];
    static int sNandIconTextureSomething[];
    static CNandData sInstance;
};
