		AREA MULT,CODE,READONLY
ENTRY
	 CODE32
	 LDR R0,=THUMB+1
	 BX R0
	 CODE16
THUMB  MOV R4,#0X02
	 MOV R3,#0X00
      MOV  R2,#0X0A
LQ    ADD R3,R4
      SUB R2,#0X01
	  BNE LQ
	  BEQ STOP
STOP B STOP
  END