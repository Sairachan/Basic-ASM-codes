		AREA FIBBO,CODE
ENTRY
   MOV R0,#00      
   SUB R0,R0,#01     
   MOV R1,#01
   MOV R4,#10       
   LDR R2,=0X40000000
BACK ADD R0,R0,R1    
   STR R0,[R2],#4     
   MOV R3,R0
   MOV R0,R1
   MOV R1,R3
   SUBS R4,R4,#01      
   BNE BACK  
STOP B STOP        
   END