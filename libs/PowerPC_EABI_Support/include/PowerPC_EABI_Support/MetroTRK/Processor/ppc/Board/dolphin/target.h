#ifndef METROTRK_DOLPHIN_TARGET
#define METROTRK_DOLPHIN_TARGET

#include "PowerPC_EABI_Support/MetroTRK/Processor/ppc/Generic/ppc_version.h"
#include "PowerPC_EABI_Support/MetroTRK/UART.h"
#include "PowerPC_EABI_Support/MetroTRK/msgcmd.h"


#define DS_TARGET_NAME "Revolution"

#define TRK_BAUD_RATE kBaud38400

#ifndef DS_PROTOCOL
    #define DS_PROTOCOL DS_PROTOCOL_BOARD
#endif

#define BOARD_WELCOME_STRING "MetroTRK for Revolution v0.4"

#define TRK_TRANSPORT_INT_DRIVEN 1

#define TRK_TRANSPORT_INT_KEY		0x00000500

//Target specific includes
#include "PowerPC_EABI_Support/MetroTRK/Processor/ppc/Board/dolphin/target_asm.h"
#include "PowerPC_EABI_Support/MetroTRK/Processor/ppc/Export/m7xx_m603e_reg.h"
#include "PowerPC_EABI_Support/MetroTRK/Processor/ppc/Export/ppc_except.h"

#endif
