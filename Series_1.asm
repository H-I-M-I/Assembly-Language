
;1+4+7+10+13=35 

.model small
.stack 100h  

.DATA 
  ANS DW ?  
  
.CODE
  MAIN PROC 
    
   MOV AX,@DATA
   MOV DS,AX
    
   MOV CX,5
   MOV AX,0
   MOV BX,1
   
LABEL:
   ADD AX,BX
   ADD BX,3 
   MOV ANS,AX
   LOOP LABEL   
   
   
   
   MOV AX, 4C00H
   INT 21H
   
  MAIN ENDP
END MAIN
