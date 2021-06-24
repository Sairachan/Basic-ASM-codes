		area strrev,code,readonly
entry
	code32
	ldr r1,=th+1
	bx r1
	code16
th	ldr r0,=string
   ldr r2,=0x40000000
l  ldrb r3,[r0]
   add r0,#0x01
   cmp r3,#0
   bne ad
   beq reverse
ad add r4,#0x01
  b l
reverse ldr r0,=string
        add	r0,r4
		b loop
loop	 sub r0,#0x01
         ldrb r5,[r0]
		strb r5,[r2]
		add r2,#0x01
		sub r4,#0x01
		bne loop
stop b stop
string dcb "bvb",'0'
 end
