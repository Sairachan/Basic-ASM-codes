		area aa,code
entry
	ldr r0,=0x40000000
	ldr r1,=0x40000200
	ldmia r0,{r3-r6}
	ldmia r1,{r7-r10}
	stmia r1,{r3-r6}
	stmia r0,{r7-r10}
stop b stop
	end
	