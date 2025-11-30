#ifndef RVL_SDK_PAD_H
#define RVL_SDK_PAD_H
#include <types.h>
#ifdef __cplusplus
extern "C" {
#endif

extern u32 __PADSpec;

typedef enum {
    PAD_BUTTON_LEFT = (1 << 0),
    PAD_BUTTON_RIGHT = (1 << 1),
    PAD_BUTTON_DOWN = (1 << 2),
    PAD_BUTTON_UP = (1 << 3),

    PAD_BUTTON_A = (1 << 8),
    PAD_BUTTON_B = (1 << 9),
    PAD_BUTTON_X = (1 << 10),
    PAD_BUTTON_Y = (1 << 11),

    PAD_BUTTON_L = (1 << 6),
    PAD_BUTTON_R = (1 << 5),
    PAD_BUTTON_Z = (1 << 4),

    PAD_BUTTON_START = (1 << 12),
} PADButton;

typedef enum {
    PAD_FLAG_NO_RECALIBRATE = (1 << 6),
} PADFlag;

typedef struct PADStatus {
    u8 dummy;
} PADStatus;

#define PAD_SPEC_0 0
#define PAD_SPEC_1 1
#define PAD_SPEC_2 2
#define PAD_SPEC_3 3
#define PAD_SPEC_4 4
#define PAD_SPEC_5 5

#define PAD_CHAN0 0
#define PAD_CHAN1 1
#define PAD_CHAN2 2
#define PAD_CHAN3 3
#define PAD_CHANMAX 4

#define PAD_MOTOR_STOP 0
#define PAD_MOTOR_RUMBLE 1
#define PAD_MOTOR_STOP_HARD 2

#define PAD_ERR_NONE 0
#define PAD_ERR_NO_CONTROLLER -1
#define PAD_ERR_NOT_READY -2
#define PAD_ERR_TRANSFER -3

#define PAD_CHAN0_BIT 0x80000000
#define PAD_CHAN1_BIT 0x40000000
#define PAD_CHAN2_BIT 0x20000000
#define PAD_CHAN3_BIT 0x10000000

void PADControlMotor(s32 chan, u32 cmd);
BOOL __PADDisableRecalibration(BOOL disable);

#ifdef __cplusplus
}
#endif
#endif
