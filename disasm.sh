#!/bin/sh -e
tools/dtk dol disasm baserom.dol -s config/symbols.txt -p config/splits.txt -o .
