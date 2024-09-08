#ifndef RVL_SDK_PRIVATE_DSP_OPCODES_H
#define RVL_SDK_PRIVATE_DSP_OPCODES_H

//Defines for DSP opcodes.
//https://github.com/dolphin-emu/dolphin/blob/master/Source/Core/Core/DSP/DSPTables.cpp



//Extension opcodes
#define EXT_XXX(P_VAL)    (0x0000 | (P_VAL & 0x00FF))
#define EXT_DR(P_REG)     (0x0004 | (P_REG & 0x0003))
#define EXT_IR(P_REG)     (0x0008 | (P_REG & 0x0003))
#define EXT_NR(P_REG)     (0x000c | (P_REG & 0x0003))
#define EXT_MV(P_REG18, P_REG1C)     (0x0010 | ((P_REG18 << 2) & 0x000C) | ((P_REG1C << 0) & 0x0003))
#define EXT_S(P_PRG, P_REG1C)        (0x0020 | ((P_PRG << 0) & 0x0003) | ((P_REG1C << 3) & 0x0018))
#define EXT_SN(P_PRG, P_REG1C)       (0x0024 | ((P_PRG << 0) & 0x0003) | ((P_REG1C << 3) & 0x0018))
#define EXT_L(P_REG18, P_PRG)        (0x0040 | ((P_REG18 << 3) & 0x0038) | ((P_PRG << 0) & 0x0003))
#define EXT_LN(P_REG18, P_PRG)       (0x0044 | ((P_REG18 << 3) & 0x0038) | ((P_PRG << 0) & 0x0003))
#define EXT_LS(P_REG18, P_ACCM)      (0x0080 | ((P_REG18 << 4) & 0x0030) | ((P_ACCM << 0) & 0x0001))
#define EXT_SL(P_ACCM, P_REG18)      (0x0082 | ((P_ACCM << 0) & 0x0001) | ((P_REG18 << 4) & 0x0030))
#define EXT_LSN(P_REG18, P_ACCM)     (0x0084 | ((P_REG18 << 4) & 0x0030) | ((P_ACCM << 0) & 0x0001))
#define EXT_SLN(P_ACCM, P_REG18)     (0x0086 | ((P_ACCM << 0) & 0x0001) | ((P_REG18 << 4) & 0x0030))
#define EXT_LSM(P_REG18, P_ACCM)     (0x0088 | ((P_REG18 << 4) & 0x0030) | ((P_ACCM << 0) & 0x0001))
#define EXT_SLM(P_ACCM, P_REG18)     (0x008a | ((P_ACCM << 0) & 0x0001) | ((P_REG18 << 4) & 0x0030))
#define EXT_LSNM(P_REG18, P_ACCM)    (0x008c | ((P_REG18 << 4) & 0x0030) | ((P_ACCM << 0) & 0x0001))
#define EXT_SLNM(P_ACCM, P_REG18)    (0x008e | ((P_ACCM << 0) & 0x0001) | ((P_REG18 << 4) & 0x0030))
#define EXT_LDAX(P_AX, P_PRG)        (0x00c3 | ((P_AX << 4) & 0x0010) | ((P_PRG << 5) & 0x0020))
#define EXT_LDAXN(P_AX, P_PRG)       (0x00c7 | ((P_AX << 4) & 0x0010) | ((P_PRG << 5) & 0x0020))
#define EXT_LDAXM(P_AX, P_PRG)       (0x00cb | ((P_AX << 4) & 0x0010) | ((P_PRG << 5) & 0x0020))
#define EXT_LDAXNM(P_AX, P_PRG)      (0x00cf | ((P_AX << 4) & 0x0010) | ((P_PRG << 5) & 0x0020))
#define EXT_LD(P_REGM18, P_REGM19, P_PRG)     (0x00c0 | ((P_REGM18 << 4) & 0x20) | ((P_REGM19 << 3) & 0x10) | (P_PRG & 0b11))
#define EXT_LDN(P_REGM18, P_REGM19, P_PRG)    (0x00c4 | ((P_REGM18 << 4) & 0x20) | ((P_REGM19 << 3) & 0x10) | (P_PRG & 0b11))
#define EXT_LDM(P_REGM18, P_REGM19, P_PRG)    (0x00c8 | ((P_REGM18 << 4) & 0x20) | ((P_REGM19 << 3) & 0x10) | (P_PRG & 0b11))
#define EXT_LDNM(P_REGM18, P_REGM19, P_PRG)   (0x00cc | ((P_REGM18 << 4) & 0x20) | ((P_REGM19 << 3) & 0x10) | (P_PRG & 0b11))

//DSP opcodes

#define DSP_NOP (0x0000)

#define DSP_DAR(reg) (0x0004 | (reg & 0b11))
#define DSP_IAR(reg) (0x0008 | (reg & 0b11))
#define DSP_SUBARN(reg) (0x000C | (reg & 0b11))
#define DSP_ADDARN(reg, reg04) (0x0010 | (reg & 0b11) | ((reg04 & 0b11) << 2))

#define DSP_HALT (0x0021)

//Return instructions

#define DSP_RETGE  (0x02D0)
#define DSP_RETL   (0x02D1)
#define DSP_RETG   (0x02D2)
#define DSP_RETLE  (0x02D3)
#define DSP_RETNZ  (0x02D4)
#define DSP_RETZ   (0x02D5)
#define DSP_RETNC  (0x02D6)
#define DSP_RETC   (0x02D7)
#define DSP_RETX8  (0x02D8)
#define DSP_RETX9  (0x02D9)
#define DSP_RETXA  (0x02DA)
#define DSP_RETXB  (0x02DB)
#define DSP_RETLNZ (0x02DC)
#define DSP_RETLZ  (0x02DD)
#define DSP_RETO   (0x02DE)
#define DSP_RET    (0x02DF)

//Return from interrupt instructions

#define DSP_RTIGE  (0x02F0)
#define DSP_RTIL   (0x02F1)
#define DSP_RTIG   (0x02F2)
#define DSP_RTILE  (0x02F3)
#define DSP_RTINZ  (0x02F4)
#define DSP_RTIZ   (0x02F5)
#define DSP_RTINC  (0x02F6)
#define DSP_RTIC   (0x02F7)
#define DSP_RTIX8  (0x02F8)
#define DSP_RTIX9  (0x02F9)
#define DSP_RTIXA  (0x02FA)
#define DSP_RTIXB  (0x02FB)
#define DSP_RTILNZ (0x02FC)
#define DSP_RTILZ  (0x02FD)
#define DSP_RTIO   (0x02FE)
#define DSP_RTI    (0x02FF)

//Call instructions

#define DSP_CALLGE(addr)  (0x02B0), (addr & 0xFFFF)
#define DSP_CALLL(addr)   (0x02B1), (addr & 0xFFFF)
#define DSP_CALLG(addr)   (0x02B2), (addr & 0xFFFF)
#define DSP_CALLLE(addr)  (0x02B3), (addr & 0xFFFF)
#define DSP_CALLNZ(addr)  (0x02B4), (addr & 0xFFFF)
#define DSP_CALLZ(addr)   (0x02B5), (addr & 0xFFFF)
#define DSP_CALLNC(addr)  (0x02B6), (addr & 0xFFFF)
#define DSP_CALLC(addr)   (0x02B7), (addr & 0xFFFF)
#define DSP_CALLX8(addr)  (0x02B8), (addr & 0xFFFF)
#define DSP_CALLX9(addr)  (0x02B9), (addr & 0xFFFF)
#define DSP_CALLXA(addr)  (0x02BA), (addr & 0xFFFF)
#define DSP_CALLXB(addr)  (0x02BB), (addr & 0xFFFF)
#define DSP_CALLLNZ(addr) (0x02BC), (addr & 0xFFFF)
#define DSP_CALLLZ(addr)  (0x02BD), (addr & 0xFFFF)
#define DSP_CALLO(addr)   (0x02BE), (addr & 0xFFFF)
#define DSP_CALL(addr)    (0x02BF), (addr & 0xFFFF)

//If instructions (027X)

#define DSP_IFGE  (0x0270)
#define DSP_IFL   (0x0271)
#define DSP_IFG   (0x0272)
#define DSP_IFLE  (0x0273)
#define DSP_IFNZ  (0x0274)
#define DSP_IFZ   (0x0275)
#define DSP_IFNC  (0x0276)
#define DSP_IFC   (0x0277)
#define DSP_IFX8  (0x0278)
#define DSP_IFX9  (0x0279)
#define DSP_IFXA  (0x027A)
#define DSP_IFXB  (0x027B)
#define DSP_IFLNZ (0x027C)
#define DSP_IFLZ  (0x027D)
#define DSP_IFO   (0x027E)
#define DSP_IF    (0x027F)

//Jump instructions

#define DSP_JGE(addr)   (0x0290), (addr & 0xFFFF)
#define DSP_JL(addr)    (0x0291), (addr & 0xFFFF)
#define DSP_JG(addr)    (0x0292), (addr & 0xFFFF)
#define DSP_JLE(addr)   (0x0293), (addr & 0xFFFF)
#define DSP_JNZ(addr)   (0x0294), (addr & 0xFFFF)
#define DSP_JZ(addr)    (0x0295), (addr & 0xFFFF)
#define DSP_JNC(addr)   (0x0296), (addr & 0xFFFF)
#define DSP_JC(addr)    (0x0297), (addr & 0xFFFF)
#define DSP_JMPX8(addr) (0x0298), (addr & 0xFFFF)
#define DSP_JMPX9(addr) (0x0299), (addr & 0xFFFF)
#define DSP_JMPXA(addr) (0x029A), (addr & 0xFFFF)
#define DSP_JMPXB(addr) (0x029B), (addr & 0xFFFF)
#define DSP_JLNZ(addr)  (0x029C), (addr & 0xFFFF)
#define DSP_JLZ(addr)   (0x029D), (addr & 0xFFFF)
#define DSP_JO(addr)    (0x029E), (addr & 0xFFFF)
#define DSP_JMP(addr)   (0x029F), (addr & 0xFFFF)

//Jump register instructions

#define DSP_JRGE(reg)   (0x1700 | ((reg & 0b111) << 5))
#define DSP_JRL(reg)    (0x1701 | ((reg & 0b111) << 5))
#define DSP_JRG(reg)    (0x1702 | ((reg & 0b111) << 5))
#define DSP_JRLE(reg)   (0x1703 | ((reg & 0b111) << 5))
#define DSP_JRNZ(reg)   (0x1704 | ((reg & 0b111) << 5))
#define DSP_JRZ(reg)    (0x1705 | ((reg & 0b111) << 5))
#define DSP_JRNC(reg)   (0x1706 | ((reg & 0b111) << 5))
#define DSP_JRC(reg)    (0x1707 | ((reg & 0b111) << 5))
#define DSP_JMPRX8(reg) (0x1708 | ((reg & 0b111) << 5))
#define DSP_JMPRX9(reg) (0x1709 | ((reg & 0b111) << 5))
#define DSP_JMPRXA(reg) (0x170A | ((reg & 0b111) << 5))
#define DSP_JMPRXB(reg) (0x170B | ((reg & 0b111) << 5))
#define DSP_JRLNZ(reg)  (0x170C | ((reg & 0b111) << 5))
#define DSP_JRLZ(reg)   (0x170D | ((reg & 0b111) << 5))
#define DSP_JRO(reg)    (0x170E | ((reg & 0b111) << 5))
#define DSP_JMPR(reg)   (0x170F | ((reg & 0b111) << 5))

//Call register instructions

#define DSP_CALLRGE(reg) (0x1710 | ((reg & 0b111) << 5))
#define DSP_CALLRL(reg)  (0x1711 | ((reg & 0b111) << 5))
#define DSP_CALLRG(reg)  (0x1712 | ((reg & 0b111) << 5))
#define DSP_CALLRLE(reg) (0x1713 | ((reg & 0b111) << 5))
#define DSP_CALLRNZ(reg) (0x1714 | ((reg & 0b111) << 5))
#define DSP_CALLRZ(reg)  (0x1715 | ((reg & 0b111) << 5))
#define DSP_CALLRNC(reg) (0x1716 | ((reg & 0b111) << 5))
#define DSP_CALLRC(reg)  (0x1717 | ((reg & 0b111) << 5))
#define DSP_CALLRX8(reg) (0x1718 | ((reg & 0b111) << 5))
#define DSP_CALLRX9(reg) (0x1719 | ((reg & 0b111) << 5))
#define DSP_CALLRXA(reg) (0x171A | ((reg & 0b111) << 5))
#define DSP_CALLRXB(reg) (0x171B | ((reg & 0b111) << 5))
#define DSP_CALLRLNZ(reg)(0x171C | ((reg & 0b111) << 5))
#define DSP_CALLRLZ(reg) (0x171D | ((reg & 0b111) << 5))
#define DSP_CALLRO(reg)  (0x171E | ((reg & 0b111) << 5))
#define DSP_CALLR(reg)   (0x171F | ((reg & 0b111) << 5))

#define DSP_SBCLR(imm) (0x1200 | (imm & 0b111))
#define DSP_SBSET(imm) (0x1300 | (imm & 0b111))

#define DSP_LSL(acc, imm) (0x1400 | ((acc & 0b1) << 8) | (imm & 0b111111))
#define DSP_LSR(acc, imm) (0x1440 | ((acc & 0b1) << 8) | (imm & 0b111111))
#define DSP_ASL(acc, imm) (0x1480 | ((acc & 0b1) << 8) | (imm & 0b111111))
#define DSP_ASR(acc, imm) (0x14C0 | ((acc & 0b1) << 8) | (imm & 0b111111))

#define DSP_LSRN (0x02CA)
#define DSP_ASRN (0x02CB)

#define DSP_LRI(reg, imm) (0x0080 | (reg & 0b11111)), (imm & 0xFFFF)
#define DSP_LR(reg, mem) (0x00C0 | (reg & 0b11111)), (mem & 0xFFFF)
#define DSP_SR(mem, reg) (0x00E0 | (reg & 0b11111)), (mem & 0xFFFF)

#define DSP_MRR(reg1, reg2) (0x1C00 | ((reg1 & 0b11111) << 5) | (reg2 & 0b11111))

#define DSP_SI(mem, imm) (0x1600 | (mem & 0xFF)), (imm & 0xFFFF)

#define DSP_ADDIS(accm, imm) (0x0400 | ((accm & 0b1) << 8) | (imm & 0xFF))
#define DSP_CMPIS(accm, imm) (0x0600 | ((accm & 0b1) << 8) | (imm & 0xFF))
#define DSP_LRIS(reg18, imm) (0x0800 | ((reg18 & 0b111) << 8) | (imm & 0xFF))

#define DSP_ADDI(accm, imm)  (0x0200 | ((accm & 0b1) << 8)), (imm & 0xFFFF)
#define DSP_XORI(accm, imm)  (0x0220 | ((accm & 0b1) << 8)), (imm & 0xFFFF)
#define DSP_ANDI(accm, imm)  (0x0240 | ((accm & 0b1) << 8)), (imm & 0xFFFF)
#define DSP_ORI(accm, imm)   (0x0260 | ((accm & 0b1) << 8)), (imm & 0xFFFF)
#define DSP_CMPI(accm, imm)  (0x0280 | ((accm & 0b1) << 8)), (imm & 0xFFFF)

#define DSP_ANDF(accm, imm)  (0x02A0 | ((accm & 0b1) << 8)), (imm & 0xFFFF)
#define DSP_ANDCF(accm, imm) (0x02C0 | ((accm & 0b1) << 8)), (imm & 0xFFFF)

#define DSP_ILRR(accm, prg) (0x0210 | ((accm & 0b1) << 8) | (prg & 0b11))
#define DSP_ILRRD(accm, prg) (0x0214 | ((accm & 0b1) << 8) | (prg & 0b11))
#define DSP_ILRRI(accm, prg) (0x0218 | ((accm & 0b1) << 8) | (prg & 0b11))
#define DSP_ILRRN(accm, prg) (0x021C | ((accm & 0b1) << 8) | (prg & 0b11))

//Loops

#define DSP_LOOP(reg) (0x0040 | (reg & 0b11111))
#define DSP_BLOOP(reg, addr) (0x0060 | (reg & 0b11111)), (addr & 0xFFFF)
#define DSP_LOOPI(imm) (0x1000 | (imm & 0xFF))
#define DSP_BLOOPI(imm, addr) (0x1100 | (imm & 0xFF)), (addr & 0xFFFF)

#define DSP_LRR(reg, prg) (0x1800 | (reg & 0b11111) | ((prg & 0b11) << 5))
#define DSP_LRRD(reg, prg) (0x1880 | (reg & 0b11111) | ((prg & 0b11) << 5))
#define DSP_LRRI(reg, prg) (0x1900 | (reg & 0b11111) | ((prg & 0b11) << 5))
#define DSP_LRRN(reg, prg) (0x1980 | (reg & 0b11111) | ((prg & 0b11) << 5))

#define DSP_SRR(prg, reg) (0x1A00 | (reg & 0b11111) | ((prg & 0b11) << 5))
#define DSP_SRRD(prg, reg) (0x1A80 | (reg & 0b11111) | ((prg & 0b11) << 5))
#define DSP_SRRI(prg, reg) (0x1B00 | (reg & 0b11111) | ((prg & 0b11) << 5))
#define DSP_SRRN(prg, reg) (0x1B80 | (reg & 0b11111) | ((prg & 0b11) << 5))

#define DSP_LRS(reg18, mem) (0x2000 | ((reg18 & 0b111) << 8) | (mem & 0xFF))
#define DSP_SRSH(mem, acch) (0x2800 | ((acch & 0b1) << 8) | (mem & 0xFF))
#define DSP_SRS(mem, reg1c) (0x2C00 | ((reg1c & 0b11) << 8) | (mem & 0xFF))

//Other opcodes

//3 - main opcode defined by 9 bits, extension defined by last 7 bits!!
#define DSP_XORR(accm, reg1a, ext)     (0x3000 | ((accm & 0b1) << 8) | ((reg1a & 0b1) << 9) | (ext))
#define DSP_ANDR(accm, reg1a, ext)     (0x3400 | ((accm & 0b1) << 8) | ((reg1a & 0b1) << 9) | (ext))
#define DSP_ORR(accm, reg1a, ext)      (0x3800 | ((accm & 0b1) << 8) | ((reg1a & 0b1) << 9) | (ext))
#define DSP_ANDC(accm, accmd, ext)     (0x3C00 | ((accm & 0b1) << 8) | ((accmd & 0b1) << 8) | (ext))
#define DSP_ORC(accm, accmd, ext)      (0x3E00 | ((accm & 0b1) << 8) | ((accmd & 0b1) << 8) | (ext))
#define DSP_XORC(accm, accmd, ext)     (0x3080 | ((accm & 0b1) << 8) | ((accmd & 0b1) << 8) | (ext))
#define DSP_NOT(accm, ext)             (0x3280 | ((accm & 0b1) << 8) | (ext))
#define DSP_LSRNRX(acc, reg1a, ext)    (0x3480 | ((acc & 0b1) << 8) | ((reg1a & 0b1) << 9) | (ext))
#define DSP_ASRNRX(acc, reg1a, ext)    (0x3880 | ((acc & 0b1) << 8) | ((reg1a & 0b1) << 9) | (ext))
#define DSP_LSRNR(acc, accmd, ext)     (0x3C80 | ((acc & 0b1) << 8) | ((accmd & 0b1) << 8) | (ext))
#define DSP_ASRNR(acc, accmd, ext)     (0x3E80 | ((acc & 0b1) << 8) | ((accmd & 0b1) << 8) | (ext))

//4
#define DSP_ADDR(acc, reg18, ext)     (0x4000 | ((acc & 0b1) << 8) | ((reg18 & 0b11) << 9) | (ext))
#define DSP_ADDAX(acc, ax, ext)       (0x4800 | ((acc & 0b1) << 8) | ((ax & 0b1) << 9) | (ext))
#define DSP_ADD(acc, accd, ext)       (0x4c00 | ((acc & 0b1) << 8) | ((accd & 0b1) << 8) | (ext))
#define DSP_ADDP(acc, ext)            (0x4e00 | ((acc & 0b1) << 8) | (ext))

//5
#define DSP_SUBR(acc, reg18, ext)     (0x5000 | ((acc & 0b1) << 8) | ((reg18 & 0b11) << 9) | (ext))
#define DSP_SUBAX(acc, ax, ext)       (0x5800 | ((acc & 0b1) << 8) | ((ax & 0b1) << 9) | (ext))
#define DSP_SUB(acc, accd, ext)       (0x5c00 | ((acc & 0b1) << 8) | ((accd & 0b1) << 8) | (ext))
#define DSP_SUBP(acc, ext)            (0x5e00 | ((acc & 0b1) << 8) | (ext))

//6
#define DSP_MOVR(acc, reg18, ext)     (0x6000 | ((acc & 0b1) << 8) | ((reg18 & 0b11) << 9) | (ext))
#define DSP_MOVAX(acc, ax, ext)       (0x6800 | ((acc & 0b1) << 8) | ((ax & 0b1) << 9) | (ext))
#define DSP_MOV(acc, accd, ext)       (0x6c00 | ((acc & 0b1) << 8) | ((accd & 0b1) << 8) | (ext))
#define DSP_MOVP(acc, ext)            (0x6e00 | ((acc & 0b1) << 8) | (ext))

//7
#define DSP_ADDAXL(acc, reg18, ext)   (0x7000 | ((acc & 0b1) << 8) | ((reg18 & 0b1) << 9) | (ext))
#define DSP_INCM(accm, ext)           (0x7400 | ((accm & 0b1) << 8) | (ext))
#define DSP_INC(acc, ext)             (0x7600 | ((acc & 0b1) << 8) | (ext))
#define DSP_DECM(accm, ext)           (0x7800 | ((accm & 0b1) << 8) | (ext))
#define DSP_DEC(acc, ext)             (0x7a00 | ((acc & 0b1) << 8) | (ext))
#define DSP_NEG(acc, ext)             (0x7c00 | ((acc & 0b1) << 8) | (ext))
#define DSP_MOVNP(acc, ext)           (0x7e00 | ((acc & 0b1) << 8) | (ext))

//8
#define DSP_NX(ext)            (0x8000 | (ext))
#define DSP_CLR(acc, ext)      (0x8100 | ((acc & 0b1) << 11) | (ext))
#define DSP_CMP(ext)           (0x8200 | (ext))
#define DSP_MULAXH(ext)        (0x8300 | (ext))
#define DSP_CLRP(ext)          (0x8400 | (ext))
#define DSP_TSTPROD(ext)       (0x8500 | (ext))
#define DSP_TSTAXH(reg1a, ext) (0x8600 | ((reg1a & 0b1) << 8) | (ext))
#define DSP_M2(ext)            (0x8A00 | (ext))
#define DSP_M0(ext)            (0x8B00 | (ext))
#define DSP_CLR15(ext)         (0x8C00 | (ext))
#define DSP_SET15(ext)         (0x8D00 | (ext))
#define DSP_SET16(ext)         (0x8E00 | (ext))
#define DSP_SET40(ext)         (0x8F00 | (ext))

//9
#define DSP_MUL(reg18, reg1a, ext)      (0x9000 | ((reg18 & 0b1) << 11) | ((reg1a & 0b1) << 11) | (ext))
#define DSP_ASR16(acc, ext)    (0x9100 | ((acc & 0b1) << 11) | (ext))
#define DSP_MULMVZ(reg18, reg1a, acc, ext)   (0x9200 | ((reg18 & 0b1) << 11) | ((reg1a & 0b1) << 11) | ((acc & 0b1) << 8) | (ext))
#define DSP_MULAC(reg18, reg1a, acc, ext)    (0x9400 | ((reg18 & 0b1) << 11) | ((reg1a & 0b1) << 11) | ((acc & 0b1) << 8) | (ext))
#define DSP_MULMV(reg18, reg1a, acc, ext)    (0x9600 | ((reg18 & 0b1) << 11) | ((reg1a & 0b1) << 11) | ((acc & 0b1) << 8) | (ext))

//a-b
#define DSP_MULX(P_REGM18, P_REGM19, ext)     (0xA000 | ((P_REGM18 << 11) & 0x1000) | ((P_REGM19 << 10) & 0x0800) | (ext))
#define DSP_ABS(acc, ext)      (0xa100 | ((acc & 0b1) << 11) | (ext))
#define DSP_MULXMVZ(P_REGM18, P_REGM19, P_ACC, ext)  (0xA200 | ((P_REGM18 << 11) & 0x1000) | ((P_REGM19 << 10) & 0x0800) | ((P_ACC << 8) & 0x0100) | (ext))
#define DSP_MULXAC(P_REGM18, P_REGM19, P_ACC, ext)   (0xA400 | ((P_REGM18 << 11) & 0x1000) | ((P_REGM19 << 10) & 0x0800) | ((P_ACC << 8) & 0x0100) | (ext))
#define DSP_MULXMV(P_REGM18, P_REGM19, P_ACC, ext)   (0xA600 | ((P_REGM18 << 11) & 0x1000) | ((P_REGM19 << 10) & 0x0800) | ((P_ACC << 8) & 0x0100) | (ext))
#define DSP_TST(acc, ext)      (0xb100 | ((acc & 0b1) << 11) | (ext))

//c-d
#define DSP_MULC(P_ACCM, P_REG1A, ext)     (0xC000 | ((P_ACCM << 12) & 0x1000) | ((P_REG1A << 11) & 0x0800) | (ext))
#define DSP_CMPAXH(P_ACC, P_REG1A, ext)   (0xC100 | ((P_ACC << 11) & 0x0800) | ((P_REG1A << 12) & 0x1000) | (ext))
#define DSP_MULCMVZ(P_ACCM, P_REG1A, P_ACC, ext)  (0xC200 | ((P_ACCM << 12) & 0x1000) | ((P_REG1A << 11) & 0x0800) | ((P_ACC << 8) & 0x0100) | (ext))
#define DSP_MULCAC(P_ACCM, P_REG1A, P_ACC, ext)   (0xC400 | ((P_ACCM << 12) & 0x1000) | ((P_REG1A << 11) & 0x0800) | ((P_ACC << 8) & 0x0100) | (ext))
#define DSP_MULCMV(P_ACCM, P_REG1A, P_ACC, ext)   (0xC600 | ((P_ACCM << 12) & 0x1000) | ((P_REG1A << 11) & 0x0800) | ((P_ACC << 8) & 0x0100) | (ext))

//e
#define DSP_MADDX(P_REGM18, P_REGM19, ext)    (0xE000 | ((P_REGM18 << 8) & 0x0200) | ((P_REGM19 << 7) & 0x0100) | (ext))
#define DSP_MSUBX(P_REGM18, P_REGM19, ext)    (0xE400 | ((P_REGM18 << 8) & 0x0200) | ((P_REGM19 << 7) & 0x0100) | (ext))
#define DSP_MADDC(P_ACCM, P_REG19, ext)    (0xE800 | ((P_ACCM << 9) & 0x0200) | ((P_REG19 << 7) & 0x0100) | (ext))
#define DSP_MSUBC(P_ACCM, P_REG19, ext)    (0xEC00 | ((P_ACCM << 9) & 0x0200) | ((P_REG19 << 7) & 0x0100) | (ext))

//f
#define DSP_LSL16(P_ACC, ext)    (0xF000 | ((P_ACC << 8) & 0x0100) | (ext))
#define DSP_MADD(P_REG18, P_REG1A, ext)     (0xF200 | ((P_REG18 << 8) & 0x0100) | ((P_REG1A << 8) & 0x0100) | (ext))
#define DSP_LSR16(P_ACC, ext)    (0xF400 | ((P_ACC << 8) & 0x0100) | (ext))
#define DSP_MSUB(P_REG18, P_REG1A, ext)     (0xF600 | ((P_REG18 << 8) & 0x0100) | ((P_REG1A << 8) & 0x0100) | (ext))
#define DSP_ADDPAXZ(P_ACC, P_AX, ext)  (0xF800 | ((P_ACC << 9) & 0x0200) | ((P_AX << 8) & 0x0100) | (ext))
#define DSP_CLRL(P_ACCL, ext)     (0xFC00 | ((P_ACCL << 11) & 0x0800) | (ext))
#define DSP_MOVPZ(P_ACC, ext)    (0xFE00 | ((P_ACC << 8) & 0x0100))  | (ext)

#endif
