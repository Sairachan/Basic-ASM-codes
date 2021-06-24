		area d,code,readonly
entry 
    mov r0,#0
	ldr r0,=string 
	ldr r2,=0x40000000 
loop ldrb r3,[r0] 
	add r0,#1 
	cmp r3,#0 
	bne loop2
	beq loop3 
loop2 strb r3,[r2] 
	add r2,#1 
	add r4,#1 
	b loop
loop3 mov r0,#0
	mov r0,r4 
loop4 ldr r2,=0x40000000 
	sub r0,#0x01 
	mov r3,r2 
	add r3,#1 
	mov r4,r0 
loop5 ldrb r5,[r2] 
	ldrb r6,[r3] 
	cmp r5,r6 
	bcc loop7
	bcs loop6 
loop6 mov r7,r5 
	mov r5,r6 
	mov r6,r7 
loop7 strb r5,[r2] 
	strb r6,[r3] 
	add r2,#1 
	add r3,#1
	sub r4,#0x01 
	bne loop5
	sub r0,#0x01 
	cmp r0,#0x00
	bgt loop4
	ble stop 
stop b stop 
string dcb "bvbcet",0 
	end
