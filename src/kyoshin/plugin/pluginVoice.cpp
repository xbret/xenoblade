#include "kyoshin/cf/object/CfObject.hpp"
#include "kyoshin/plugin/pluginVoice.hpp"
#include "kyoshin/cf/object/CfObjectPc.hpp"
#include "monolib/util.hpp"

extern reslist<cf::CfObject*>* func_800B6BA4();


int voice_play(VMThread* pThread) {
    int r30 = vmArgIntGet(2, vmArgPtrGet(pThread, 1));
    int r27 = vmArgIntGet(3, vmArgPtrGet(pThread, 2));

    reslist<cf::CfObject*>* list = func_800B6BA4();
    
    for(reslist<cf::CfObject*>::iterator it = list->begin(); it != list->end(); it++){
        cf::CfObjectPc* object = static_cast<cf::CfObjectPc*>(*it);
        if(object->CActorParam_UnkVirtualFunc138() == 0){
            if(r30 == object->unk8C_3){
                object->func_800BE898(r27, 0x14, 1.0f, 30.0f);
                break;
            }
        }
    }

    return 0;
}

static PluginFuncData sPluginVoiceFuncs[] = {
    {"play", voice_play},
    {NULL,NULL}
};

void pluginVoiceRegist(){
    vmPluginRegist("voice", sPluginVoiceFuncs);
}
