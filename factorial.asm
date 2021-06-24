		area factorial,code
entry
	ldr r0,num
	mov r3,#0
	mov r2,#1
	mov r4,#1
	B loop
loop cmp r3,r0
     bge stop
	 bl multiply
multiply mul r6,r4,r2
	     mov r4,r6
         add r2,r2,#1
		 add r3,r3,#1
		 b loop
		 mov PC,LR
num dcd 0x05
stop b stop
	end
          