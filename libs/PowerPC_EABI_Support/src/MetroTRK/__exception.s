.include "macros.inc"

.section .init, "ax"

.global gTRKInterruptVectorTable
gTRKInterruptVectorTable:
.string "Metrowerks Target Resident Kernel for PowerPC"
.balign 4, 0
.fill 0xD0

#############################################
# Interrupt vector slot 0x0000 is reserved. #
#############################################

# Slot 0x0100: System Reset Exception
    b __TRKreset
.fill 0xFC

# Slot 0x0200: Machine Check Exception
	mtsprg 1, r2
	mfsrr0 r2
	icbi 0, r2
	mfdar r2
	dcbi 0, r2
	mfsprg r2, 1
	mtsprg 1, r2
	mtsprg 2, r3
	mtsprg 3, r4
	mfsrr0 r2
	mfsrr1 r4
	mfmsr r3
	ori r3, r3, 0x30
	mtsrr1 r3
	lis r3, TRK_InterruptHandler@h
	ori r3, r3, TRK_InterruptHandler@l
	mtsrr0 r3
	li r3, 0x200
	rfi 
.fill 0xB4

# Slot 0x0300: DSI Exception
	mtsprg 1, r2
	mtsprg 2, r3
	mtsprg 3, r4
	mfsrr0 r2
	mfsrr1 r4
	mfmsr r3
	ori r3, r3, 0x30
	mtsrr1 r3
	lis r3, TRK_InterruptHandler@h
	ori r3, r3, TRK_InterruptHandler@l
	mtsrr0 r3
	li r3, 0x300
	rfi 
.fill 0xCC

# Slot 0x0400: ISI Exception
	mtsprg 1, r2
	mtsprg 2, r3
	mtsprg 3, r4
	mfsrr0 r2
	mfsrr1 r4
	mfmsr r3
	ori r3, r3, 0x30
	mtsrr1 r3
	lis r3, TRK_InterruptHandler@h
	ori r3, r3, TRK_InterruptHandler@l
	mtsrr0 r3
	li r3, 0x400
	rfi 
.fill 0xCC

# Slot 0x0500: External Interrupt Exception
	mtsprg 1, r2
	mtsprg 2, r3
	mtsprg 3, r4
	mfsrr0 r2
	mfsrr1 r4
	mfmsr r3
	ori r3, r3, 0x30
	mtsrr1 r3
	lis r3, TRK_InterruptHandler@h
	ori r3, r3, TRK_InterruptHandler@l
	mtsrr0 r3
	li r3, 0x500
	rfi 
.fill 0xCC

# Slot 0x0600: Alignment Exception
	mtsprg 1, r2
	mtsprg 2, r3
	mtsprg 3, r4
	mfsrr0 r2
	mfsrr1 r4
	mfmsr r3
	ori r3, r3, 0x30
	mtsrr1 r3
	lis r3, TRK_InterruptHandler@h
	ori r3, r3, TRK_InterruptHandler@l
	mtsrr0 r3
	li r3, 0x600
	rfi 
.fill 0xCC

# Slot 0x0700: Program Exception
	mtsprg 1, r2
	mtsprg 2, r3
	mtsprg 3, r4
	mfsrr0 r2
	mfsrr1 r4
	mfmsr r3
	ori r3, r3, 0x30
	mtsrr1 r3
	lis r3, TRK_InterruptHandler@h
	ori r3, r3, TRK_InterruptHandler@l
	mtsrr0 r3
	li r3, 0x700
	rfi 
.fill 0xCC

# Slot 0x0800: Floating Point Unavailable Exception
	mtsprg 1, r2
	mtsprg 2, r3
	mtsprg 3, r4
	mfsrr0 r2
	mfsrr1 r4
	mfmsr r3
	ori r3, r3, 0x30
	mtsrr1 r3
	lis r3, TRK_InterruptHandler@h
	ori r3, r3, TRK_InterruptHandler@l
	mtsrr0 r3
	li r3, 0x800
	rfi 
.fill 0xCC

# Slot 0x0900: Decrementer Exception
	mtsprg 1, r2
	mtsprg 2, r3
	mtsprg 3, r4
	mfsrr0 r2
	mfsrr1 r4
	mfmsr r3
	ori r3, r3, 0x30
	mtsrr1 r3
	lis r3, TRK_InterruptHandler@h
	ori r3, r3, TRK_InterruptHandler@l
	mtsrr0 r3
	li r3, 0x900
	rfi 
.fill 0xCC

######################################################
# Interrupt vector slots 0x0A00 & 0x0B00 are reserved.
.fill 0x100 
.fill 0x100 
######################################################

# Slot 0x0C00: System Call Exception
	mtsprg 1, r2
	mtsprg 2, r3
	mtsprg 3, r4
	mfsrr0 r2
	mfsrr1 r4
	mfmsr r3
	ori r3, r3, 0x30
	mtsrr1 r3
	lis r3, TRK_InterruptHandler@h
	ori r3, r3, TRK_InterruptHandler@l
	mtsrr0 r3
	li r3, 0xc00
	rfi 
.fill 0xCC

# Slot 0x0D00: Trace Exception
	mtsprg 1, r2
	mtsprg 2, r3
	mtsprg 3, r4
	mfsrr0 r2
	mfsrr1 r4
	mfmsr r3
	ori r3, r3, 0x30
	mtsrr1 r3
	lis r3, TRK_InterruptHandler@h
	ori r3, r3, TRK_InterruptHandler@l
	mtsrr0 r3
	li r3, 0xd00
	rfi 
.fill 0xCC

############################################################################
# Slot 0x0E00 is usually for the Floating Point Assist Exception Handler,  #
# however that exception is not implemented in the PPC 750CL architecture. #
############################################################################

# Slot 0x0F00: Performance Monitor Exception
	mtsprg 1, r2
	mtsprg 2, r3
	mtsprg 3, r4
	mfsrr0 r2
	mfsrr1 r4
	mfmsr r3
	ori r3, r3, 0x30
	mtsrr1 r3
	lis r3, TRK_InterruptHandler@h
	ori r3, r3, TRK_InterruptHandler@l
	mtsrr0 r3
	li r3, 0xe00
	rfi 
.fill 0xCC

##################################################################################
# Interrupt vector slots 0x1000 through 0x1200 are not implemented in the 750CL. #
##################################################################################

# Slot 0x1300: Instruction Address Breakpoint Exception
	b .L_800052D4
.fill 0x1C
	mtsprg 1, r2
	mtsprg 2, r3
	mtsprg 3, r4
	mfsrr0 r2
	mfsrr1 r4
	mfmsr r3
	ori r3, r3, 0x30
	mtsrr1 r3
	lis r3, TRK_InterruptHandler@h
	ori r3, r3, TRK_InterruptHandler@l
	mtsrr0 r3
	li r3, 0xf20
	rfi 
.L_800052D4:
	mtsprg 1, r2
	mtsprg 2, r3
	mtsprg 3, r4
	mfsrr0 r2
	mfsrr1 r4
	mfmsr r3
	ori r3, r3, 0x30
	mtsrr1 r3
	lis r3, TRK_InterruptHandler@h
	ori r3, r3, TRK_InterruptHandler@l
	mtsrr0 r3
	li r3, 0xf00
	rfi 
.fill 0x78

# Slot 0x1400: System Management Interrupt Exception
	mtsprg 1, r2
	mfcr r2
	mtsprg 2, r2
	mfmsr r2
	andis. r2, r2, 2
	beq .L_800053B0
	mfmsr r2
	xoris r2, r2, 2
	sync 0
	mtmsr r2
	sync 0
	mtsprg 1, r2
.L_800053B0:
	mfsprg r2, 2
	mtcrf 0xff, r2
	mfsprg r2, 1
	mtsprg 1, r2
	mtsprg 2, r3
	mtsprg 3, r4
	mfsrr0 r2
	mfsrr1 r4
	mfmsr r3
	ori r3, r3, 0x30
	mtsrr1 r3
	lis r3, TRK_InterruptHandler@h
	ori r3, r3, TRK_InterruptHandler@l
	mtsrr0 r3
	li r3, 0x1000
	rfi 
.fill 0x90


##############################################################################
# Interrupt vector slots 0x1500 and 0x1600 are not implemented in the 750CL. #
##############################################################################

# Slot 0x1700: Thermal-Management Interrupt Exception
	mtsprg 1, r2
	mfcr r2
	mtsprg 2, r2
	mfmsr r2
	andis. r2, r2, 2
	beq .L_800054B0
	mfmsr r2
	xoris r2, r2, 2
	sync 0
	mtmsr r2
	sync 0
	mtsprg 1, r2
.L_800054B0:
	mfsprg r2, 2
	mtcrf 0xff, r2
	mfsprg r2, 1
	mtsprg 1, r2
	mtsprg 2, r3
	mtsprg 3, r4
	mfsrr0 r2
	mfsrr1 r4
	mfmsr r3
	ori r3, r3, 0x30
	mtsrr1 r3
	lis r3, TRK_InterruptHandler@h
	ori r3, r3, TRK_InterruptHandler@l
	mtsrr0 r3
	li r3, 0x1100
	rfi 
.fill 0x90

# Slot 0x1800(?)
	mtsprg 1, r2
	mfcr r2
	mtsprg 2, r2
	mfmsr r2
	andis. r2, r2, 2
	beq .L_800055B0
	mfmsr r2
	xoris r2, r2, 2
	sync 0
	mtmsr r2
	sync 0
	mtsprg 1, r2
.L_800055B0:
	mfsprg r2, 2
	mtcrf 0xff, r2
	mfsprg r2, 1
	mtsprg 1, r2
	mtsprg 2, r3
	mtsprg 3, r4
	mfsrr0 r2
	mfsrr1 r4
	mfmsr r3
	ori r3, r3, 0x30
	mtsrr1 r3
	lis r3, TRK_InterruptHandler@h
	ori r3, r3, TRK_InterruptHandler@l
	mtsrr0 r3
	li r3, 0x1200
	rfi 
.fill 0x90

# Slot 0x1900(?)
	mtsprg 1, r2
	mtsprg 2, r3
	mtsprg 3, r4
	mfsrr0 r2
	mfsrr1 r4
	mfmsr r3
	ori r3, r3, 0x30
	mtsrr1 r3
	lis r3, TRK_InterruptHandler@h
	ori r3, r3, TRK_InterruptHandler@l
	mtsrr0 r3
	li r3, 0x1300
	rfi 
.fill 0xCC

# Slot 0x1A00(?)
	mtsprg 1, r2
	mtsprg 2, r3
	mtsprg 3, r4
	mfsrr0 r2
	mfsrr1 r4
	mfmsr r3
	ori r3, r3, 0x30
	mtsrr1 r3
	lis r3, TRK_InterruptHandler@h
	ori r3, r3, TRK_InterruptHandler@l
	mtsrr0 r3
	li r3, 0x1400
	rfi 
.fill 0x1CC

# Slot 0x1B00(?)
	mtsprg 1, r2
	mtsprg 2, r3
	mtsprg 3, r4
	mfsrr0 r2
	mfsrr1 r4
	mfmsr r3
	ori r3, r3, 0x30
	mtsrr1 r3
	lis r3, TRK_InterruptHandler@h
	ori r3, r3, TRK_InterruptHandler@l
	mtsrr0 r3
	li r3, 0x1600
	rfi 
.fill 0xCC

# Slot 0x1C00(?)
	mtsprg 1, r2
	mtsprg 2, r3
	mtsprg 3, r4
	mfsrr0 r2
	mfsrr1 r4
	mfmsr r3
	ori r3, r3, 0x30
	mtsrr1 r3
	lis r3, TRK_InterruptHandler@h
	ori r3, r3, TRK_InterruptHandler@l
	mtsrr0 r3
	li r3, 0x1700
	rfi 
.fill 0x4CC

# Slot 0x1D00(?)
	mtsprg 1, r2
	mtsprg 2, r3
	mtsprg 3, r4
	mfsrr0 r2
	mfsrr1 r4
	mfmsr r3
	ori r3, r3, 0x30
	mtsrr1 r3
	lis r3, TRK_InterruptHandler@h
	ori r3, r3, TRK_InterruptHandler@l
	mtsrr0 r3
	li r3, 0x1c00
	rfi 
.fill 0xCC

# Slot 0x1E00(?)
	mtsprg 1, r2
	mtsprg 2, r3
	mtsprg 3, r4
	mfsrr0 r2
	mfsrr1 r4
	mfmsr r3
	ori r3, r3, 0x30
	mtsrr1 r3
	lis r3, TRK_InterruptHandler@h
	ori r3, r3, TRK_InterruptHandler@l
	mtsrr0 r3
	li r3, 0x1d00
	rfi 
.fill 0xCC

# Slot 0x1F00(?)
	mtsprg 1, r2
	mtsprg 2, r3
	mtsprg 3, r4
	mfsrr0 r2
	mfsrr1 r4
	mfmsr r3
	ori r3, r3, 0x30
	mtsrr1 r3
	lis r3, TRK_InterruptHandler@h
	ori r3, r3, TRK_InterruptHandler@l
	mtsrr0 r3
	li r3, 0x1e00
	rfi 
.fill 0xCC

# Slot 0x2000(?)
	mtsprg 1, r2
	mtsprg 2, r3
	mtsprg 3, r4
	mfsrr0 r2
	mfsrr1 r4
	mfmsr r3
	ori r3, r3, 0x30
	mtsrr1 r3
	lis r3, TRK_InterruptHandler@h
	ori r3, r3, TRK_InterruptHandler@l
	mtsrr0 r3
	li r3, 0x1f00
	rfi 
.fill 0xC
gTRKInterruptVectorTableEnd:
