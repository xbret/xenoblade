#include "kyoshin/appgame/main.hpp"
#include "monolib/lib/CLibHbm.hpp"
#include "monolib/device/CDeviceVI.hpp"
#include "monolib/device/CDeviceGX.hpp"
#include "monolib/MemManager.hpp"
#include "monolib/Unknown1.hpp"
#include "monolib/vm/yvm.h"
#include "kyoshin/appgame/plugin/pluginMain.hpp"
#include "kyoshin/appgame/CGame.hpp"
#include "kyoshin/appgame/ErrMesData.hpp"
#include <revolution/GX.h>

FunctionStruct lbl_80528380 = {
#if VERSION == VERSION_JP
    "ゲームメイン",
#else //EU/US
    "GAME_MAIN",
#endif
    &CGame::GameMain
};

const char* const staticArcStr =
#if VERSION == VERSION_JP
"static.arc";
#else //EU/US
"lang/jp/static.arc";
#endif

const char* const pkhFilenames[13] = {
#if VERSION == VERSION_JP
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

#if VERSION != VERSION_JP
const char* const languageFolderPaths1[8] = {
    "/jp/",
    "/en/",
    "/en/",
    "/de/",
    "/fr/",
    "/sp/",
    "/it/",
};

const char* const languageFolderPaths2[8] = {
    "\\jp\\",
    "\\en\\",
    "\\en\\",
    "\\de\\",
    "\\fr\\",
    "\\sp\\",
    "\\it\\"
};
#endif

StaticArcFile staticArcFiles[10] = {
    {"SHA","dvddata/etc/shadow.sha",1,nullptr,nullptr},
    {"CAM","dvddata/etc/cam.chr",1,nullptr,nullptr},
    {"EFF","dvddata/etc/eff.chr",1,nullptr,nullptr},
    {"ARROW","dvddata/etc/arrow.mdo",1,nullptr,nullptr},
#if VERSION == VERSION_JP
    {"43","dvddata/menu/Mode43.arc",1,nullptr,nullptr},
    {"BDAT","dvddata/common/jp/bdat.bin",1,&func_80039EFC,&func_80039F34},
#else //EU/US
    {"43","dvddata/menu/jp/Mode43.arc",1,nullptr,nullptr},
    {"BDAT","common/jp/bdat_common.bin",1,&func_80039EFC,&func_80039F34},
#endif
    {"AIDAT","dvddata/etc/ai.bin",1,&func_80039F5C,&func_80039F60},
    {"HIKARI","dvddata/etc/hikari.brres",1,nullptr,nullptr},
    {"HBMSTOP","dvddata/etc/hbmstop.tpl",1,&func_80039F64,&func_80039F68}
};




void func_80039EFC(int arg0) {
    func_8003AA50();
    func_8003AA78(0, arg0);
}

void func_80039F34(void) {
    func_8003AA8C(0);
    func_8003AA50();
}


void func_80039F5C(int arg0){
    func_8014A86C(arg0);
}

void func_80039F60(){
    func_8014A8F8();
}

void func_80039F64(int arg0){
    func_8045D480(arg0);
}

void func_80039F68(){
    func_8045D4FC();
}

void vmInitPluginRegistCallback(){
    vmInit();
    pluginRegist();
}

void vmInitCallback(){
    vmInit();
}

#ifdef __MWERKS__
void main(){
#else
int main(){
#endif
    //Copy the error message string pointers
    func_80450B14(getNoDiscErrorMessage());
    func_80450B1C(getDiscUnreadableErrorMessage());
    func_80450B24(getReadingDiscErrorMessage());
    func_804DAA90(getMemoryDamagedErrorMessage());
    func_804DAA98(getMemoryReadWriteFailErrorMessage());
    func_804DAAA0(getErrorDuringMemoryReadWriteErrorMessage());
    
    lbl_80666438 = 0;
    mtl::MemRegion::setRegionMaxSize(0x680000, 0); //Set arena size to 6.5 mb
    CDeviceVI::func_80448E78(false);
    CDeviceGX::setValues(GX_PF_RGB8_Z24, 0x180000); //Set GX heap size to 1.5 mb
    CDesktop_SaveStartFunctionCallback(&lbl_80528380, 1); //Pass the start function struct to CDesktop to have it be run later
    CLibStaticData_saveStaticFileArray(staticArcFiles);
    CLibVM_SetCallbacks(&vmInitPluginRegistCallback, &vmInitCallback);
    SaveStaticArcFilenameStringPtr(&staticArcStr);
    SavePkhFilenamesArrayPtr(pkhFilenames);
    func_80057CDC();
    CLibHbm_8045D5C8(1);
    CWorkRoot_Run(); //Start up CWorkRoot, which later starts CGame
}
