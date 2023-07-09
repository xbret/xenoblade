#ifndef _TRK_DOLPHIN_TRK_GLUE_H
#define _TRK_DOLPHIN_TRK_GLUE_H

#include "types.h"
#include "revolution/OS.h"
#include "PowerPC_EABI_Support/MSL_C/MSL_Common_Embedded/UART.h"

typedef enum{
    HARDWARE_GDEV = 0,
    HARDWARE_NDEV = 1,
    HARDWARE_BBA = 2
} HardwareType;

typedef int (*DBCommFunc)();
typedef int (*DBCommInitFunc)(void*, OSInterruptHandler);
typedef int (*DBCommReadFunc)(u8*, int);
typedef int (*DBCommWriteFunc)(const u8*, int);

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
UARTError TRK_InitializeIntDrivenUART(u32, u32, void*);
void EnableEXI2Interrupts();
int TRKPollUART();
UARTError TRKReadUARTN(void*, u32);
UARTError TRK_WriteUARTN(const void*, u32);
void ReserveEXI2Port(void);
void UnreserveEXI2Port(void);
void TRK_board_display(char*);
void InitializeProgramEndTrap();

#endif
