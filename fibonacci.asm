.model small
.stack 100h
.data
    sum dw ?
    
.code
   main proc
    
    mov ax, @data
    mov ds, ax
    
    mov bx, 0
    mov dx, 1
    
    xor cx, cx
    mov cx, 5
    
label:
    add bx, dx
    mov ax, bx
    mov bx, dx
    mov dx, ax
    
    loop label
  
  sub dx,1
  mov sum, dx 
  
  mov ax, 4c00h
  int 21h
  
  main endp
end main