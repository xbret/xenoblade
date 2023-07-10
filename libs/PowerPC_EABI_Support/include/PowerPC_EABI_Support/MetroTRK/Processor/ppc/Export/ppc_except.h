#ifndef METROTRK_PPC_EXCEPT
#define METROTRK_PPC_EXCEPT

#ifdef __cplusplus
extern "C"{
#endif

//PPC exceptions
//0x000 is reserved
#define PPC_SystemReset 0x100
#define PPC_MachineCheck 0x200
#define PPC_DataStorage 0x300
#define PPC_InstructionStorage 0x400
#define PPC_ExternalInterrupt 0x500
#define PPC_Alignment 0x600
#define PPC_Program 0x700
#define PPC_FloatingPointUnavaiable 0x800
#define PPC_Decrementer 0x900
//0xA00-0xB00 are reserved
#define PPC_SystemCall 0xC00
#define PPC_Trace 0xD00
#define PPC_FloatingPointAssist 0xE00 //unimplemented in 750CL
#define PPC_PerformanceMonitor 0xF00 //Dolphin/Broadway specific
//0x1000-0x1200 are unimplemented in 750CL
#define PPC_InstructionAddressBreakpoint 0x1300
//0x1400-0x2F00 are reserved, but TRK uses some
#define PPC_SystemManagementInterrupt 0x1400
//0x1500-0x1600 are unimplemented in 750CL
#define PPC_ThermalManagementInterrupt 0x1700
#define PPC_1800Exception 0x1800
#define PPC_1900Exception 0x1900
#define PPC_1A00Exception 0x1A00
#define PPC_1B00Exception 0x1B00
#define PPC_1C00Exception 0x1C00 //Data breakpoint?
#define PPC_1D00Exception 0x1D00 //Instruction breakpoint?
#define PPC_1E00Exception 0x1E00 //Peripheral breakpoint?
#define PPC_1F00Exception 0x1F00 //Non maskable development port?
#define PPC_2000Exception 0x2000


#ifdef __cplusplus
}
#endif

#endif
