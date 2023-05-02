#include "revolution/DSP.h"
#include "revolution/OS.h"

const char* __DSPVersion =
    "<< RVL_SDK - DSP \trelease build: Feb 27 2009 10:01:57 (0x4302_145) >>";

static BOOL __DSP_init_flag = FALSE;

BOOL DSPCheckMailToDSP(void) {
    return (DSP_HW_REGS[DSP_DSPMBOX_H] & DSP_DSPMBOX_H_STATUS) != 0;
}

BOOL DSPCheckMailFromDSP(void) {
    return (DSP_HW_REGS[DSP_CPUMBOX_H] & DSP_CPUMBOX_H_STATUS) != 0;
}

//unused
void DSPReadCPUToDSPMbox(){
}

DSPMail DSPReadMailFromDSP(void) {
    return (DSPMail)(DSP_HW_REGS[DSP_CPUMBOX_H] << 16 |
                     DSP_HW_REGS[DSP_CPUMBOX_L]);
}

void DSPSendMailToDSP(DSPMail mail) {
    DSP_HW_REGS[DSP_DSPMBOX_H] = ((uintptr_t)mail) >> 16 & 0xFFFF;
    DSP_HW_REGS[DSP_DSPMBOX_L] = ((uintptr_t)mail) & 0xFFFF;
}

void DSPAssertInt(void) {
    BOOL enabled;

    enabled = OSDisableInterrupts();

    DSP_HW_REGS[DSP_CSR] =
        (DSP_HW_REGS[DSP_CSR] &
         ~(DSP_CSR_AIDINT | DSP_CSR_ARINT | DSP_CSR_DSPINT)) |
        DSP_CSR_PIINT;

    OSRestoreInterrupts(enabled);
}

void DSPInit(void) {
    BOOL enabled;

    __DSP_debug_printf("DSPInit(): Build Date: %s %s\n", "Feb 27 2009",
                       "10:01:57");

    if (__DSP_init_flag == TRUE) {
        return;
    }

    OSRegisterVersion(__DSPVersion);

    enabled = OSDisableInterrupts();

    __OSSetInterruptHandler(OS_INTR_DSP_DSP, __DSPHandler);
    __OSUnmaskInterrupts(OS_INTR_MASK(OS_INTR_DSP_DSP));

    DSP_HW_REGS[DSP_CSR] =
        (DSP_HW_REGS[DSP_CSR] &
         ~(DSP_CSR_AIDINT | DSP_CSR_ARINT | DSP_CSR_DSPINT)) |
        DSP_CSR_RES;

    DSP_HW_REGS[DSP_CSR] = DSP_HW_REGS[DSP_CSR] &
        ~(DSP_CSR_HALT | DSP_CSR_AIDINT | DSP_CSR_ARINT | DSP_CSR_DSPINT);

    __DSP_tmp_task = NULL;
    __DSP_curr_task = NULL;
    __DSP_last_task = NULL;
    __DSP_first_task = NULL;

    __DSP_init_flag = TRUE;

    OSRestoreInterrupts(enabled);
}

BOOL DSPCheckInit(void) { return __DSP_init_flag; }

//unused
void DSPReset(){
}

//unused
void DSPHalt(){
}

//unused
void DSPUnhalt(){
}

//unused
void DSPGetDMAStatus(){
}

DSPTask* DSPAddTask(DSPTask* task) {
    BOOL enabled;

    enabled = OSDisableInterrupts();

    __DSP_insert_task(task);
    task->state = DSP_TASK_STATE_0;
    task->flags = DSP_TASK_ACTIVE;

    OSRestoreInterrupts(enabled);

    if (task == __DSP_first_task) {
        __DSP_boot_task(task);
    }

    return task;
}

DSPTask* DSPCancelTask(DSPTask* task){
    BOOL enabled;

    enabled = OSDisableInterrupts();

    task->flags |= DSP_TASK_CANCELED;

    OSRestoreInterrupts(enabled);
    return task;
}

DSPTask* DSPAssertTask(DSPTask* task) {
    BOOL enabled;

    enabled = OSDisableInterrupts();

    if (__DSP_curr_task == task) {
        __DSP_rude_task = task;
        __DSP_rude_task_pending = TRUE;
        OSRestoreInterrupts(enabled);
        return task;
    }

    if (task->prio < __DSP_curr_task->prio) {
        __DSP_rude_task = task;
        __DSP_rude_task_pending = TRUE;

        if (__DSP_curr_task->state == DSP_TASK_STATE_1) {
            DSPAssertInt();
        }

        OSRestoreInterrupts(enabled);
        return task;
    }

    OSRestoreInterrupts(enabled);
    return NULL;
}
