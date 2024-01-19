#include "monolib/vm/yvm.h"
#include <string.h>


inline int readInt(u8* array, int offset){
	return *(int*)(array + offset);
}
inline u32 readUInt(u8* array, int offset){
	return *(u32*)(array + offset);
}
inline void writeInt(u8* array, int offset, int val){
	*(int*)(array + offset) = val;
}
inline void writeUInt(u8* array, int offset, u32 val){
	*(u32*)(array + offset) = val;
}


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
static inline BOOL vmSbChk(u8* data){
	if(data != NULL && data[0] == 'S' && data[1] == 'B' && data[2] == ' ' && data[3] == ' ' && 1 < data[4]){
		return TRUE;
	}else{
		return FALSE;
	}
}

static inline int vmPackageSearch(){
	/*
	ppbVar11 = (byte **)&vmMemory;
		iVar14 = 0;
		iVar22 = 8;
		do {
			if (*ppbVar11 == data) {
				puVar2 = &vmMemory + iVar14 * 8;
				return puVar2;
			}
			ppbVar11 = ppbVar11 + 2;
			iVar14 = iVar14 + 1;
			iVar22 = iVar22 + -1;
		} while (iVar22 != 0);
	   return 0;
	*/
}

static inline BOOL vmPackageRegist(u8* data){
	/*
	puVar2 = vmPackageSearch();
		if (puVar2 == NULL) {
			ppbVar11 = (byte **)&vmMemory;
			iVar14 = 8;
			do {
				if (*ppbVar11 == NULL) {
					*ppbVar11 = data;
					return true;
				}
				ppbVar11 = ppbVar11 + 2;
				iVar14 = iVar14 + -1;
			} while (iVar14 != 0);
			return false;
		}
		else {
			return true;
		}
	*/
}

void vmDataGet(){
}

void vmCodePut(){
}

void vmStackDump(){
}


short vmSysAtrPoolGet(u8* data, int param_2){
	/*
	piVar12 = *(int **)(data + 0x34);
	uVar3 = (uint)*(ushort *)((int)piVar12 + piVar12[2] * param_2 + *piVar12);
	*/
}

int vmIdPoolGet(u8* data, int param_2){
	/*
	piVar12 = *(int **)(data + 0xc);
	iVar23 = *piVar12;
	iVar22 = piVar12[2] * (uint)*puVar21;
	if (piVar12[2] == 2) {
		uVar3 = (uint)*(ushort *)((int)piVar12 + iVar22 + iVar23);
	}
	else {
		uVar3 = *(uint *)((int)piVar12 + iVar22 + iVar23);
	}
	*/
}

int vmSysAtrSearch(u8* data, int param_2){
	int uVar3 = vmSysAtrPoolGet(data, param_2);
	if (uVar3 == -1) return 0;
	else return vmIdPoolGet(data, uVar3);
}

void vmPackageDump(){
}

void vmThreadDump(){
}

void vmHalt(){
}


//Rotate each group of 32 bits by 2 to the right?
 //weird stuff
//aaaaaaaa bbbbbbbb cccccccc dddddddd -> ddaaaaaa aabbbbbb bbcccccc ccdddddd
//func_804A1630
void encodeScrambleSub(u8* array, int arg1) {
	if(arg1 >= 0){
	// these changes are definitely not right, will rework later
		for(int i = (arg1 + 3) >> 2; i > 0; --i){
			u8 byte0 = array[0];
			u8 byte1 = array[1];
			u8 byte2 = array[2];
			u8 byte3 = array[3];
		
			array[0] = (byte0 >> 2) | ((byte3 & 3) << 6);
			array[1] = (byte1 >> 2) | ((byte0 & 3) << 6);
			array[2] = (byte2 >> 2) | ((byte1 & 3) << 6);
			array[3] = (byte3 >> 2) | ((byte2 & 3) << 6);
			array += 4;
		}
	}
}

void encodeScramble(u8* data){
	/*
	pbVar8 = (byte *)((int)piVar12 + piVar12[1] * piVar12[2] + *piVar12);
	uVar3 = (int)(data + iVar14) - (int)pbVar8;
	encodeScramble(pbVar8,(((int)uVar3 >> 2) + (uint)((int)uVar3 < 0 && (uVar3 & 3) != 0)) * 4);
	piVar12 = *(int **)(data + 0x18);
	iVar14 = (int)piVar12 + piVar12[1] * piVar12[2] + *piVar12;
	uVar3 = *(int *)(data + 0x1c) - iVar14;
	encodeScramble(iVar14,(((int)uVar3 >> 2) + (uint)((int)uVar3 < 0 && (uVar3 & 3) != 0)) * 4);
	*/
}

int vmPluginSearch(int param_1, int param2){
	/*
	puVar2 = &vmMemory;
	iVar22 = 0;
	do {
		if ((*(char **)(puVar2 + 0x4688) != NULL) &&
		   (iVar9 = strcmp(*(char **)(puVar2 + 0x4688),
						   (char *)((int)piVar12 + uVar3 + iVar23)), iVar9 == 0)) {
			uVar16 = 0;
			ppcVar19 = *(char ***)(puVar2 + 0x468c);
			ppcVar20 = ppcVar19;
			for (; *ppcVar19 != NULL; ppcVar19 = ppcVar19 + 2) {
				iVar9 = strcmp(*ppcVar20,(char *)((int)piVar12 + uVar4 + iVar13));
				if (iVar9 == 0) {
					uVar16 = iVar22 << 0x10 | uVar16;
					return uVar16;
				}
				ppcVar20 = ppcVar20 + 2;
				uVar16 = uVar16 + 1;
			}
		}
		iVar22 = iVar22 + 1;
		puVar2 = puVar2 + 8;
	} while (iVar22 < 0x30);
	return -1;
	*/
}

int vmOCSearch(){
	/*
	puVar2 = &vmMemory;
	iVar22 = 0;
	do {
		if ((*(char ***)(puVar2 + 0x4808) != NULL) && (iVar13 = strcmp(**(char ***)(puVar2 + 0x4808), (char *)((int)piVar12 + uVar3 + iVar23)), iVar13 == 0)){
			return iVar22;
		}
		iVar22 = iVar22 + 1;
		puVar2 = puVar2 + 4;
	} while (iVar22 < 0x30);
	return -1;
	*/
}

void vmFuncFarSearch(){
}

void vmStringPoolGet(){
}

void vmPackageSearchIdx(){
}


void vmInitDataLink(u8* data, int pcVar15){
	/*
	cVar1 = *pcVar15;
	if (cVar1 == '\x05') {
		piVar12 = *(int **)(data + 0x18);
		iVar22 = *piVar12;
		iVar14 = piVar12[2] * *(int *)(pcVar15 + 4);
		if (piVar12[2] == 2) {
			uVar4 = (uint)*(ushort *)((int)piVar12 + iVar14 + iVar22);
		}
		else {
			uVar4 = *(uint *)((int)piVar12 + iVar14 + iVar22);
		}
		*(uint *)(pcVar15 + 4) = (int)piVar12 + uVar4 + iVar22;
	}
	else if (cVar1 == '\b') {
		puVar17 = (undefined2 *)
				  ((int)*(int **)(data + 0x20) +
				  *(int *)(pcVar15 + 4) * 4 + **(int **)(data + 0x20));
		*(undefined2 *)(pcVar15 + 2) = *puVar17;
		*(uint *)(pcVar15 + 4) = (uint)(ushort)puVar17[1];
	}
	else if (cVar1 == '\a') {
		if (*(short *)(pcVar15 + 2) == 0) {
			if (_vmMemory == data) {
				uVar6 = 0;
			}
			else if (_DAT_8065af40 == data) {
				uVar6 = 1;
			}
			else if (_DAT_8065af48 == data) {
				uVar6 = 2;
			}
			else if (_DAT_8065af50 == data) {
				uVar6 = 3;
			}
			else if (_DAT_8065af58 == data) {
				uVar6 = 4;
			}
			else if (_DAT_8065af60 == data) {
				uVar6 = 5;
			}
			else if (_DAT_8065af68 == data) {
				uVar6 = 6;
			}
			else if (_DAT_8065af70 == data) {
				uVar6 = 7;
			}
			else {
				uVar6 = -1;
			}
			*(short *)(pcVar15 + 2) = uVar6;
			*(int *)(pcVar15 + 4) = *(int *)(pcVar15 + 4);
		}
		else {
			puVar17 = (undefined2 *)
					  ((int)*(int **)(data + 0x28) +
					  *(int *)(pcVar15 + 4) * 4 + **(int **)(data + 0x28));
			*(undefined2 *)(pcVar15 + 2) = *puVar17;
			*(uint *)(pcVar15 + 4) = (uint)(ushort)puVar17[1];
		}
	}
	*/
}

int vmLocalPoolGet(u8* data, int param_2){
	/*
	piVar12 = *(int **)(data + 0x30);
	iVar22 = *piVar12;
	iVar14 = piVar12[2] * uVar3;
	if (piVar12[2] == 2) {
		uVar4 = (uint)*(ushort *)((int)piVar12 + iVar14 + iVar22);
	}
	else {
		uVar4 = *(uint *)((int)piVar12 + iVar14 + iVar22);
	}
	*/
}

BOOL vmLink(u8* data){
	/*
		char cVar1;
	bool_t uVar2;
	undefined *puVar2;
	uint uVar3;
	short uVar6;
	uint uVar4;
	uint uVar5;
	undefined2 uVar7;
	bool bVar10;
	byte *pbVar8;
	int iVar9;
	byte **ppbVar11;
	int *piVar12;
	int iVar13;
	int iVar14;
	char *pcVar15;
	uint uVar16;
	undefined2 *puVar17;
	int *piVar18;
	char **ppcVar19;
	char **ppcVar20;
	ushort *puVar21;
	int iVar22;
	int iVar23;

	uVar2 = vmSbChk(data);

	if (uVar2 == 0) {
		bVar10 = false;
	}
	else {
		bVar10 = vmPackageRegist(data);
		if (bVar10) {
			if ((data[7] & 1) == 0) {
				iVar14 = *(int *)(data + 0x10);
				piVar12 = (int *)(data + *(int *)(data + 0xc));
				data[7] = data[7] | 1;
				*(byte **)(data + 8) = data + *(int *)(data + 8);
				*(int **)(data + 0xc) = piVar12;
				*(byte **)(data + 0x10) = data + iVar14;
				*(byte **)(data + 0x14) = data + *(int *)(data + 0x14);
				*(byte **)(data + 0x18) = data + *(int *)(data + 0x18);
				*(byte **)(data + 0x1c) = data + *(int *)(data + 0x1c);
				*(byte **)(data + 0x20) = data + *(int *)(data + 0x20);
				*(byte **)(data + 0x24) = data + *(int *)(data + 0x24);
				*(byte **)(data + 0x28) = data + *(int *)(data + 0x28);
				*(byte **)(data + 0x2c) = data + *(int *)(data + 0x2c);
				*(byte **)(data + 0x30) = data + *(int *)(data + 0x30);
				*(byte **)(data + 0x34) = data + *(int *)(data + 0x34);
				*(byte **)(data + 0x38) = data + *(int *)(data + 0x38);
				*(byte **)(data + 0x3c) = data + *(int *)(data + 0x3c);
				if ((data[6] & 2) != 0) {
					encodeScramble(data);
				}
				puVar21 = (ushort *)((int)*(int **)(data + 0x20) + **(int **)(data + 0x20));
				for (iVar14 = 0; iVar14 < *(int *)(*(int *)(data + 0x20) + 4); iVar14 = iVar14 + 1)
				{
					uVar3 = vmIdPoolGet(data, puVar21[0]);
					uVar4 = vmIdPoolGet(data, puVar21[1]);
					uVar16 = vmPluginSearch(uVar3, uVar4);

					if (uVar16 == -1) {
						return false;
					}
					*puVar21 = (ushort)(uVar16 >> 0x10);
					puVar21[1] = (ushort)uVar16;
					puVar21 = puVar21 + 2;
				}
				puVar21 = (ushort *)((int)*(int **)(data + 0x24) + **(int **)(data + 0x24));
				for (iVar14 = 0; iVar14 < *(int *)(*(int *)(data + 0x24) + 4); iVar14 = iVar14 + 1)
				{
					vmIdPoolGet(data, puVar21[0]);
					iVar22 = vmOCSearch();
					if (iVar22 == -1) {
						return false;
					}
					*puVar21 = (ushort)iVar22;
					puVar21 = puVar21 + 1;
				}
				puVar21 = (ushort *)((int)*(int **)(data + 0x28) + **(int **)(data + 0x28));
				for (iVar14 = 0; iVar14 < *(int *)(*(int *)(data + 0x28) + 4); iVar14 = iVar14 + 1)
				{
					uVar3 = vmIdPoolGet(data, puVar21[0]);
					uVar4 = vmIdPoolGet(data, puVar21[1]);
					iVar22 = vmFuncFarSearch((int)piVar12 + uVar3 + iVar23, (int)piVar12 + uVar4 + iVar13);
					if (iVar22 == -1) {
						return false;
					}
					*puVar21 = (ushort)((uint)iVar22 >> 0x10);
					puVar21[1] = (ushort)iVar22;
					puVar21 = puVar21 + 2;
				}
				pcVar15 = (char *)((int)*(int **)(data + 0x2c) + **(int **)(data + 0x2c));
				for (uVar3 = 0; uVar3 < *(uint *)(*(int *)(data + 0x2c) + 4); uVar3 = uVar3 + 1) {
					vmInitDataLink(data, pcVar15);
					pcVar15 = pcVar15 + 8;
				}
				for (uVar3 = 0; piVar12 = *(int **)(data + 0x30), uVar3 < (uint)piVar12[1]; uVar3 = uVar3 + 1) {
					uVar4 = vmLocalPoolGet(data, uVar3);
					pcVar15 = (char *)((int)piVar12 + *(int *)((int)piVar12 + uVar4 + iVar22) + uVar4 + iVar22);
					for (uVar16 = 0; uVar16 < *(uint *)((int)piVar12 + uVar4 + iVar22 + 4);
						uVar16 = uVar16 + 1) {
						vmInitDataLink(data, pcVar15);
						pcVar15 = pcVar15 + 8;
					}
				}
				
				iVar14 = vmSysAtrSearch(data, 1);
				puVar2 = vmPackageSearch(data);
				*(int *)(puVar2 + 4) = iVar14;
				bVar10 = true;
			}
			else {
				bVar10 = true;
			}
		}
		else {
			bVar10 = false;
		}
	}
	return bVar10;
	*/
}

void vmUnlink(){
}

void vmFunctionPoolGet(){
}

void vmThreadCreate(){
}

void vmStart(){
}

void vmDebModeGet(){
}

void vmSchedule(){
}

void vmDebBpCodeGet(){
}

void vmDebModeSet(){
}

void vmCodeExec(){
}

void vmThreadSearch(){
}

void vmThreadRemove(){
}

void vmThreadExec(){
}

void vmExec(){
}

void vmPluginModuleSearch(){
}

void vmPluginRegist(){
}

void vmArgCntGet(){
}

void vmArgPtrGet(){
}

void vmArgOmitChk(){
}

void vmExceptionProc(){
}

void vmExceptionThrow(){
}

void vmPluginExceptionThrow(){
}

void vmOCExceptionThrow(){
}

void vmArgErr(){
}

void vmArgBoolGet(){
}

void vmArgIntGet(){
}

void vmArgFixedGet(){
}

void vmArgStringGet(){
}

void vmArgFunctionGet(){
}

void vmArgArrayGet(){
}

void vmArrayGet(){
}

void vmArraySet(){
}

void vmArgOCGet(){
}


void getArray(){
}

void setArray(){
}

void vmPush(){
}

void vmRetValSet(){
}

void vmWaitModeSet(){
}

void vmWkIdxGet(){
}

void vmWkIdxSet(){
}

void vmWkGet(){
}

void vmBuiltinOCRegist(){
}

void vmOCRegist(){
}

void vmOCPropertyGet(){
}

void vmThreadNumGet(){
}

void vmThreadSleepAll(){
}

void vmThreadWakeupAll(){
}

void vmThreadIsFinish(){
}

void vmThreadGetOC(){
}

void vmStackNextGet(){
}

void vmc_call_entry(){
}

void vmThreadStart(){
}

void vmThreadEnd(){
}

void vmThreadIsAlive(){
}

void vmThreadSleep(){
}

void vmThreadWakeup(){
}

void vmUsrAtrPoolGet(){
}

void vmUsrAtrSearch(){
}

void vmAttributeGet(){
}

void splitFixed(){
}

void vmArrayLocalChk(){
}

void vmPropertySearch(){
}

void vmSelectorSearch(){
}

void vmIntPoolGet(){
}

void vmFixedPoolGet(){
}

void vmStackPrevGet(){
}

void vmDebCont(){
}

void vmDebStepIn(){
}

void vmDebClrBp(){
}

void vmDebSetBp(){
}

void vmDebSetBpTop(){
}

void vmDebCurrentThreadGet(){
}

void vmDebCurrentSbGet(){
}

void vmDebCurrentFuncIdxGet(){
}

void vmDebCurrentLocalsGet(){
}

void vmDebCurrentParamsGet(){
}

void vmDebStaticItemGet(){
}

void vmDebStaticNumGet(){
}

void vmDebStaticNameGet(){
}

void vmDebStaticOffsGet(){
}

void vmDebStaticPtrGet(){
}

void vmDebLocalItemGet(){
}

void vmDebLocalNameGet(){
}

void vmDebLocalOffsGet(){
}

void vmDebLocalPtrGet(){
}

void vmDebParamItemGet(){
}

void vmDebParamNameGet(){
}

void vmDebParamOffsGet(){
}

void vmDebParamPtrGet(){
}

void vmDebFileNoGet(){
}

void vmDebLinePtrGet(){
}

void vmDebMemDump(){
}

void vmDebInit(){
}

void vmDebExec(){
}


void vmc_nop(){
}

void vmc_const(){
}

void vmc_const_i(){
}

void vmc_pool_int(){
}

void vmc_pool_fixed(){
}

void vmc_pool_string(){
}

void vmc_ld(){
}

void vmc_st(){
}

void vmc_ld_arg(){
}

void vmc_st_arg(){
}

void vmc_st_arg_omit(){
}

void vmc_ld_const(){
}

void vmc_st_const(){
}

void vmc_ld_arg_const(){
}

void vmc_st_arg_const(){
}

void vmc_ld_static(){
}

void vmc_st_static(){
}

void vmc_ld_ar(){
}

void vmc_st_ar(){
}

void vmc_ld_nil(){
}

void vmc_ld_true(){
}

void vmc_ld_false(){
}

void vmc_ld_func(){
}

void vmc_ld_plugin(){
}

void vmc_ld_func_far(){
}

void vmc_minus(){
}

void vmc_not(){
}

void vmc_l_not(){
}

void vmc_op_nil(){
}

void vmc_op_fixed(){
}

void vmc_calc(){
}

void vmc_jmp(){
}

void vmc_jpf(){
}

void vmc_call(){
}

void vmc_call_far_entry(){
}

void vmc_plugin_sub(){
}

void vmc_plugin_entry(){
}

void vmc_call_ind(){
}

void vmc_ret(){
}

void vmc_next(){
}

void vmc_plugin(){
}

void vmc_call_far(){
}

void vmc_get_oc(){
}

void vmc_getter(){
}

void vmc_setter(){
}

void vmc_send(){
}

void vmc_typeof(){
}

void vmc_sizeof(){
}

void vmc_switch(){
}

void vmc_inc(){
}

void vmc_dec(){
}

void vmc_bp(){
}

void vmc_exit(){
}
