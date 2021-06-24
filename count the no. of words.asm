		area count,code
entry
	ldr r0,=array
loop ldr r1,[r0],#4
	 cmp r1,#0
	 beq stop
	 BL cnt
cnt add r2,r2,#1
    b loop
	mov PC,LR
stop b stop
array dcd 0x43256878,0x23456789,0x09876098,0
	end