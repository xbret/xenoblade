#include <stdio.h>
#include <stdint.h>
#include <stdlib.h>
#include <fcntl.h>
#include <sys/stat.h>
#include <sys/types.h>

#include <byteswap.h>

#define ALIGN(n) __attribute__ ((aligned (n)))

typedef struct ALIGN(4) {
	/* 0x00 */ uint32_t moduleId;
	/* 0x04 */ uint32_t nextModuleLink;
	/* 0x08 */ uint32_t prevModuleLink;
	/* 0x0C */ uint32_t sectionCount;
	/* 0x10 */ uint32_t sectionInfoOffset;
	/* 0x14 */ uint32_t moduleNameOffset;
	/* 0x18 */ uint32_t moduleNameSize; 
	/* 0x1C */ uint32_t moduleVersion;
	/* 0x20 */ uint32_t bssSize;
	/* 0x24 */ uint32_t relocTableOffset;
	/* 0x28 */ uint32_t importTableOffset;
	/* 0x2C */ uint32_t importTableSize;
	/* 0x30 */ uint8_t  prologSection;
	/* 0x31 */ uint8_t  epilogSection;
	/* 0x32 */ uint16_t  unresolvedSection;
	/* 0x34 */ uint32_t prologFuncOffset;
	/* 0x38 */ uint32_t epilogFunctionOffset;
	/* 0x3C */ uint32_t unresolvedOffset;
	/* 0x40 */ uint32_t moduleAlignment;
	/* 0x44 */ uint32_t bssAlignment;
} relHead;

typedef struct ALIGN(4) {
	uint32_t sectionOffset;
	uint32_t sectionSize;
} relSectionInfoEntry;

typedef struct ALIGN(4) {
	uint32_t moduleId;
	uint32_t relocationsOffset;
} relImportTableEntry;

typedef enum __attribute__ ((packed)) {
	R_PPC_NONE 				=   0,
	R_PPC_ADDR32 			=   1,
	R_PPC_ADDR24 			=   2,
	R_PPC_ADDR16 			=   3,
	R_PPC_ADDR16_LO			=   4,	
	R_PPC_ADDR16_HI			=   5,	
	R_PPC_ADDR16_HA			=   6,	
	R_PPC_ADDR14 			=   7,
	R_PPC_ADDR14_BRTAKEN 	=   8,
	R_PPC_ADDR14_BRNTAKEN 	=   9,
	R_PPC_REL24				=  10,
	R_PPC_REL14				=  11,
	R_DOLPHIN_NOP 			= 201,
	R_DOLPHIN_SECTION 		= 202,
	R_DOLPHIN_END 			= 203
} relRelocationType;

typedef struct ALIGN(4) {
	uint16_t 		   relativeOffset;
	relRelocationType  relocationType;
	uint8_t  		   sectionIndex;
	uint32_t 		   symbolOffset; // section relative
} relRelocationTableEntry;

size_t getFileSize(char *path) {
	struct stat file_stat;
    if(stat(path, &file_stat) < 0)
    {
      printf("Failed to get file size!\n");
      exit(1);
    }

    return file_stat.st_size;
}

char *relocTypeToString(relRelocationType type)
{
	switch (type)
	{
		case   0:
			return "R_PPC_NONE";
		case   1:
			return "R_PPC_ADDR32";
		case   2:
			return "R_PPC_ADDR24";
		case   3:
			return "R_PPC_ADDR16";
		case   4:
			return "R_PPC_ADDR16_LO";
		case   5:
			return "R_PPC_ADDR16_HI";
		case   6:
			return "R_PPC_ADDR16_HA";
		case   7:
			return "R_PPC_ADDR14";
		case   8:
			return "R_PPC_ADDR14_BRTAKEN";
		case   9:
			return "R_PPC_ADDR14_BRNTAKEN";
		case  10:
			return "R_PPC_REL24";
		case  11:
			return "R_PPC_REL14";
		case 201:
			return "R_DOLPHIN_NOP";
		case 202:
			return "R_DOLPHIN_SECTION";
		case 203: 
			return "R_DOLPHIN_END";
	}
}

void main(int argc, char *argv[]) {
	if(argc < 2)
		printf("Usage: %s [file]\n", argv[0]);

	size_t fileSize = getFileSize(argv[1]);
	uint8_t *relBuf = malloc(fileSize);
	FILE *relFile = fopen(argv[1], "rb");
	fread(relBuf, 1, fileSize, relFile);

	relHead *header = (relHead *)relBuf;
	printf("Rel Header:\n");
	printf("  Module ID:     %x\n", bswap_32(header->moduleId));
	printf("  Section count: %x\n", bswap_32(header->sectionCount));
	printf("  BSS Size:      %x\n", bswap_32(header->bssSize));
	printf("  BSS Alignment: %x\n", bswap_32(header->bssAlignment));

	printf("Section Info Table:\n");

	relSectionInfoEntry *sectionEntries = (relSectionInfoEntry *)&relBuf[bswap_32(header->sectionInfoOffset)];
	for(int i = 0; i < bswap_32(header->sectionCount); i++) {
		relSectionInfoEntry *section = &sectionEntries[i];
		printf("  Section Offset: %x\n", bswap_32(section->sectionOffset) & ~1);
		printf("  Executable: %s\n", bswap_32(section->sectionOffset) & 1 ? "True" : "False");
		printf("  Size: %x\n\n", bswap_32(section->sectionSize));
	}

	relImportTableEntry *importTableEntries = (relImportTableEntry *)&relBuf[bswap_32(header->importTableOffset)];
    for(int i = 0; i < bswap_32(header->importTableSize) / sizeof(relImportTableEntry); i++) {
        relImportTableEntry *section = &importTableEntries[i];
        relRelocationTableEntry *relocEntry = (relRelocationTableEntry *)&relBuf[bswap_32(section->relocationsOffset)];
        printf("  Module ID: %x\n", bswap_32(section->moduleId));
        printf("  Relocations Offset: %x\n", bswap_32(section->relocationsOffset));
        printf("  Parsing Reloc Entries...\n");
        uint32_t currentLoc = 0;
        while(1) {
            if(relocEntry->relocationType == R_DOLPHIN_SECTION)
                currentLoc = 0;
            currentLoc += bswap_16(relocEntry->relativeOffset);

            printf("    Offset: %x (%x)\n", bswap_16(relocEntry->relativeOffset), currentLoc);
            printf("    Reloc type: %x (%s)\n", relocEntry->relocationType, relocTypeToString(relocEntry->relocationType));
            printf("    Symbol Offset: %x\n\n", bswap_32(relocEntry->symbolOffset));
            if(relocEntry->relocationType == R_DOLPHIN_END)
                break;
            relocEntry++;
        }
    }
}