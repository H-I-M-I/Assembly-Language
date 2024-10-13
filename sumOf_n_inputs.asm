.MODEL SMALL
.STACK 100H

.DATA
    SUM DB ?
    N DB ?
    MSG DB 10,13, "SUM $"
    
.CODE
    MAIN PROC
        MOV AX,@DATA
        MOV DS,AX 
        
        MOV SUM,0        
        
        MOV AH,1  
        INT 21H  
        
        MOV N,AL
        SUB N,48
        
        MOV CL,N
        MOV CH,0 
        
        MOV DL,10
        MOV AH,2
        INT 21H 
        MOV DL,13
        INT 21H
        
        ADDITION:
            MOV AH,1
            INT 21H
            
            SUB AL,48
            
            ADD SUM,AL
            
            LOOP ADDITION
            
           
        MOV DX,OFFSET MSG
        MOV AH,9
        INT 21H    
            
        MOV BX,10
        
        MOV AL,SUM
        MOV AH,0
        MOV DL,0
        
        DIV BL
        
        MOV DH,AH 
       
        ;PRINT THE FIRST DIGIT
        MOV DL,AL
        ADD DL,48        
        
        MOV AH,2
        INT 21H
        
        ;PRINT THE SECOND DIGIT
        MOV DL,DH
        ADD DL,48
        
        MOV AH,2
        INT 21H
        
        MOV AX,4C00H
        INT 21H
        
        MAIN ENDP
    END MAIN