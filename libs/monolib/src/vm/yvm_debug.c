#include "monolib/vm/yvm_debug.h"
#include "monolib/vm/yvm.h"

extern VMState vmState;

void vmHalt(){
    VMState* work = &vmState;
    VMThread* r31 = work->unk40;
    u8* r0 = r31->unk34;

    vmCodePut(r31, r0[r31->unk0]);
    vmStackDump(r31);
    vmPackageDump();
    vmThreadDump();

    /* NOTE: There would've likely been some code here to halt somehow, but
    it was removed for release. As is, the VM will ignore requests to halt
    and keep running. In XC3D and XCX, it does properly halt: XC3D calls
    nn::dbg::Panic (possibly through a custom panic function that got
    inlined), while XC3D just has a while(true) loop. */

    /* TODO: it might be a good idea to add code to halt that gets toggled by some
    sort of define, simliar to in CErrorWii. Maybe both could be controlled
    by a DEBUG define? */
}

void vmArgErr(){
    VMThread* r31 = vmState.unk40;
    u8 r3 = r31->unk34[r31->unk0];

    switch(r3){
        case VMC_OP_PLUGIN:
        case VMC_OP_PLUGIN_W:
            vmPluginExceptionThrow(r31);
        break;
        default:
            vmOCExceptionThrow(r31);
        break;
    }

    vmExceptionProc(r31);
}

//All stubbed for release

void vmCodePut(VMThread* r3, u8 r4){
}

void vmStackDump(VMThread* r3){
}

void vmPackageDump(){
}

void vmThreadDump(){
}
