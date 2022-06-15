// clang-format off
asm void TRKAccessFile(void)
{
	nofralloc
	twi 31, r0, 0
	blr 
}

/*
These functions aren't referenced at all, but still exist in the dol, so
__attribute__((used)) is needed to prevent them from being removed by the compiler.
*/

__attribute__((used))
asm void TRKOpenFile(void)
{
	nofralloc
	twi 31, r0, 0
	blr 
}

__attribute__((used))
asm void TRKCloseFile(void)
{
	nofralloc
	twi 31, r0, 0
	blr 
}

__attribute__((used))
asm void TRKPositionFile(void)
{
	nofralloc
	twi 31, r0, 0
	blr 
}
// clang-format on
