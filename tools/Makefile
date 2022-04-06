CC := gcc
CFLAGS := -O3 -Wall -s

default: all

all: elf2dol elf2rel relInfoPrint

elf2dol: elf2dol.c
	$(CC) $(CFLAGS) -o $@ $^

elf2rel: elf2relv2.c
	$(CC) $(CFLAGS) -o $@ $^

relInfoPrint: relInfoPrint.c
	$(CC) $(CFLAGS) -o $@ $^

clean:
	$(RM) elf2dol
	$(RM) elf2rel
	$(RM) relInfoPrint
