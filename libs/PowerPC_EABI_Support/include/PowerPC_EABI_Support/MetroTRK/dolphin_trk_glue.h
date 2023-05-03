#ifndef _TRK_DOLPHIN_TRK_GLUE_H
#define _TRK_DOLPHIN_TRK_GLUE_H

#include "types.h"
#include "revolution/OS.h"

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

#endif
