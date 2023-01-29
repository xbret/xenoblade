.include "macros.inc"

.section .sdata2, "a" # 0x80668380 - 0x8066DCE0

.balign 8

# mm::pi
.global pi__2mm
pi__2mm:
	.4byte 0x40490FDB

# mm::tau
.global tau__2mm
tau__2mm:
	.4byte 0x40C90FDB

# mm::halfpi
.global halfpi__2mm
halfpi__2mm:
	.4byte 0x3FC90FDB

# mm::quarterpi
.global quarterpi__2mm
quarterpi__2mm:
	.4byte 0x3F490FDB

# mm::epsilon
.global epsilon__2mm
epsilon__2mm:
	.4byte 0x358637BD

# mm::rad2deg
.global rad2deg__2mm
rad2deg__2mm:
	.4byte 0x42652EE0

# mm::deg2rad
.global deg2rad__2mm
deg2rad__2mm:
	.4byte 0x3C8EFA35
