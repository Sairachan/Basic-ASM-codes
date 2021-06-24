		AREA BT,CODE,READONLY
ENTRY
	 LDR R13,=0X40000020
	 LDR R7,=0X40000000
     LDMFD R13,{R1-R3}
                MOV R6,R1 
                SWP R1,R6,[R7]
	  ADD R7,#4
	  MOV R6,R2 
	  SWP R2,R6,[R7]
	  ADD R7,#4
	  MOV R6,R3
	 SWP R3,R6,[R7]
	 STMIA R13,{R1-R3}
S   B   S
       END
