.model small
.stack 100h 
.data   
    a dw 9
    b dw 7
    sum dw ?
    rem db ?
    
.code 
  main proc 
    
    mov ax, @data
    mov ds, ax
    
    mov ax, a
    add ax, b
    mov sum, ax 
    
    mov ah, 00
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