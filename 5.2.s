.arm 
.text
.global main
main:
stmdb r13!, {r0-r12}
ldr r0,=Values //arrays
ldr r3,=Const
ldr r4,=Results
mov r1,#0 //counter
mov r2,#4 //upper bound

Loop:
bl Subr
add r0,#3 //goes to the next ai,bi,ci
add r1,r1,#1
cmp r1,r2
bne Loop

bl findmax

ldmia r13!,{r0-r12}

Subr:
STMDB r13!,{r0-r12}
ldrb r5,[r0],#1 //fetch a,b,c
ldrb r6,[r0],#1
ldrb r7,[r0],#1
ldrb r8,[r3],#1 //1 const
mul r5,r5,r8
ldrb r8,[r3],#1 //2 const
mul r6,r6,r8
ldrb r8,[r3],#1 //3 const
mul r7,r7,r8
add r5,r5,r6
sub r5,r5,r7
mov r0,#5
mul r5,r5,r0
mov r0,#0 //no garbage
add r0,r5,lsl #6 //for negatives also

strb r0,[r4,r1]
ldmia r13!,{r0-r12}
bx lr

findmax:
stmdb r13!,{r0-r12}
mov r1,#1 //counter
mov r5,#6 //upper bound
ldrb r0,[r4,r1]! //r0<-max r4 synolo

//kanei mia epipleon praxi

loop:
ldrb r2,[r4],#1
cmp r2,r0
movge r0,r2 //change max
movge r4,r1
add r1,r1,#1
cmp r5,r1
bne loop
strb r0,[r3,#1]!
strb r4,[r3,#1]! // save after const


.data

Values:
.byte 0x02, 0x03, 0x04
.byte 0x10, 0x05, 0x06
.byte 0x0B, 0x02, 0x0D
.byte 0x01, 0x0C, 0x08

Const:
.byte 0x04, 0x07, 0x05

Results:


	
	