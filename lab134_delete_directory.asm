org  100h

jmp start


dir3 db "c:\test1", 0

start:
mov ax, cs
mov dx, ax
mov es, ax

; delete directory: c:\emu8086\MyBuild\newname
mov ah, 3ah
mov dx, offset dir3
int 21h


ret