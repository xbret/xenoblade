#include "kyoshin/appgame/main.hpp"

//namespace cf {
extern char* pkhFilenames[];
extern u32 lbl_80528380[];
extern u32 lbl_80528390[];
extern u32 lbl_804F5D14[];
extern u32 lbl_80528458[];

const char* const staticArcStr = "static.arc";


void func_80039EFC(s32 arg0) {
    func_8003AA50();
    func_8003AA78(0, arg0);
}

void func_80039F34() {
    func_8003AA8C(0);
    func_8003AA50();
}

void func_80039F5C(){
	func_8014A86C();
}

void func_80039F60(){
	func_8014A8F8();
}

void func_80039F64(){
	func_8045D480();
}

void func_80039F68(){
	func_8045D4FC();
}

void func_80039F6C(){
	func_8049FCAC();
	func_80045814();
}

void func_80039F90(){
	func_8049FCAC();
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
    CDesktop_SaveStartFunctionCallback(lbl_80528380, 1); //Pass the start function struct to CDesktop to have it be run later
    func_8045FBB0(lbl_80528390);
    CLibVM_SetCallbacks(&func_80039F6C, &func_80039F90);
    SaveStaticArcFilenameStringPtr(&staticArcStr);
    SavePkhFilenamesArrayPtr(pkhFilenames);
    func_80057CDC();
    func_8045D5C8(1);
    CWorkRoot_Run();
}

int put(){
	return 0;
}

int performanceStart(){
	func_804A0E6C(2, func_804A0C78(1));
	return 0;
}

int performanceEnd(){
	func_804A0E6C(2, func_804A0C78(1));
	return 0;
}

void func_8003A0CC(){
	func_804A0B90(lbl_804F5D14,lbl_80528458);
}

void frame(){

}

void func_8003A198(){

}

bool isExistProperty(){

}

bool isExistSelector(){

}

void getOCName(){

}

void func_8003A304(){

}

void thread(){

}

void start(){

}

void end(){

}

bool isAlive(){

}

void join(){

}

void sleep(){

}

void wakeup(){

}

void func_8003A4D4(){

}

void func_8003A4E0(){

}

void func_8003A4EC(){

}

//sinit_8003A4F8
//}