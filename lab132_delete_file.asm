org  100h

jmp start

file3 db "c:\input.txt", 0
handle dw ?

start:
mov ax, cs
mov dx, ax
mov es, ax

; delete file  c:\emu8086\MyBuild\t1.txt
mov ah, 41h
mov dx, offset file3
int 21h

ret
