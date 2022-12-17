#include "kyoshin/appgame/main.hpp"

//namespace cf {
extern char* pkhFilenames[];
extern u32 lbl_80528380[];
extern u32 lbl_80528390[];

const char* const staticArcStr = "static.arc";


/*
extern void func_8003AA50();
extern void func_8003AA78(u32, s32);
extern void func_8003AA8C(u32);

typedef struct UnkStruct80039EEC {
    s8 unk0;
    s8 filler[0x3F];
    s32 unk40;
} UnkStruct80039EEC;


void func_80039EEC(UnkStruct80039EEC* arg0) {
    arg0->unk0 = 0;
    arg0->unk40 = 0;
}

void func_80039EFC(s32 arg0) {
    func_8003AA50();
    func_8003AA78(0, arg0);
}

void func_80039F34(void) {
    func_8003AA8C(0);
    func_8003AA50();
}
*/

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
    func_80455FC8(lbl_80528380, 1);
    func_8045FBB0(lbl_80528390);
    func_8046023C(&func_80039F6C, &func_80039F90);
    SaveStaticArcFilenameStringPtr(&staticArcStr);
    SavePkhFilenamesArrayPtr(pkhFilenames);
    func_80057CDC();
    func_8045D5C8(1);
    func_804442D8();
}
//}