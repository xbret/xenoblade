#include "kyoshin/CNandData.hpp"

const char* CNandData::scNandTitleText = "ゼノブレイド";
const char* CNandData::scNandDescriptionText = "巨神と機神　モナドが未来を斬り開く";
const char* CNandData::scNandBannerFilename = "bannerTexture.tpl";
const char* CNandData::sNandIconTextureFilenames[] = {
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
int CNandData::sNandIconTextureSomething[] = {
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

CNandData CNandData::sInstance = CNandData();
