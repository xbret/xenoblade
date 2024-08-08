#pragma once

#include "types.h"
#include "monolib/CNBanner.hpp"

class CNandData {
public:
	CNBanner mNandBanner;

	CNandData() : mNandBanner() {
		mNandBanner.func_804F52F8(nandTitleText);
		mNandBanner.func_804F5304(nandDescriptionText);
		mNandBanner.func_804F5310(nandBannerFilename);
		mNandBanner.func_804F531C(nandIconTextureFilenames, nandIconTextureSomething);
		mNandBanner.unkC &= ~0x10;
	}

	~CNandData(){
	}

private:
	static const char* nandTitleText;
	static const char* nandDescriptionText;
	static const char* nandBannerFilename;
	static const char* nandIconTextureFilenames[];
	static int nandIconTextureSomething[];
	static CNandData instance;
};
