.arm
.text
.global main
main:
stmdb r13!,{r0-r12}
ldr r0,=Values
ldr r1,=Const 
ldr r7,=results
mov r2,#0
mov r3,#4

outerloop:
bl poly
add r0,r0,#4
add r7,r7,#4
add r2,r2,#1
cmp r2,r3
bne outerloop

ldmia r13!,{r0-r12}

poly:
stmdb r13!,{r0-r12}
ldrb r2,[r1,#6]!
mov r3,r2
mov r4,#0
mov r5,#6

innerloop:
ldrb r2,[r1,#-1]!
ldr r6,[r0]
mul r3,r3,r6
add r3,r3,r2
add r4,r4,#1
cmp r4,r5
bne innerloop

str r3,[r7]
ldmia r13!,{r0-r12}
bx lr


.data
 Values:
 .word 0x10
 .word 0x50A
 .word 0xCDCA
 .word 0x80AB
 
 Const:
 .byte 0x04, 0x07, 0x05
 .byte 0x20, 0x1A, 0x12, 0x06
 
 results:
