.model small
.stack 100h 
.data
    myres db 0
    rem db 0
    
.code 
  main proc 
    
    mov ax, @data
    mov ds, ax
    
    mov dl, 10       
    mov bl, 0
    
    xor cx, cx
    mov cx, 2
    
scanNum:
       mov ah,1
       int 21h
       sub al,48 
       mov ah,0 
       
       mov dh,al 
       mov al,bl
       
       mul dl
       add al,dh
       
       mov bl,al
       mov myres, bl
       
       loop scanNum  
       
    mov dl, 10
    mov ah, 2
    int 21h 
    mov ah, 2
    mov dl, 13
    int 21h
    
    mov ah, 00
    mov dl, 0
    mov bl, 0
    
    mov al, myres
    mov bl, 10   
    
    div bl
    
    mov rem, ah
    
    mov dl, al
    add dl, 48
    mov ah, 2
    int 21h
    
    mov dl, rem
    add dl, 48
    mov ah, 2
    int 21h 
    
    mov ax, 4c00h
    int 21h
    
    main endp
end main