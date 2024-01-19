#ifndef TRK_M7XX_M603E_REG_H
#define TRK_M7XX_M603E_REG_H

#include "PowerPC_EABI_Support/MetroTRK/dstypes.h"
#include "PowerPC_EABI_Support/MetroTRK/Processor/ppc/Export/ppc_reg.h"

typedef struct Extended1_PPC_6xx_7xx{
	Extended1Type SR[16];
	Extended1Type TBL;
	Extended1Type TBU;
	Extended1Type HID0;
	Extended1Type HID1;
	Extended1Type MSR;
	Extended1Type PVR;
	Extended1Type HID2;
	Extended1Type IBAT0U;
	Extended1Type IBAT0L;
	Extended1Type IBAT1U;
	Extended1Type IBAT1L;
	Extended1Type IBAT2U;
	Extended1Type IBAT2L;
	Extended1Type IBAT3U;
	Extended1Type IBAT3L;
	Extended1Type DBAT0U;
	Extended1Type DBAT0L;
	Extended1Type DBAT1U;
	Extended1Type DBAT1L;
	Extended1Type DBAT2U;
	Extended1Type DBAT2L;
	Extended1Type DBAT3U;
	Extended1Type IBAT4U;

	Extended1Type DCMP;
	Extended1Type HASH1;
	Extended1Type HASH2;
	Extended1Type IMISS;
	Extended1Type ICMP;
	Extended1Type RPA;
	Extended1Type SDR1;
	Extended1Type DAR;
	Extended1Type DSISR;
	Extended1Type SPRG0;
	Extended1Type SPRG1;
	Extended1Type SPRG2;
	Extended1Type SPRG3;
	Extended1Type DEC;
	Extended1Type IABR;
	Extended1Type EAR;

	//7455 extension only
	Extended1Type DABR;
	Extended1Type LDSTCR;
	Extended1Type MSSSR0;
	Extended1Type UPMC5;
	Extended1Type UPMC6;
	Extended1Type PMC5;
	Extended1Type PMC6;
	Extended1Type TLBMISS;
	Extended1Type IBAT7L;
	Extended1Type PTELO;
	Extended1Type L3PM;
	Extended1Type ICTC;
	Extended1Type L3CR;
	Extended1Type SRR0;
	Extended1Type DBAT5U;
	Extended1Type UMMCR0;
	Extended1Type IBAT5L;
	Extended1Type IBAT6U;
	Extended1Type IBAT6L;
	Extended1Type IBAT7U;
	Extended1Type PTEHI;
	Extended1Type DBAT4U;
	Extended1Type DBAT5L;
	Extended1Type IBAT4L;
	Extended1Type DBAT4L;
	Extended1Type DBAT6U;
	Extended1Type DBAT6L;
	Extended1Type DBAT7U;
	Extended1Type DBAT7L;
	
	Extended1Type exceptionID;
	Extended1Type GQR;

	Extended1Type DBAT3L;
	Extended1Type DMISS;

	//7455 extension only
	Extended1Type L2CR2;
	Extended1Type MMCR0;
	Extended1Type MMCR1;
	Extended1Type THRM1;
	Extended1Type THRM2;
	Extended1Type THRM3;
	Extended1Type ICCR; 
	Extended1Type L2CR;
	ui8 pad[4];
} Extended1_PPC_6xx_7xx;

#define DS_EXTENDED1_MIN_REGISTER_6xx_7xx    0
#define DS_EXTENDED1_MAX_REGISTER_6xx_7xx    (sizeof(Extended1_PPC_6xx_7xx) / sizeof(Extended1Type) - 1)

typedef struct Extended2_PPC_6xx_7xx{
	ui32 PSR[32][2];
} Extended2_PPC_6xx_7xx;

typedef struct ProcessorState_PPC_6xx_7xx{
	Default_PPC Default;
	Float_PPC Float;
	Extended1_PPC_6xx_7xx Extended1;
	Extended2_PPC_6xx_7xx Extended2;
#if TRK_TRANSPORT_INT_DRIVEN
	DefaultType transport_handler_saved_ra;
#endif
} ProcessorState_PPC_6xx_7xx;


typedef ProcessorState_PPC_6xx_7xx ProcessorState_PPC;

#endif