#ifndef _TRK_DOLPHIN_TRK_GLUE_H
#define _TRK_DOLPHIN_TRK_GLUE_H

#include "PowerPC_EABI_Support/MetroTRK/dstypes.h"
#include "revolution/OS.h"
#include "PowerPC_EABI_Support/MetroTRK/UART.h"

typedef enum{
    HARDWARE_GDEV = 0,
    HARDWARE_NDEV = 1,
    HARDWARE_BBA = 2
} HardwareType;

typedef int (*DBCommFunc)();
typedef int (*DBCommInitFunc)(void*, OSInterruptHandler);
typedef int (*DBCommReadFunc)(ui8*, int);
typedef int (*DBCommWriteFunc)(const ui8*, int);

typedef struct DBCommTable{
    DBCommInitFunc initialize_func;
    DBCommFunc initinterrupts_func;
    DBCommFunc shutdown_func;
    DBCommFunc peek_func;
    DBCommReadFunc read_func;
    DBCommWriteFunc write_func;
    DBCommFunc open_func;
    DBCommFunc close_func;
    DBCommFunc pre_continue_func;
    DBCommFunc post_stop_func;
} DBCommTable;

int InitMetroTRKCommTable(int);
void TRKUARTInterruptHandler();
UARTError TRK_InitializeIntDrivenUART(ui32, ui32, void*);
void EnableEXI2Interrupts();
int TRKPollUART();
UARTError TRKReadUARTN(void*, ui32);
UARTError TRK_WriteUARTN(const void*, ui32);
void ReserveEXI2Port(void);
void UnreserveEXI2Port(void);
void TRK_board_display(char*);
void InitializeProgramEndTrap();

#endif
