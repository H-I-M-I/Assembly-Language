.model small
.stack 100h 

.DATA
    M DW ? 
    D DW ?  

.CODE 
  MAIN PROC
    
  MOV AX,@DATA
  MOV DS,AX  
  
  MOV AX,20
  MOV BX,3
  MUL BX  
  
  MOV M,AX
   
  MOV AX,30
  MOV BX,5
  DIV BX  
  
  MOV D,AX 
  
  MOV AX,4C00H
  INT 21H
  
 MAIN ENDP
END MAIN       





  
  