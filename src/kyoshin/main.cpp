#include "kyoshin/cf/object/CAIAction.hpp"
#include "kyoshin/plugin/pluginMain.hpp"
#include "kyoshin/plugin/ocBdat.hpp"
#include "kyoshin/CGame.hpp"
#include "kyoshin/ErrMesData.hpp"
#include "kyoshin/action/CActParamData.hpp"
#include "monolib/nand/CNand.hpp"
#include "monolib/vm/yvm.h"
#include "monolib/effect/Unknown1.hpp"
#include "monolib/core.hpp"
#include "monolib/lib.hpp"
#include "monolib/device.hpp"
#include "monolib/work.hpp"
#include "monolib/util.hpp"

static DesktopIcon sGameMainIcon = {
#if defined(VERSION_JP)
    "ゲームメイン",
#else //EU/US
    "GAME_MAIN",
#endif
    &CGame::GameMain
};

static const char* const scStaticArcStr =
#if defined(VERSION_JP)
"static.arc";
#else //EU/US
"lang/jp/static.arc";
#endif

static const char* const sPkhFilenames[13] = {
#if defined(VERSION_JP)
    "ahx.pkh",
    "adx.pkh",
    "chr.pkh",
    "common.pkh",
    "eff.pkh",
    "font.pkh",
    "map.pkh",
    "menu.pkh",
    "obj.pkh",
    "script.pkh",
    "snd.pkh",
    "work.pkh"
#else //EU/US
    "ahx/jp/ahx.pkh",
    "common/jp/common.pkh",
    "mapbdat/jp/mapbdat.pkh",
    "menu/jp/menu.pkh",
    "script/jp/script.pkh",
    "adx.pkh",
    "chr/jp/chr.pkh",
    "eff.pkh",
    "font.pkh",
    "map.pkh",
    "obj.pkh",
    "snd.pkh"
#endif
};

#if !defined(VERSION_JP)
static const char* const sLanguageFolderPaths[8] = {
    "/jp/",
    "/en/",
    "/en/",
    "/de/",
    "/fr/",
    "/sp/",
    "/it/",
};

const char* const sLanguageFolderPaths2[8] = {
    "\\jp\\",
    "\\en\\",
    "\\en\\",
    "\\de\\",
    "\\fr\\",
    "\\sp\\",
    "\\it\\"
};
#endif

//Static file callback functions.

void OnBdatFileLoaded(void* pData, u32 length) {
    CBdat::func_8003AA50();
    CBdat::func_8003AA78(0, pData);
}

void OnBdatFileUnloaded(void* pData, u32 length) {
    CBdat::func_8003AA8C(0);
    CBdat::func_8003AA50();
}

void OnAidatFileLoaded(void* pData, u32 length){
    func_8014A86C(pData);
}

void OnAidatFileUnloaded(void* pData, u32 length){
    func_8014A8F8();
}

void OnHbmstopFileLoaded(void* pData, u32 length){
    func_8045D480(pData);
}

void OnHbmstopFileUnloaded(void* pData, u32 length){
    func_8045D4FC();
}

//List of files contained in the static.arc archive
static StaticArcFileData sStaticArcFiles[10] = {
    {"SHA","dvddata/etc/shadow.sha",HANDLE_MEM2,nullptr,nullptr},
    {"CAM","dvddata/etc/cam.chr",HANDLE_MEM2,nullptr,nullptr},
    {"EFF","dvddata/etc/eff.chr",HANDLE_MEM2,nullptr,nullptr},
    {"ARROW","dvddata/etc/arrow.mdo",HANDLE_MEM2,nullptr,nullptr},
#if defined(VERSION_JP)
    {"43","dvddata/menu/Mode43.arc",HANDLE_MEM2,nullptr,nullptr},
    {"BDAT","dvddata/common/jp/bdat.bin",HANDLE_MEM2,&OnBdatFileLoaded,&OnBdatFileUnloaded},
#else //EU/US
    {"43","dvddata/menu/jp/Mode43.arc",HANDLE_MEM2,nullptr,nullptr},
    {"BDAT","common/jp/bdat_common.bin",HANDLE_MEM2,&OnBdatFileLoaded,&OnBdatFileUnloaded},
#endif
    {"AIDAT","dvddata/etc/ai.bin",HANDLE_MEM2,&OnAidatFileLoaded,&OnAidatFileUnloaded},
    {"HIKARI","dvddata/etc/hikari.brres",HANDLE_MEM2,nullptr,nullptr},
    {"HBMSTOP","dvddata/etc/hbmstop.tpl",HANDLE_MEM2,&OnHbmstopFileLoaded,&OnHbmstopFileUnloaded}
};

//VM initialization callback functions.

void vmInitPluginRegistCallback(){
    vmInit();
    pluginRegist();
}

void vmInitCallback(){
    vmInit();
}

static void copyErrorMessages(){
    //Copy the error message string pointers
    func_80450B14(getNoDiscErrorMessage());
    func_80450B1C(getDiscUnreadableErrorMessage());
    func_80450B24(getReadingDiscErrorMessage());
    func_804DAA90(getMemoryDamagedErrorMessage());
    func_804DAA98(getMemoryReadWriteFailErrorMessage());
    func_804DAAA0(getErrorDuringMemoryReadWriteErrorMessage());
}

#ifdef __MWERKS__
void main(){
#else
int main(){
#endif
    copyErrorMessages();
    lbl_80666438 = 0;
    mtl::MemRegion::initialize();
    CDeviceVI::setUseStaticHandle(false);
    CDeviceGX::initialize();
    CDesktop::entryTable(&sGameMainIcon, 1); //Pass the start function struct to CDesktop to have it be run later
    CLibStaticData::saveStaticFileArray(sStaticArcFiles);
    CLibVM::setCallbacks(&vmInitPluginRegistCallback, &vmInitCallback);
    CWorkSystemPack::SaveStaticArcFilenameStringPtr(&scStaticArcStr);
    CWorkSystemPack::SavePkhFilenamesArrayPtr(sPkhFilenames);
    func_80057CDC();
    CLibHbm_8045D5C8(1);
    CWorkRoot::run(); //Start up CWorkRoot, which later starts CGame
}
