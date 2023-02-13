#include "monolithlib/vm/yvm.h"

/* Based on XCDE/DDOC, it seems like this code was likely written in C.
However, it has extab data, which may or may not generate for C code. (needs testing) */

SBOpcode sbScriptOpcodes[96] = {
    {"NOP", 0, 0},
	{"CONST_0", 0, 1},
	{"CONST_1", 0, 1},
	{"CONST_2", 0, 1},
	{"CONST_3", 0, 1},
	{"CONST_4", 0, 1},
	{"CONST_I", 1, 1},
	{"CONST_I_W", 2, 1},
	{"POOL_INT", 1, 1},
	{"POOL_INT_W", 2, 1},
	{"POOL_FIXED", 1, 1},
	{"POOL_FIXED_W", 2, 1},
	{"POOL_STR", 1, 1},
	{"POOL_STR_W", 2, 1},
	{"LD", 1, 1},
	{"ST", 1, -1},
	{"LD_ARG", 1, 1},
	{"ST_ARG", 1, -1},
	{"ST_ARG_OMIT", 1, -1},
	{"LD_0", 0, 1},
	{"LD_1", 0, 1},
	{"LD_2", 0, 1},
	{"LD_3", 0, 1},
	{"ST_0", 0, -1},
	{"ST_1", 0, -1},
	{"ST_2", 0, -1},
	{"ST_3", 0, -1},
	{"LD_ARG_0", 0, 1},
	{"LD_ARG_1", 0, 1},
	{"LD_ARG_2", 0, 1},
	{"LD_ARG_3", 0, 1},
	{"ST_ARG_0", 0, -1},
	{"ST_ARG_1", 0, -1},
	{"ST_ARG_2", 0, -1},
	{"ST_ARG_3", 0, -1},
	{"LD_STATIC", 1, 1},
	{"LD_STATIC_W", 2, 1},
	{"ST_STATIC", 1, -1},
	{"ST_STATIC_W", 2, -1},
	{"LD_AR", 0, -1},
	{"ST_AR", 0, -3},
	{"LD_NIL", 0, 1},
	{"LD_TRUE", 0, 1},
	{"LD_FALSE", 0, 1},
	{"LD_FUNC", 1, 1},
	{"LD_FUNC_W", 2, 1},
	{"LD_PLUGIN", 1, 1},
	{"LD_PLUGIN_W", 2, 1},
	{"LD_FUNC_FAR", 1, 1},
	{"LD_FUNC_FAR_W", 2, 1},
	{"MINUS", 0, 0},
	{"NOT", 0, -1},
	{"L_NOT", 0, -1},
	{"ADD", 0, -1},
	{"SUB", 0, -1},
	{"MUL", 0, -1},
	{"DIV", 0, -1},
	{"MOD", 0, -1},
	{"OR", 0, -1},
	{"AND", 0, -1},
	{"R_SHIFT", 0, -1},
	{"L_SHIFT", 0, -1},
	{"EQ", 0, -1},
	{"NE", 0, -1},
	{"GT", 0, -1},
	{"LT", 0, -1},
	{"GE", 0, -1},
	{"LE", 0, -1},
	{"L_OR", 0, -1},
	{"L_AND", 0, -1},
	{"JMP", 2, 0},
	{"JPF", 2, -1},
	{"CALL", 1, 0},
	{"CALL_W", 2, 0},
	{"CALL_IND", 0, 0},
	{"RET", 0, 0},
	{"NEXT", 0, 0},
	{"PLUGIN", 1, 0},
	{"PLUGIN_W", 2, 0},
	{"CALL_FAR", 1, 0},
	{"CALL_FAR_W", 2, 0},
	{"GET_OC", 1, 0},
	{"GET_OC_W", 2, 0},
	{"GETTER", 1, 0},
	{"GETTER_W", 2, 0},
	{"SETTER", 1, -1},
	{"SETTER_W", 2, -1},
	{"SEND", 1, 0},
	{"SEND_W", 2, 0},
	{"TYPEOF", 0, 0},
	{"SIZEOF", 0, 0},
	{"SWITCH", 1, 0},
	{"INC", 0, 0},
	{"DEC", 0, 0},
	{"EXIT", 0, 0},
	{"BP", 0, 0}
};

const char* sbScriptTypes[11] = {
    "nil",
    "true",
    "false",
    "int",
    "fixed",
    "string",
    "array",
    "function",
    "plugin",
    "OC",
    "sys"
};

u8 vmMemory[0x4928];


void vmInit(){
    //Clear the VM memory
    memset(vmMemory, 0, 0x490c);
}

//Checks to see if the header of the sb file is valid (should be "SB  ")
static inline bool checkSBHeader(u8* data){
    if(data[0] == 'S' && data[1] == 'B' && data[2] == ' ' && data[3] == ' '){
        return true;
    }else{
        return false;
    }
}

bool vmLink(u8* data){
	u8 r0;
	
    if(data != NULL && checkSBHeader(data) == true){
		r5 = data[4];
		r4 = 2;
		r0 = r5 - 2;
		orc r4, r5, r4
		r0 >>= 1;
		r0 = r4 - r0;
		r0 >>= 0x1f;
	}else{
		r0 = 0;
	}

	if(r0 == 0) return false;

	r4 = vmMemory;
	r5 = 0;
	
	int i = 0;

	do{
		if(readUInt(vmMemory,0) == data){
			r0 = r5 >> 3;
			r0 += vmMemory;
			goto L_8049FD8C;
		}
		
		r4 += 8;
		r5 += 1;
	}while(i++ < 8);

	r0 = 0;
	L_8049FD8C:
	
	if(r0 != 0){
		r0 = 1;
	}else{
		int i = 0;

		do{
			if(readInt(vmMemory,0) == 0){
				((int*)vmMemory)[0] = data;
				r0 = 1;
				goto L_8049FDD0;
			}

			r4 += 8;
		}while(i++ < 8);

		r0 = 0;
	}

	L_8049FDD0:

	if(r0 == 0){
		return false;
	}

	if(data[7] & 1 != 0){
		return true;
	}

	data[7] |= 1;

	*(u32*)(data + 0x8) += data;
	*(u32*)(data + 0xC) += data;
	*(u32*)(data + 0x10) += data;
	*(u32*)(data + 0x14) += data;
	*(u32*)(data + 0x18) += data;
	*(u32*)(data + 0x1C) += data;
	*(u32*)(data + 0x20) += data;
	*(u32*)(data + 0x24) += data;
	*(u32*)(data + 0x28) += data;
	*(u32*)(data + 0x2C) += data;
	*(u32*)(data + 0x30) += data;
	*(u32*)(data + 0x34) += data;
	*(u32*)(data + 0x38) += data;
	*(u32*)(data + 0x3C) += data;

	if(data[6] & 0x2 != 0){
		r5 = readInt(vmMemory,4);
		
	}

	L_8049FF10:
}