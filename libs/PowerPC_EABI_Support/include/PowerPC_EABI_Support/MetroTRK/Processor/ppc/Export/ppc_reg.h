#ifndef METROTRK_PPC_REG
#define METROTRK_PPC_REG

#include "PowerPC_EABI_Support/MetroTRK/dstypes.h"
#include "PowerPC_EABI_Support/MetroTRK/trk.h"

/*
 *    Default register block (all registers typically requested by debugger)
 */

typedef ui32 DefaultType;
typedef ui32 Extended1Type;
typedef ui64 FloatType;
typedef FloatType FPType;    /* TRK core calls it FPType */

typedef struct Default_PPC{
	DefaultType GPR[32];
	DefaultType PC;
	DefaultType LR;
	DefaultType CR;
	DefaultType CTR;
	DefaultType XER;
} Default_PPC;

/*
** Register indices
*/
#define TRK_DEFAULT_GPR(x)            (x)
#define TRK_DEFAULT_PC                32
#define TRK_DEFAULT_LR                33
#define TRK_DEFAULT_CR                34
#define TRK_DEFAULT_CTR               35
#define TRK_DEFAULT_XER               36

#define TRK_DEFAULT_MIN_REGISTER      0
#define TRK_DEFAULT_MAX_REGISTER      (sizeof(Default_PPC) / sizeof(DefaultType) - 1)

#define TRK_DEFAULT_SIZE              (sizeof(DefaultType))

typedef struct Float_PPC{
	FloatType FPR[32];
	FloatType FPSCR;
	FloatType FPECR;
} Float_PPC;

/*
** Register indices
*/
#define TRK_FLOAT_FPR(x)               (x)
#define TRK_FLOAT_FPSCR                32
#define TRK_FLOAT_FPECR                33

#define TRK_FLOAT_MIN_REGISTER         0
#define TRK_FLOAT_MAX_REGISTER         (sizeof(Float_PPC) / sizeof(FloatType) - 1)

#define TRK_FLOAT_SIZE                 (sizeof(FloatType))


/*
 * Info stored in NotifyStopped message.
 */

typedef DefaultType    PCType;
typedef ui32            InstructionType;
typedef ui16            ExceptionCauseType;

typedef struct StopInfo_PPC{
	PCType PC;
	InstructionType PCInstruction;
	ExceptionCauseType exceptionID;
} StopInfo_PPC;

//
// Info stored in NotifyException message.
//

typedef StopInfo_PPC ExceptionInfo_PPC;

/*
** Info used by breakpoint code to restore (unset)
** breakpoints.  For software breakpoints it is just
** the saved instruction.
*/

typedef InstructionType BreakpointRestore;

#define TRK_EXTENDED2_SIZE            (sizeof(Extended2Type))


//Special purpose registers
#define SPR_XER                      1

#define SPR_LR                       8
#define SPR_CTR                      9

#define SPR_DSISR                    18
#define SPR_DAR                      19

#define SPR_DEC                      22

#define SPR_SDR1                     25
#define SPR_SRR0                     26
#define SPR_SRR1                     27

#define TBR_TBL_READ                 268
#define TBR_TBU_READ                 269

#define SPR_SPRG0                    272
#define SPR_SPRG1                    273
#define SPR_SPRG2                    274
#define SPR_SPRG3                    275

#define SPR_EAR                      282

#define TBR_TBL_WRITE                284
#define TBR_TBU_WRITE                285

#define SPR_PVR                      287

#define SPR_IBAT0U                   528
#define SPR_IBAT0L                   529
#define SPR_IBAT1U                   530
#define SPR_IBAT1L                   531
#define SPR_IBAT2U                   532
#define SPR_IBAT2L                   533
#define SPR_IBAT3U                   534
#define SPR_IBAT3L                   535

#define SPR_DBAT0U                   536
#define SPR_DBAT0L                   537
#define SPR_DBAT1U                   538
#define SPR_DBAT1L                   539
#define SPR_DBAT2U                   540
#define SPR_DBAT2L                   541
#define SPR_DBAT3U                   542
#define SPR_DBAT3L                   543

#define SPR_IBAT4U                   560
#define SPR_IBAT4L                   561
#define SPR_IBAT5U                   562
#define SPR_IBAT5L                   563
#define SPR_IBAT6U                   564
#define SPR_IBAT6L                   565
#define SPR_IBAT7U                   566
#define SPR_IBAT7L                   567

#define SPR_DBAT4U                   568
#define SPR_DBAT4L                   569
#define SPR_DBAT5U                   570
#define SPR_DBAT5L                   571
#define SPR_DBAT6U                   572
#define SPR_DBAT6L                   573
#define SPR_DBAT7U                   574
#define SPR_DBAT7L                   575

#define SPR_GQR0                     912
#define SPR_GQR1                     913
#define SPR_GQR2                     914
#define SPR_GQR3                     915
#define SPR_GQR4                     916
#define SPR_GQR5                     917
#define SPR_GQR6                     918
#define SPR_GQR7                     919

#define SPR_HID2                     920
#define SPR_WPAR                     921
#define SPR_DMAU                     922
#define SPR_DMAL                     923

#define SPR_UMMCR0                   936
#define SPR_UPMC1                    937
#define SPR_UPMC2                    938
#define SPR_USIA                     939
#define SPR_UMMCR1                   940
#define SPR_UPMC3                    941
#define SPR_UPMC4                    942
#define SPR_USDA                     943

#define SPR_MMCR0                    952
#define SPR_PMC1                     953
#define SPR_PMC2                     954
#define SPR_SIA                      955
#define SPR_MMCR1                    956
#define SPR_PMC3                     957
#define SPR_PMC4                     958
#define SPR_SDA                      959

#define SPR_HID0                     1008
#define SPR_HID1                     1009
#define SPR_IABR                     1010
#define SPR_HID4                     1011
#define SPR_TDCL                     1012
#define SPR_DABR                     1013

#define SPR_L2CR                     1017
#define SPR_TDCH                     1018
#define SPR_ICTC                     1019

#define SPR_THRM1                    1020
#define SPR_THRM2                    1021
#define SPR_THRM3                    1022

#define SPR_FPECR         1022

//MSR Register bits
#define COND_EQ		2
#define MSR_SE            0x0400      /* SE bit of MSR (bit 21) */
#define MSR_EE            0x8000      /* EE bit of MSR (bit 16) */
#define MSR_RI            0x0002      /* RI bit of MSR (bit 30) */
#define MSR_DR            0x0010      /* DR bit of MSR (bit 27) */
#define MSR_IR            0x0020      /* IR bit of MSR (bit 26) */
#define MSR_FP            0x2000      /* FP bit of MSR (bit 18) */
#define MSR_VEC           0x02000000  /* VEC bit of MSR (bit 6) */ /* AltiVec support */

#endif
