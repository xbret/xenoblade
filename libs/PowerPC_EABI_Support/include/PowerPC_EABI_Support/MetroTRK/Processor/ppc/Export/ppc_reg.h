#ifndef METROTRK_PPC_REG
#define METROTRK_PPC_REG

#include "types.h"
#include "PowerPC_EABI_Support/MetroTRK/trk.h"

#ifdef __cplusplus
extern "C"{
#endif


typedef struct TRKCPUState{
	u32 unk0;
	u32 unk4;
	u32 unk8;
	u32 unkC;
	u32 unk10;
	u32 unk14;
	u32 unk18;
	u8 unk1C[0x80 - 0x1c];
	u32 pc; //0x80
	u32 unk84;
	u32 unk88;
	u32 unk8C;
	u32 unk90;
	u8 unk94[0x1a8 - 0x94];
	float srs[16]; //0x1a8
	u32 unk1E8; //tbl
	u32 unk1EC; //tbu
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

	u16 unk2F8; //also read as a 32bit num
	u16 unk2FA;

	u32 gqrs[8]; //0x2fc
	u32 wpar; //0x31c
	u32 dmau; //0x320
	u32 dmal; //0x324

	u8 unk2FC[0x42c - 0x328];
	u32 lr; //0x42c
} TRKCPUState;

#ifdef __cplusplus
}
#endif
#endif
