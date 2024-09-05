#ifndef RVL_SDK_AXFX_REVERB_HI_EXP_H
#define RVL_SDK_AXFX_REVERB_HI_EXP_H
#include <types.h>
#ifdef __cplusplus
extern "C" {
#endif

// Forward declarations
typedef struct AXFX_BUS;
typedef struct AXFX_BUFFERUPDATE;

typedef struct AXFX_REVERBHI_EXP {
    float* earlyLine[3];  // at 0x0
    u32 earlyPos[3];    // at 0xC
    u32 earlyLength;    // at 0x18
    u32 earlyMaxLength; // at 0x1C
    float earlyCoef[3];   // at 0x20

    float* preDelayLine[3];  // at 0x2C
    u32 preDelayPos;       // at 0x38
    u32 preDelayLength;    // at 0x3C
    u32 preDelayMaxLength; // at 0x40

    float* combLine[3][3];  // at 0x44
    u32 combPos[3];       // at 0x68
    u32 combLength[3];    // at 0x74
    u32 combMaxLength[3]; // at 0x80
    float combCoef[3];      // at 0x8C

    float* allpassLine[3][2];  // at 0x98
    u32 allpassPos[2];       // at 0xB0
    u32 allpassLength[2];    // at 0xB8
    u32 allpassMaxLength[2]; // at 0xC0

    float* lastAllpassLine[3];     // at 0xC8
    u32 lastAllpassPos[3];       // at 0xD4
    u32 lastAllpassLength[3];    // at 0xE0
    u32 lastAllpassMaxLength[3]; // at 0xEC

    float allpassCoef;         // at 0xF8
    float lastLpfOut[3];       // at 0xFC
    float lpfCoef;             // at 0x108
    u32 active;              // at 0x10C
    u32 earlyMode;           // at 0x110
    float preDelayTimeMax;     // at 0x114
    float preDelayTime;        // at 0x118
    u32 fusedMode;           // at 0x11C
    float fusedTime;           // at 0x120
    float coloration;          // at 0x124
    float damping;             // at 0x128
    float crosstalk;           // at 0x12C
    float earlyGain;           // at 0x130
    float fusedGain;           // at 0x134
    struct AXFX_BUS* busIn;  // at 0x138
    struct AXFX_BUS* busOut; // at 0x13C
    float outGain;             // at 0x140
    float sendGain;            // at 0x144
} AXFX_REVERBHI_EXP;

u32 AXFXReverbHiExpGetMemSize(const AXFX_REVERBHI_EXP* fx);
BOOL AXFXReverbHiExpInit(AXFX_REVERBHI_EXP* fx);
void AXFXReverbHiExpShutdown(AXFX_REVERBHI_EXP* fx);
BOOL AXFXReverbHiExpSettings(AXFX_REVERBHI_EXP* fx);
void AXFXReverbHiExpCallback(struct AXFX_BUFFERUPDATE* update,
                             AXFX_REVERBHI_EXP* fx);

#ifdef __cplusplus
}
#endif
#endif
