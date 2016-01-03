[org 0x07c0]
[bits 16]

times 0x8800 DB 0x0

BRVD:
DB 0x00,0x43,0x44,0x30,0x30,0x31,0x01,0x45,0x4C,0x20,0x54,0x4F,0x52,0x49,0x54,0x4F
DB 0x20,0x53,0x50,0x45,0x43,0x49,0x46,0x49,0x43,0x41,0x54,0x49,0x4F,0x4E,0x00,0x00
times 0x20 DB 0x0
DB 0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x12,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00
times 0x9000 - ($-$$) DB 0x0

bootcatalog:
DB 0x01,0x00,0x00,0x00,0x59,0x41,0x4D,0x41,0x5A,0x41,0x4B,0x49,0x20,0x4D,0x49,0x54
DB 0x53,0x55,0x46,0x55,0x4D,0x49,0x00,0x00,0x00,0x00,0x00,0x00,0x10,0xB3,0x55,0xAA
DB 0x88,0x00,0x00,0x00,0x00,0x00,0x01,0x00,0x14,0x00,0x00,0x00,0x00,0x00,0x00,0x00
times 0xA000 -($-$$) DB 0x0

bootsecter:
MOV AH, 0x0E
MOV AL, 0x41
MOV	BH, 0x00
MOV	BL, 0x07
INT	0x10
times 0xA800 - ($ - $$) DB 0x0
