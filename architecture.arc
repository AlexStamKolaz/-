






MICRO
m00 00000 000 000 111 000 011 0000 0000 00 1111000111
m01 00000 000 000 000 000 001 0000 0000 00 0110001111 /*LDA K(X)*/
m02 00000 000 000 101 000 011 0000 0000 01 1111011110 /*PC+1->PC, MAR*/
m03 00000 000 000 101 000 011 0001 0001 00 1110011101 /*MDR+X->X*/
m04 00000 000 000 100 000 001 0001 0000 00 1111011111 /*X+0->NOP, MAR*/
m05 00000 000 000 111 000 011 0000 0000 01 1110011101 /*MDR+0->ACC*/
m06 00000 000 000 101 000 011 0000 0000 01 1111011110
m07 00000 000 000 000 000 001 0000 0000 00 0110001111 /*LDX #K*/
m08 00000 000 000 101 000 011 0000 0000 01 1111011110
m09 00000 000 000 111 000 011 0000 0001 00 1110011101
m0A 00000 000 000 101 000 011 0000 0000 01 1111011110
m0B 00000 000 000 000 000 001 0000 0000 00 0110001111 /*INX*/
m0C 00000 000 000 101 000 011 0001 0001 01 1110011110
m0D 00000 000 000 101 000 011 0000 0000 01 1111011110
m0E 00000 000 000 000 000 001 0000 0000 00 0110001111 /*CMPX #K*/
m0F 00000 000 000 101 000 011 0000 0000 01 1111011110
m10 00000 000 000 101 001 011 0010 0000 00 1010111101
m11 00000 000 000 101 000 011 0000 0000 01 1111011110
m12 00000 000 000 000 000 001 0000 0000 00 0110001111 /*STA K(X)*/
m13 00000 000 000 101 000 011 0000 0000 01 1111011110
m14 00000 000 000 101 000 001 0001 0000 00 1111011111
m15 00000 000 000 100 000 001 0010 0000 00 1100011110
m16 00000 000 000 101 000 011 0000 0000 01 1111011110
m17 00000 000 000 000 000 001 0000 0000 00 0110001111 /*CRC*/
m18 00000 000 000 100 000 011 0001 0001 00 1110111111
m19 00000 000 000 101 000 011 0000 0000 01 1111011110
m1A 00000 000 000 000 000 001 0000 0000 00 0110001111 /*JNZ $K*/
m1B 00000 000 000 101 000 011 0000 0000 01 1111011110
m1C 00010 011 011 000 000 000 0000 0000 00 0000000000
m1D 00011 010 000 000 000 000 0000 0000 00 0000000000
m1E 00000 000 000 101 000 011 0000 0000 01 1111011110
m1F 00000 000 000 000 000 001 0000 0000 00 0110001111
m20 00000 000 000 111 000 011 0000 0010 00 0110011101
m21 00000 000 000 100 000 001 0010 0000 00 1100011110
m22 00000 000 000 111 000 011 0000 0010 00 0110011101
m23 00000 000 000 001 000 011 0010 0000 00 0110011111
m24 00000 000 000 000 000 001 0000 0000 00 0110001111 /*SHLA*/
m25 00000 000 000 100 000 111 0010 0000 00 0110111111
m26 00000 000 000 101 000 011 0000 0000 01 1111011110
m27 00000 000 000 000 000 001 0000 0000 00 0110001111 /*HALT*/
m28 00000 000 000 111 000 011 0000 0000 00 1111000111
m29 00000 000 000 000 000 001 0000 0000 00 0110001111