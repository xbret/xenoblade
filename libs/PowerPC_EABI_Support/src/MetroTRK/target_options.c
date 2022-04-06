#include "PowerPC_EABI_Support/MetroTRK/target_options.h"

static ui8 bUseSerialIO;


void SetUseSerialIO(ui8 sio){
	bUseSerialIO = sio;
	return;
}

ui8 GetUseSerialIO(void) {
	return bUseSerialIO;
}
