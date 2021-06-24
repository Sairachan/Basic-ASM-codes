		area aa,code
entry
	ldr r0,=0x40000000
	ldr r1,=0x40000200
	ldmia r0,{r2-r5}
	stmia r1,{r2-r5}
stop b stop
	end