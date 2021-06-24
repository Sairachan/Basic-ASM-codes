		area strrev,code,readonly
entry
	code32
	ldr r0,=s+1
	bx r0
	code16
s  mov r0,#0
  ldr r1,=string
  ldr r2,=string
loop1 ldrb r3,[r1]
      add r1,#1
      cmp r3,#0
	  bne loop2
	  beq loop3
loop2 add r5,#1
      bne loop1
loop3 mov r4,r5
      sub r4,#0x01
  	  add r2,r4
	  ldr r1,=string
loop5 ldrb r4,[r1]
      ldrb r7,[r2]
	  add r1,#0x01
	  sub r2,#0x01
	  cmp r4,r7
	  beq loop4
	  bne loop6
loop4 add r6,#0x01
	  bne loop5
loop6 cmp r5,r6
      beq yes
	  bne stop
yes add r0,#0x01
stop b stop
string dcb  "madam",0
 end
