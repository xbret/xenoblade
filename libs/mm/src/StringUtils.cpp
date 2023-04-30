#include "mm/StringUtils.hpp"
#include <string.h>

namespace mm{

	const char* getFilenameFromPath(const char* str){
		int endIndex = strlen(str) - 1;

	    for(int i = endIndex; i >= 0; i--) {
	    	char c = str[i];

			/* If the current character is a path separator character, return the rest
			of the string */
	    	if (c == '/' || c == '\\' || c == ':') {
	    		return str + (endIndex + 1);
	    	}

			endIndex--;
	    }

		//If no path separator characters were found, just return the string
		return str;
	}

	const char* getFileExtensionFromPath(const char* str){
		int endIndex = strlen(str) - 1;

	    for(int i = endIndex; i >= 0; i--) {
	    	char c = str[i];

	    	if (c == '.') {
	    		return str + (endIndex + 1);
	    	}

			endIndex--;
	    }

		//If no '.' was found, return null
		return nullptr;
	}

	struct UnkStruct {
		char str[0x40];
		u32 unk40;
	};

	inline int unkInline1(char* strArray, int sVar2, int local_28){
		if (local_28 == 0) {
			return -1;
		}else {
			char* dot = ".";
			int length = strlen(dot);

			for (char* pcVar3 = strArray + sVar2; pcVar3 != strArray; pcVar3--) {
				if (!strncmp(pcVar3,dot,length)) {
					return (int)pcVar3 - (int)(strArray + 1);
				}
			}
			return -1;
		}
	}

	void func_80435078(UnkStruct* param_1, const char* param_2){
		char cVar1;
		int sVar2;
		char strArray[65];

		strArray[1] = 0;
		int local_28 = 0;

		param_2 = getFilenameFromPath(param_2);

		if (param_2 == nullptr) {
			sVar2 = strlen(strArray + 1);
			param_1->unk40 = sVar2;
			strcpy(param_1->str,strArray + 1);
		}else {
			local_28 = strlen(param_2);
			strcpy(strArray + 1,param_2);
			sVar2 = local_28;

			sVar2 = unkInline1(strArray, sVar2, local_28);

	    	if (sVar2 + 1 < 2) {
	    		sVar2 = strlen(strArray + 1);
	    		param_1->unk40 = sVar2;
	    		strcpy(param_1->str,strArray + 1);
	    	}
	    	else {
	    	  	param_1->str[0] = '\0';
	    	  	param_1->unk40 = 0;

	    	  	if (local_28 != 0) {
	    	  	  	if (sVar2 == -1) {
	    	  	  	  	sVar2 = local_28;
	    	  	  	}

	    	  	  	strncpy(param_1->str,strArray + 1,sVar2);
	    	  	  	param_1->str[sVar2] = '\0';
	    	  	  	sVar2 = strlen(param_1->str);
	    	  	  	param_1->unk40 = sVar2;
	    	  	}
	    	}
		}
	  return;
	}

	struct UnkStruct1 {
		char str[0x10];
		u32 unk10;
	};

	void func_80435220(UnkStruct1* param_1, int param_2, int param_3){
		bool bVar1;
		int iVar2;
		size_t sVar3;
		int iVar4;
		int iVar5;
		int iVar6;
		uint uVar7;
		short local_58 [2];
		char acStack_54 [16];
		size_t local_44;
		char acStack_40 [16];
		size_t local_30;

		sVar3 = strlen("");
		param_1->unk10 = sVar3;
		strcpy(param_1->str, "");

		for (iVar6 = 0; iVar6 < param_3; iVar6 = iVar6 + 1) {
			iVar4 = 1;
			iVar5 = 0;

			if (0 < iVar6) {
				if (8 < iVar6) {
					bVar1 = false;

					if ((-1 < iVar6) && (iVar6 < 0x7fffffff)) {
						bVar1 = true;
					}

					if ((bVar1) && (uVar7 = iVar6 - 1U >> 3, 0 < iVar6 + -8)) {
						do {
							iVar4 = iVar4 * 100000000;
							iVar5 = iVar5 + 8;
							uVar7 = uVar7 - 1;
						} while (uVar7 != 0);
					}
				}

				iVar2 = iVar6 - iVar5;

				if (iVar5 < iVar6) {
					do {
						iVar4 = iVar4 * 10;
						iVar2 = iVar2 + -1;
					} while (iVar2 != 0);
				}
			}

			local_58[0] = (u16)(u8)((char)((param_2 % (iVar4 * 10))) + 0x30) << 8;
			local_30 = strlen((char *)local_58);
			strcpy(acStack_40,(char *)local_58);
			local_44 = strlen(acStack_40);
			strcpy(acStack_54,acStack_40);
			sVar3 = strlen(param_1->str);
			strcat(acStack_54,param_1->str);
			local_44 = local_44 + sVar3;
			sVar3 = strlen(acStack_54);
			param_1->unk10 = sVar3;
			strcpy(param_1->str,acStack_54);
		}
		return;
	}

}
