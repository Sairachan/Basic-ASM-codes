		area asc,code,readonly
entry
	code32
    ldr r0,=string1
	ldr r4,=string2
	ldr r1,=th+1
	bx r1
	code16
th ldrb r2,[r0]
   add r0,#0x01
   cmp r2,#0
   bne ad
   beq dth
ad add r5,#0x01
   bne th
dth ldrb r2,[r4]
   add r4,#0x01
   cmp r2,#0
   beq lop
   bne dad
dad add r6,#0x01
   bne dth
lop cmp r5,r6
	bne stop
content ldr r0,=string1
        ldr r4,=string2
loop    ldrb r2,[r0]
		add r0,#0x01
		ldrb r3,[r4]
		add r4,#0x01
		cmp r2,r3
		beq hap
		bne stop
hap add r7,#0x01
    sub r5,#0x01
	bne loop
    beq comp
comp cmp r6,r7
     beq addd
	 bne stop
addd mov r1,#0x01
stop b stop
string1 dcb "BVBCET",0
string2 dcb "BVB",0
	end
