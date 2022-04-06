#include "kyoshin/appgame/CNandData.hpp"

const char* CNandData::nandTitleText = "ゼノブレイド";
const char* CNandData::nandDescriptionText = "巨神と機神　モナドが未来を斬り開く";
const char* CNandData::nandBannerFilename = "bannerTexture.tpl";
const char* CNandData::nandIconTextureFilenames[] = {
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
int CNandData::nandIconTextureSomething[] = {
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

CNandData CNandData::instance = CNandData();


