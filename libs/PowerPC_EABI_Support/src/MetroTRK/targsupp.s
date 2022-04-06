.include "macros.inc"

.section .text, "ax"

.global TRKAccessFile
TRKAccessFile:
    twui r0, 0
    blr

.global TRKOpenFile
TRKOpenFile:
    twui r0, 0
    blr

.global TRKCloseFile
TRKCloseFile:
    twui r0, 0
    blr

.global TRKPositionFile
TRKPositionFile:
    twui r0, 0
    blr
