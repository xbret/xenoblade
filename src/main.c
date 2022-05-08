#include "main.h"


extern char* pkhFilenames[];
extern u32 lbl_80528380[];
extern u32 lbl_80528390[];

/*
char* pkhFilenames[] = {
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
}
*/
s8 lbl_80666438 = 1;
const char* const staticArcStr = "static.arc";


void main(int argc, char* argv[]) {
    /*
    The first two functions store the array pointers in variables,
    which are then passed into the function func_80457CA4 in the register r4
    through the function func_8044F744.
    */
    u32** ptr = func_802AEB74();
    func_80450B14(ptr);
    u32** ptr1 = func_802AEB7C();
    func_80450B1C(ptr1);
    u32** ptr2 = func_802AEB84();
    func_80450B24(ptr2);
    u32** ptr3 = func_802AEBAC();
    func_804DAA90(ptr3);
    u32** ptr4 = func_802AEBB4();
    func_804DAA98(ptr4);
    u32** ptr5 = func_802AEBBC();
    func_804DAAA0(ptr5);
    
    lbl_80666438 = 0;
    func_804336E4(0x680000, 0);
    func_80448E78(0);
    func_804559A8(0, 0x180000);
    func_80455FC8(lbl_80528380, 1);
    func_8045FBB0(lbl_80528390);
    func_8046023C(&lbl_80039F6C, &lbl_80039F90);
    SaveStaticArcFilenameString(&staticArcStr);
    func_804DDE2C(pkhFilenames);
    func_80057CDC();
    func_8045D5C8(1);
    func_804442D8();
}