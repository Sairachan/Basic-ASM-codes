		AREA BT,CODE,READONLY
ENTRY
	  MOV R3,#3
	 LDR R5,=0X40000020
	 LDR R7,=0X40000000
LOP  LDR R1,[R5]
       MOV R6,R1 
       SWP R1,R6,[R7]
	   STR R1,[R5]
	   ADD R5,#4
	   ADD R7,#4
       SUBS R3,#1
	   BNE LOP
S   B   S
       END
