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
    which are then passed into the function fn_80457CA4 in the register r4
    through the function fn_8044F744.
    */
    fn_80450B14(fn_802AEB74());
    fn_80450B1C(fn_802AEB7C());
    fn_80450B24(fn_802AEB84());
    fn_804DAA90(fn_802AEBAC());
    fn_804DAA98(fn_802AEBB4());
    fn_804DAAA0(fn_802AEBBC());
    
    lbl_80666438 = 0;
    SetArenaMemorySize(0x680000, 0);
    fn_80448E78(0);
    fn_804559A8(0, 0x180000);
    CDesktop_SaveStartFunctionCallback((FunctionStruct*)lbl_80528380, 1); //Pass the start function struct to CDesktop to have it be run later
    fn_8045FBB0(lbl_80528390);
    CLibVM_SetCallbacks(&fn_80039F6C, &fn_80039F90);
    SaveStaticArcFilenameStringPtr(&staticArcStr);
    SavePkhFilenamesArrayPtr(pkhFilenames);
    fn_80057CDC();
    fn_8045D5C8(1);
    CWorkRoot_Run(); //Start up CWorkRoot, which later starts CGame
}