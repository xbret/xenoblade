#include "revolution/OS.h"

extern "C" {

void MWInitializeCriticalSection(uint* section){
}

void MWEnterCriticalSection(uint* section){
	*section = OSDisableInterrupts();
}

void MWExitCriticalSection(uint* section){
	OSRestoreInterrupts(*section);
}

//unused
void MWTerminateCriticalSection(uint* section){
}

}
