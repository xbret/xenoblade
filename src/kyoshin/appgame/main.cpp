#include "kyoshin/appgame/main.hpp"
#include "kyoshin/appgame/CGame.hpp"
#include "kyoshin/appgame/code_802AEB74.hpp"

extern char* pkhFilenames[];
extern u32 lbl_80528390[];

const char* const staticArcStr = "static.arc";
//FunctionStruct lbl_80528380 = {"ÉQÅ[ÉÄÉÅÉCÉì", &GameMain};
extern u32 lbl_80528380[]; //fakematch

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
    CDesktop_SaveStartFunctionCallback((FunctionStruct*)lbl_80528380, 1); //Pass the start function struct to CDesktop to have it be run later
    func_8045FBB0(lbl_80528390);
    CLibVM_SetCallbacks(&func_80039F6C, &func_80039F90);
    SaveStaticArcFilenameStringPtr(&staticArcStr);
    SavePkhFilenamesArrayPtr(pkhFilenames);
    func_80057CDC();
    func_8045D5C8(1);
    CWorkRoot_Run(); //Start up CWorkRoot, which later starts CGame
}