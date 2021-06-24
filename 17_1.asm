		area aa,code
entry 
	ldr sp,=0x40000200
	stmdb sp!,{r12,r3-r5,r7,r8}
s b s
	end