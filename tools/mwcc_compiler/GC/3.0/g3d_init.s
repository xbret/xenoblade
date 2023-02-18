Analyzing: Z:\var\folders\d8\5hdjbpt12xg579kmy_7168y80000gn\T\g3d_init.o
Header idenfication: 0x7f, ELF, 32 bit MSB v1
    type:           1, machine:         20
    version: 00000001, entry:     00000000, phoff:  00000000
    shoff:   000001a8, flags:     80000000, ehsize:       52, phentsize:  0
    phnum:          0, shentsize:       40, shnum:         8, shstrndx:  6


==> .shstrtab
    [  1]	.data
    [  7]	.sdata
    [ 14]	.rela.sdata
    [ 26]	.symtab
    [ 34]	.strtab
    [ 42]	.shstrtab
    [ 52]	.comment

==> .data [1]: Section Header
    type:    00000001, flags:  00000003
    address: 00000000, offset: 00000038, size: 00000048
    link:    00000000, info:   00000000, alignment: 8, entry size: 0


==> .sdata [2]: Section Header
    type:    00000001, flags:  00000003
    address: 00000000, offset: 00000080, size: 00000004
    link:    00000000, info:   00000000, alignment: 8, entry size: 0


==> .rela.sdata [3]: Section Header
    type:    00000004, flags:  00000000
    address: 00000000, offset: 00000084, size: 0000000c
    link:    00000004, info:   00000002, alignment: 4, entry size: 12


==> .symtab [4]: Section Header
    type:    00000002, flags:  00000000
    address: 00000000, offset: 00000090, size: 00000060
    link:    00000005, info:   00000005, alignment: 4, entry size: 16


==> .strtab [5]: Section Header
    type:    00000003, flags:  00000000
    address: 00000000, offset: 000000f0, size: 0000001d
    link:    00000000, info:   00000000, alignment: 1, entry size: 1


==> .shstrtab [6]: Section Header
    type:    00000003, flags:  00000000
    address: 00000000, offset: 0000010d, size: 0000003d
    link:    00000000, info:   00000000, alignment: 1, entry size: 1


==> .comment [7]: Section Header
    type:    00000001, flags:  00000000
    address: 00000000, offset: 0000014a, size: 0000005c
    link:    00000000, info:   00000000, alignment: 1, entry size: 1


==> .strtab
    [  1]	g3d_init.cpp
    [ 14]	@1
    [ 17]	_G3DVersion

==> .symtab
    entry  spndx   value      size   bind   type  other    shndx         name
    [   0]     0   00000000      0   LOC    NULL      0    UND           
    [   1]     1   00000000      0   LOC    FILE      0    ABS           g3d_init.cpp
    [   2]     0   00000000      0   LOC    SECT      0    .data         .data
    [   3]     0   00000000      0   LOC    SECT      0    .sdata        .sdata
    [   4]    14   00000000     72   LOC    OBJ       0    .data         @1
    [   5]    17   00000000      4   GLOB   OBJ       0    .sdata        _G3DVersion

==> .data
@1:
00000000: 3C3C204E  57345220  2020202D  20473344 '<< NW4R    - G3D'
00000010: 20096669  6E616C20  20206275  696C643A ' .final   build:'
00000020: 204E6F76  20323020  32303038  2030333A ' Nov 20 2008 03:'
00000030: 32333A31  34202830  78343139  395F3630 '23:14 (0x4199_60'
00000040: 38333129  203E3E00                     '831) >>.        '

==> .rela.sdata
    entry  offset   addend   type name(symbol id)
    [   0] 00000000 00000000    1 @1(4)

==> .sdata
_G3DVersion:
00000000: 00000000                               '....            '

==> .comment
MagicWord: CodeWarrior
Comment section version: 15
Compiler version: 4.0.0
CW Compiler generated
Pooled data: true
PPC EABI compliant
FP Support: Hardware
Processor: Gecko
Char Signedness: signed
