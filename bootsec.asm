[org 0x07c0]
[bits 16]

bootsecter:
MOV AH, 0x0E
MOV AL, 0x41
MOV	BH, 0x00
MOV	BL, 0x07
INT	0x10

times 0x800 - ($ - $$) DB 0x0
