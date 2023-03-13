#include "RevoSDK/OS.h"
#include "RevoSDK/SI.h"
#include "RevoSDK/PAD.h"

s8 UnkVal : (OS_BASE_CACHED | 0x30e3);

static u32 AnalogMode = 0x00000300u;
static u32 Spec = 5;
static u32 EnabledBits;
u32 __PADSpec;

void PADControlMotor(s32 chan, u32 command) {
  BOOL enabled;
  u32 chanBit;

  enabled = OSDisableInterrupts();
  chanBit = PAD_CHAN0_BIT >> chan;
  if ((EnabledBits & chanBit) && !(SIGetType(chan) & SI_GC_NOMOTOR)) {
    if (Spec < PAD_SPEC_2 && command == PAD_MOTOR_STOP_HARD) {
      command = PAD_MOTOR_STOP;
    }

    if(UnkVal & 0x20){
        command = PAD_MOTOR_STOP;
    }

    SISetCommand(chan, (0x40 << 16) | AnalogMode | (command & (0x00000001 | 0x00000002)));
    SITransferCommands();
  }
  OSRestoreInterrupts(enabled);
}

BOOL __PADDisableRecalibration(BOOL disable) {
  BOOL enabled;
  BOOL prev;

  enabled = OSDisableInterrupts();
  prev = (UnkVal & 0x40) ? TRUE : FALSE;
  UnkVal &= (u8)~0x40;
  if (disable) {
    UnkVal |= 0x40;
  }
  OSRestoreInterrupts(enabled);
  return prev;
}