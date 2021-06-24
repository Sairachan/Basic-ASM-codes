		AREA pl, code,readonly
entry
	Ldr sp,=s_base
    ldr r1,=0x40000000
	Mov r2,#2
	Stmia sp!,{r1,r2}
	Bl sat
	Ldmia sp!, {r1,r2}	
	ldr r1,=0xfffffffe
	Mov r2,#8
	Stmia sp!,{r1,r2}
	Bl sat
	Ldmia sp! ,{r1,r2}
S b s
Sat  stmia sp!,{r4-r7, lr}
	Ldr r5,[sp,#-0x20]
	Ldr r7,[sp,#-0x1c]
	ldr r6,=0x7fffffff
	Mov r4,r5,lsl r7
	Teq r5,r4,asr r7
	Eorne r4,r6, r5,asr #31
	Str r4,[sp,#-20]
	Ldmia sp! ,[r4,-r7,pc]
	mov pc,lr
	end
nj