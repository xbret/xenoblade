#include "types.h"
#include "kyoshin/appgame/plugin/pluginVoice.hpp"
#include "kyoshin/appgame/cf/CfObjectPc.hpp"
#include "monolib/reslist.hpp"

extern reslist<cf::CfObject*>* func_800B6BA4();


int voice_play(_sVMThread* pThread) {
    _reslist_node<cf::CfObject*>* node;
    int r30 = vmArgIntGet(2, vmArgPtrGet(pThread, 1));
	int r27 = vmArgIntGet(3, vmArgPtrGet(pThread, 2));
	//TODO: make this an inline
	reslist<cf::CfObject*>* list = func_800B6BA4();
	node = list->mStartNodePtr->next;
	
	//Iterate through the list until we hit the end
	while((u32)node != (u32)list->mStartNodePtr){
		cf::CfObjectPc* object = static_cast<cf::CfObjectPc*>(node->item);
		if(object->CActorParam_vtableFunc138() == 0){
			if(r30 == object->unk8C_3){
				object->func_800BE898(r27, 0x14, 1.0f, 30.0f);
				break;
			}
		}
		node = node->next;
	}

	return 0;
}

PluginFuncData pluginVoiceFuncs[] = {
	{"play", voice_play},
	{NULL,NULL}
};

void pluginVoiceRegist(){
	vmPluginRegist("voice", pluginVoiceFuncs);
}
