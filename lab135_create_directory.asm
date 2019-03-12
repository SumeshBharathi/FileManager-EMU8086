org  100h

jmp start


dir1 db "c:\test11", 0

start:
mov ax, cs
mov dx, ax
mov es, ax

; create c:\emu8086\vdrive\C\test1
mov dx, offset dir1
mov ah, 39h
int 21h


ret