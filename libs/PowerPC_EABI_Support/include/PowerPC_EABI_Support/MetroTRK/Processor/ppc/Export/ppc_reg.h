#ifndef METROTRK_PPC_REG
#define METROTRK_PPC_REG

#include "types.h"
#include "PowerPC_EABI_Support/MetroTRK/trk.h"

#ifdef __cplusplus
extern "C"{
#endif

typedef struct DefaultState{
	u32 gprs[32]; //0x0
	u32 pc; //0x80
	u32 lr; //0x84
	u32 cr; //0x88
	u32 ctr; //0x8C
	u32 xer; //0x90
} DefaultState;

typedef struct TRKCPUState{
	DefaultState defaultState;
	u64 fprs[32]; //0x9c no proof but likely
	u64 fpscr; //0x19c
	u64 fpecr; //0x1a4
	u32 srs[16]; //0x1a8
	u32 tbl; //0x1e8
	u32 tbu; //0x1ec
	u32 unk1F0; //hid0
	u32 unk1F4; //hid1
	u32 unk1F8; //srr1

	//IBAT/DBAT 0-3
	u32 ibatu0; //0x1fc
	u32 ibatl0; //0x200
	u32 ibatu1; //0x204
	u32 ibatl1; //0x208
	u32 ibatu2; //0x20c
	u32 ibatl2; //0x210
	u32 ibatu3; //0x214
	u32 ibatl3; //0x218
	u32 dbatu0; //0x21c
	u32 dbatl0; //0x220
	u32 dbatu1; //0x224
	u32 dbatl1; //0x228
	u32 dbatu2; //0x22c
	u32 dbatl2; //0x230
	u32 dbatu3; //0x234
	u32 dbatl3; //0x238

	u32 unk23C;

	//IBAT 4-7
	u32 ibatu4; //0x240
	u32 ibatl4; //0x244
	u32 ibatu5; //0x248
	u32 ibatl5; //0x24c
	u32 ibatu6; //0x250
	u32 ibatl6; //0x254
	u32 ibatu7; //0x258
	u32 ibatl7; //0x25c, also used for sdr1?

	u32 dar; //0x260
	u32 dsisr; //0x264
	u32 sprg0; //0x268
	u32 sprg1; //0x26c
	u32 sprg2; //0x270
	u32 sprg3; //0x274
	u32 dec; //0x278
	u32 iabr; //0x27c
	u32 ear; //0x280
	u32 dabr; //0x284
	u32 pmc1; //0x288
	u32 pmc2; //0x28c
	u32 pmc3; //0x290
	u32 pmc4; //0x294
	u32 sia; //0x298
	u32 mmcr0; //0x29c
	u32 mmcr1; //0x2a0
	u32 unk2A4; //ibat7l?
	u32 unk2A8; //dbat4u?
	u32 unk2AC; //dbat4l?
	u32 ictc; //0x2b0
	u32 l2cr; //0x2b4
	u32 srr0; //0x2b8
	u32 unk2BC; //dbat5u?
	u32 ummcr0; //0x2c0
	u32 upmc1; //0x2c4
	u32 upmc2; //0x2c8
	u32 usia; //0x2cc
	u32 ummcr1; //0x2d0
	u32 upmc3; //0x2d4
	u32 upmc4; //0x2d8

	u32 unk2DC; //dbat5l?
	u32 unk2E0; //dbat6u?
	u32 unk2E4; //dbat6l?
	u32 unk2E8; //dbat7u?
	u32 unk2EC; //dbat7l?
	u32 unk2F0; //hid2?
	u32 unk2F4; //hid4?

	u32 unk2F8;

	u32 gqrs[8]; //0x2fc
	u32 wpar; //0x31c
	u32 dmau; //0x320
	u32 dmal; //0x324

	u8 unk328[0x42c - 0x328];
	u32 unk42C; //0x42c lr?
} TRKCPUState;


#define SPR_XER 1
#define SPR_LR 8
#define SPR_CTR 9
#define SPR_DSISR 18
#define SPR_DAR 19
#define SPR_DEC 22
#define SPR_SDR1 25
#define SPR_SRR0 26
#define SPR_SRR1 27
#define SPR_SPRG0 272
#define SPR_SPRG1 273
#define SPR_SPRG2 274
#define SPR_SPRG3 275
#define SPR_EAR 282
#define SPR_TBL 284
#define SPR_TBU 285
#define SPR_PVR 287
#define SPR_IBAT0U 528
#define SPR_IBAT0L 529
#define SPR_IBAT1U 530
#define SPR_IBAT1L 531
#define SPR_IBAT2U 532
#define SPR_IBAT2L 533
#define SPR_IBAT3U 534
#define SPR_IBAT3L 535
#define SPR_IBAT4U 560
#define SPR_IBAT4L 561
#define SPR_IBAT5U 562
#define SPR_IBAT5L 563
#define SPR_IBAT6U 564
#define SPR_IBAT6L 565
#define SPR_IBAT7U 566
#define SPR_IBAT7L 567
#define SPR_DBAT0U 536
#define SPR_DBAT0L 537
#define SPR_DBAT1U 538
#define SPR_DBAT1L 539
#define SPR_DBAT2U 540
#define SPR_DBAT2L 541
#define SPR_DBAT3U 542
#define SPR_DBAT3L 543
#define SPR_DBAT4U 568
#define SPR_DBAT4L 569
#define SPR_DBAT5U 570
#define SPR_DBAT5L 571
#define SPR_DBAT6U 572
#define SPR_DBAT6L 573
#define SPR_DBAT7U 574
#define SPR_DBAT7L 575
#define SPR_GQR0 912
#define SPR_GQR1 913
#define SPR_GQR2 914
#define SPR_GQR3 915
#define SPR_GQR4 916
#define SPR_GQR5 917
#define SPR_GQR6 918
#define SPR_GQR7 919
#define SPR_HID2 920
#define SPR_WPAR 921
#define SPR_DMA_U 922
#define SPR_DMA_L 923
#define SPR_UMMCR0 936
#define SPR_UPMC1 937
#define SPR_UPMC2 938
#define SPR_USIA 939
#define SPR_UMMCR1 940
#define SPR_UPMC3 941
#define SPR_UPMC4 942
#define SPR_USDA 943
#define SPR_MMCR0 952
#define SPR_PMC1 953
#define SPR_PMC2 954
#define SPR_SIA 955
#define SPR_MMCR1 956
#define SPR_PMC3 957
#define SPR_PMC4 958
#define SPR_SDA 959
#define SPR_HID0 1008
#define SPR_HID1 1009
#define SPR_IABR 1010
#define SPR_HID4 1011
#define SPR_DABR 1013
#define SPR_L2CR 1017
#define SPR_ICTC 1019
#define SPR_THRM1 1020
#define SPR_THRM2 1021
#define SPR_FPECR 1022


/**
 * MSR
 * Machine Status Register
 */
// Power management enable
#define MSR_POW (1 << (31 - 13))
// Exception little-endian mode
#define MSR_ILE (1 << (31 - 15))
// External interrupt enable
#define MSR_EE (1 << (31 - 16))
// Privilege level
#define MSR_PR (1 << (31 - 17))
// Floating-point available
#define MSR_FP (1 << (31 - 18))
// Machine check enable
#define MSR_ME (1 << (31 - 19))
// IEEE floating-point exception mode 0
#define MSR_FE0 (1 << (31 - 20))
// Single-step trace enable
#define MSR_SE (1 << (31 - 21))
// Branch trace enable
#define MSR_BE (1 << (31 - 22))
// IEEE floating-point exception mode 1
#define MSR_FE1 (1 << (31 - 23))
// Exception prefix
#define MSR_IP (1 << (31 - 25))
// Instruction address translation
#define MSR_IR (1 << (31 - 26))
// Data address translation
#define MSR_DR (1 << (31 - 27))
// Performance monitor marked mode
#define MSR_PM (1 << (31 - 29))
// Indicates whether system reset or machine check exception is recoverable
#define MSR_RI (1 << (31 - 30))
// Little-endian mode enable
#define MSR_LE (1 << (31 - 31))

#ifdef __cplusplus
}
#endif


#endif
