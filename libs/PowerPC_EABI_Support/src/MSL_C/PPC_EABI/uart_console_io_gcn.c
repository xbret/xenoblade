#include "types.h"
#include "revolution/OS.h"
#include "PowerPC_EABI_Support/MSL_C/MSL_Common_Embedded/UART.h"
#include <stdio.h>


static BOOL initialized;

int __TRK_write_console(__file_handle, char*, size_t*, __ref_con);

BOOL __write_console(__file_handle handle, char* buf, size_t* count, __ref_con ref_con)
{

	if ((OSGetConsoleType() & 0x20000000) == 0) {
		int r3_cond = 0;
		if (initialized == FALSE) {
			r3_cond = InitializeUART(0xE100);
			;
			if (r3_cond == 0) {
				initialized = TRUE;
			}
		}
		if (r3_cond != 0) {
			return TRUE;
		}
		if (WriteUARTN(buf, *count) != 0) {
			*count = 0;
			return TRUE;
		}
	}
	__TRK_write_console(handle, buf, count, ref_con);
	return FALSE;
}

int __close_console(__file_handle handle){
    return 0;
}

//unused
void __delete_file(){
}

//unused
void __rename_file(){
}

//unused
void __temp_file_name(){
}
