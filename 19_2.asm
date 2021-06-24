    area d,code,readonly								
entry
	code32
	ldr r0,=thu+1
	bx r0
	code16
thu mov r0,#0
    ldr r0,=string
	ldr r2,=0x40000000
tu	ldrb r3,[r0]
	add r0,#1
	cmp r3,#0
	bne loops
	beq asc
loops strb r3,[r2]
      add r2,#1
	  add r4,#1
	 b tu
asc mov r0,#0
	mov r0,r4
up ldr r2,=0x40000000
   sub r0,#0x01
   mov r3,r2
   add r3,#1
   mov r4,r0
loop1 ldrb r5,[r2]
      ldrb r6,[r3]
	  cmp r5,r6
	  bcc cor
	  bcs inc
inc mov r7,r5
    mov r5,r6
	mov r6,r7
cor strb r5,[r2]
    strb r6,[r3]
	add r2,#1
	add r3,#1
	sub r4,#0x01
	bne loop1
	sub r0,#0x01
	bne up
	beq stop
stop b stop
string dcb "bvbcet",0
 end
