#ifndef TRK_CC_GDEV_H
#define TRK_CC_GDEV_H

#include "PowerPC_EABI_Support/MetroTRK/dstypes.h"
#include "NdevExi2A/DebuggerDriver.h"

//TODO: figure out what these values represent
typedef enum{
    GDEV_RESULT_10009 = -10009,
    GDEV_RESULT_10005 = -10005,
    GDEV_RESULT_10001 = -10001
}UnkGdevEnum;

void OutputData();
bool IsInitialized();
int gdev_cc_initialize(void* flagOut, OSInterruptHandler handler);
int gdev_cc_shutdown();
int gdev_cc_open();
int gdev_cc_close();
int gdev_cc_read(ui8* dest, int size);
int gdev_cc_write(const ui8* src, int size);
int gdev_cc_pre_continue();
int gdev_cc_post_stop();
int gdev_cc_peek();
int gdev_cc_initinterrupts();

#endif
