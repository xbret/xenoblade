#ifndef RVL_SDK_AXFX_REVERB_HI_DPL2_H
#define RVL_SDK_AXFX_REVERB_HI_DPL2_H
#include <revolution/axfx/AXFXReverbHiExpDpl2.h>
#include <types.h>
#ifdef __cplusplus
extern "C" {
#endif

typedef struct AXFX_REVERBHI_DPL2 {
    AXFX_REVERBHI_EXP_DPL2 exp; // at 0x0
    float coloration;             // at 0x148
    float mix;                    // at 0x14C
    float time;                   // at 0x150
    float damping;                // at 0x154
    float preDelay;               // at 0x158
    float crosstalk;              // at 0x15C
} AXFX_REVERBHI_DPL2;

u32 AXFXReverbHiGetMemSizeDpl2(AXFX_REVERBHI_DPL2* fx);
BOOL AXFXReverbHiInitDpl2(AXFX_REVERBHI_DPL2* fx);
BOOL AXFXReverbHiShutdownDpl2(AXFX_REVERBHI_DPL2* fx);
BOOL AXFXReverbHiSettingsDpl2(AXFX_REVERBHI_DPL2* fx);
void AXFXReverbHiCallbackDpl2(void* chans, void* context);

#ifdef __cplusplus
}
#endif
#endif
