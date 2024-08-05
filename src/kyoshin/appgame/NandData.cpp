#include "kyoshin/appgame/NandData.hpp"

static const char* nandTitleText = "ゼノブレイド";
static const char* nandDescriptionText = "巨神と機神　モナドが未来を斬り開く";
static const char* nandBannerFilename = "bannerTexture.tpl";
static const char* nandIconTextureFilenames[] = {
	"iconTexture[0].tpl",
	"iconTexture[1].tpl",
	"iconTexture[2].tpl",
	"iconTexture[3].tpl",
	"iconTexture[4].tpl",
	"iconTexture[5].tpl",
	"iconTexture[6].tpl",
	"iconTexture[7].tpl",
	nullptr
};
static int nandIconTextureSomething[] = {
	2,
	2,
	2,
	2,
	2,
	2,
	2,
	2,
	0
};

CNBanner nBanner = CNBanner(nandTitleText, nandDescriptionText, nandBannerFilename, nandIconTextureFilenames, nandIconTextureSomething);


