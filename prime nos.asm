		area primeno,code
entry
	mov r0,#5
	cmp r0,#1
	beq prime
	cmp r0,#2
	beq prime
	mov r1,r0
	mov r2,#2
loop bl division
	 cmp r8,#00
	 beq notprime
	 add r2,r2,#1
	 cmp r2,r1
	 beq prime
	 b loop
notprime ldr r3,=0x11111111
         b stop
prime ldr r3,=0xffffffff
      b stop
division mov r8,r0
         mov r9,r2
div sub r8,r8,r9
    add r10,r10,#1
	cmp r8,r9
	BPL div
	mov PC,LR
stop b stop
	end