	AREA TABLE, CODE,READONLY
ENTRY
	LDR R0, =VAR1 
	LDR R1,CNT
	MOV R5, R1
	LDR R2, =ITEM 
	LDR R4, [R2]
BACK LDR R3, [R0], #04
	CMP R3, R4 
	BEQ STOP 
	SUBS R1, R1, #0X01 
	CMP R1, #0x00 
	BNE BACK 
	STR R4, [R0] 
	ADD R1, R5, #0x01
	LDR R0, =0x40000000
	STR R1, [R0]
STOP B STOP

CNT DCD 5
VAR1 DCD 10,20,30,40,50
ITEM DCD 100
	end