#ifndef RVL_SDK_AXFX_REVERB_HI_EXP_DPL2_H
#define RVL_SDK_AXFX_REVERB_HI_EXP_DPL2_H
#include <types.h>
#ifdef __cplusplus
extern "C" {
#endif

typedef struct AXFX_REVERBHI_EXP_DPL2 {
    float* earlyLine[4];  // at 0x0
    u32 earlyPos[3];    // at 0x10
    u32 earlyLength;    // at 0x1C
    u32 earlyMaxLength; // at 0x20
    float earlyCoef[3];   // at 0x24

    float* preDelayLine[4];  // at 0x30
    u32 preDelayPos;       // at 0x40
    u32 preDelayLength;    // at 0x44
    u32 preDelayMaxLength; // at 0x48

    float* combLine[4][3];  // at 0x4C
    u32 combPos[3];       // at 0x7C
    u32 combLength[3];    // at 0x88
    u32 combMaxLength[3]; // at 0x94
    float combCoef[3];      // at 0xA0

    float* allpassLine[4][2];  // at 0xAC
    u32 allpassPos[2];       // at 0xCC
    u32 allpassLength[2];    // at 0xD4
    u32 allpassMaxLength[2]; // at 0xDC

    float* lastAllpassLine[4];     // at 0xE4
    u32 lastAllpassPos[4];       // at 0xF4
    u32 lastAllpassLength[4];    // at 0x104
    u32 lastAllpassMaxLength[4]; // at 0x114

    float allpassCoef;         // at 0x124
    float lastLpfOut[4];       // at 0x128
    float lpfCoef;             // at 0x138
    u32 active;              // at 0x13C
    u32 earlyMode;           // at 0x140
    float preDelayTimeMax;     // at 0x144
    float preDelayTime;        // at 0x148
    u32 fusedMode;           // at 0x14C
    float fusedTime;           // at 0x150
    float coloration;          // at 0x154
    float damping;             // at 0x158
    float crosstalk;           // at 0x15C
    float earlyGain;           // at 0x160
    float fusedGain;           // at 0x164
    struct AXFX_BUS* busIn;  // at 0x168
    struct AXFX_BUS* busOut; // at 0x16C
    float outGain;             // at 0x170
    float sendGain;            // at 0x174
} AXFX_REVERBHI_EXP_DPL2;

u32 AXFXReverbHiExpGetMemSizeDpl2(const AXFX_REVERBHI_EXP_DPL2* fx);
BOOL AXFXReverbHiExpInitDpl2(AXFX_REVERBHI_EXP_DPL2* fx);
void AXFXReverbHiExpShutdownDpl2(AXFX_REVERBHI_EXP_DPL2* fx);
BOOL AXFXReverbHiExpSettingsDpl2(AXFX_REVERBHI_EXP_DPL2* fx);
void AXFXReverbHiExpCallbackDpl2(struct AXFX_BUFFERUPDATE_DPL2* update,
                                 AXFX_REVERBHI_EXP_DPL2* fx);

#ifdef __cplusplus
}
#endif
#endif
