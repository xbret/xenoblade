#ifndef METROTRK_PPC_REG
#define METROTRK_PPC_REG

#include "PowerPC_EABI_Support/MetroTRK/dstypes.h"
#include "PowerPC_EABI_Support/MetroTRK/trk.h"

typedef struct Default_PPC{
	ui32 GPR[32];
	ui32 PC;
	ui32 LR;
	ui32 CR;
	ui32 CTR;
	ui32 XER;
} Default_PPC;

typedef struct Float_PPC{
	ui64 FPR[32];
	ui64 FPSCR;
	ui64 FPECR;
} Float_PPC;

typedef struct Extended1_PPC_6xx_7xx{
	ui32 SR[16];
	ui32 TBL;
	ui32 TBU;
	ui32 HID0;
	ui32 HID1;
	ui32 MSR;
	ui32 PVR;
	ui32 IBAT0U;
	ui32 IBAT0L;
	ui32 IBAT1U;
	ui32 IBAT1L;
	ui32 IBAT2U;
	ui32 IBAT2L;
	ui32 IBAT3U;
	ui32 IBAT3L;
	ui32 DBAT0U;
	ui32 DBAT0L;
	ui32 DBAT1U;
	ui32 DBAT1L;
	ui32 DBAT2U;
	ui32 DBAT2L;
	ui32 DBAT3U;
	ui32 DBAT3L;
	ui32 DMISS;
	ui32 DCMP;
	ui32 HASH1;
	ui32 HASH2;
	ui32 IMISS;
	ui32 ICMP;
	ui32 RPA;
	ui32 SDR1;
	ui32 DAR;
	ui32 DSISR;
	ui32 SPRG0;
	ui32 SPRG1;
	ui32 SPRG2;
	ui32 SPRG3;
	ui32 DEC;
	ui32 IABR;
	ui32 EAR;
	ui32 DABR;
	ui32 PMC1;
	ui32 PMC2;
	ui32 PMC3;
	ui32 PMC4;
	ui32 SIA;
	ui32 MMCR0;
	ui32 MMCR1;
	ui32 THRM1;
	ui32 THRM2;
	ui32 THRM3;
	ui32 ICTC;
	ui32 L2CR;
	ui32 UMMCR2;
	ui32 UBAMR;
	ui32 UMMCR0;
	ui32 UPMC1;
	ui32 UPMC2;
	ui32 USIA;
	ui32 UMMCR1;
	ui32 UPMC3;
	ui32 UPMC4;
	ui32 USDA;
	ui32 MMCR2;
	ui32 BAMR;
	ui32 SDA;
	ui32 MSSCR0;
	ui32 MSSCR1;
	ui32 PIR;
	ui32 exceptionID;
	ui32 GQR[8];
	ui32 HID_G;
	ui32 WPAR;
	ui32 DMA_U;
	ui32 DMA_L;
} Extended1_PPC_6xx_7xx;

typedef struct Extended2_PPC_6xx_7xx{
	ui32 PSR[32][2];
} Extended2_PPC_6xx_7xx;

typedef struct ProcessorState_PPC_6xx_7xx{
	Default_PPC Default;
	Float_PPC Float;
	Extended1_PPC_6xx_7xx Extended1;
	Extended2_PPC_6xx_7xx Extended2;
	ui32 transport_handler_saved_ra;
} ProcessorState_PPC_6xx_7xx;


typedef ProcessorState_PPC_6xx_7xx ProcessorState_PPC;


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

#endif
