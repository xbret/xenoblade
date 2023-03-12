#include "kyoshin/appgame/main.hpp"
#include "kyoshin/appgame/CGame.hpp"
#include "kyoshin/appgame/code_802AEB74.hpp"

FunctionStruct lbl_80528380 = {"ÉQÅ[ÉÄÉÅÉCÉì", &GameMain};
const char* const staticArcStr = "static.arc";

const char* const pkhFilenames[13] = {
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
};

const u32 padding = 0;

StaticArcFile staticArcFiles[9] = {
	{"SHA","dvddata/etc/shadow.sha",1,0,0},
	{"CAM","dvddata/etc/cam.chr",1,0,0},
	{"EFF","dvddata/etc/eff.chr",1,0,0},
	{"ARROW","dvddata/etc/arrow.mdo",1,0,0},
	{"43","dvddata/menu/Mode43.arc",1,0,0},
	{"BDAT","dvddata/common/jp/bdat.bin",1,&func_80039EFC,&func_80039F34},
	{"AIDAT","dvddata/etc/ai.bin",1,&func_80039F5C,&func_80039F60},
	{"HIKARI","dvddata/etc/hikari.brres",1,0,0},
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

void vmInitCallback1(){
    vmInit();
    pluginRegist();
}

void vmInitCallback(){
    vmInit();
}

void main(int argc, char* argv[]) {
    /*
    The first two functions store the array pointers in variables,
    which are then passed into the function func_80457CA4 in the register r4
    through the function func_8044F744.
    */
    func_80450B14(func_802AEB74());
    func_80450B1C(func_802AEB7C());
    func_80450B24(func_802AEB84());
    func_804DAA90(func_802AEBAC());
    func_804DAA98(func_802AEBB4());
    func_804DAAA0(func_802AEBBC());
    
    lbl_80666438 = 0;
    SetArenaMemorySize(0x680000, 0);
    func_80448E78(0);
    func_804559A8(0, 0x180000);
    CDesktop_SaveStartFunctionCallback(&lbl_80528380, 1); //Pass the start function struct to CDesktop to have it be run later
    func_8045FBB0(staticArcFiles);
    CLibVM_SetCallbacks(&vmInitCallback1, &vmInitCallback);
    SaveStaticArcFilenameStringPtr(&staticArcStr);
    SavePkhFilenamesArrayPtr(pkhFilenames);
    func_80057CDC();
    func_8045D5C8(1);
    CWorkRoot_Run(); //Start up CWorkRoot, which later starts CGame
}
