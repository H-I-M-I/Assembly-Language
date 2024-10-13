;org 100h   
.model small
.stack 100h
.data
Fab DB 2 DUP(1), 4 DUP(0)
.code
mov ah,(fab +0)
mov al,(fab+1)
add al,ah
mov (fab+2),al
;================================================
mov ah,(fab +1)
mov al,(fab+2)
add al,ah
mov (fab+3),al
;================================================
mov ah,(fab +2)
mov al,(fab+3)
add al,ah
mov (fab+4),al
;==============================================
mov ah,(fab +3)
mov al,(fab+4)
add al,ah
mov (fab+5),al
;==============================================
ret
