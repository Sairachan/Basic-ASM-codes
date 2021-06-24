		area asc,code,readonly
entry
	code32
    ldr r0,=string
	ldr r1,=th+1
	bx r1
	code16
th ldrb r2,[r0]
   add r0,#0x01
   cmp r2,#' '
   beq ad
   bne rep
ad add r3,#0x01
   b th
rep cmp r2,#0
    bne th
	beq stop
stop b stop
string dcb "bvb cet ",0
	end
