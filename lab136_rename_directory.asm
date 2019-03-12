org  100h
jmp start
dir1 db "c:\test11", 0
dir2 db "c:\test22", 0
handle dw ?
start:
mov ax, cs
mov dx, ax
mov es, ax

; rename directory: c:\emu8086\MyBuild\test2 to c:\emu8086\MyBuild\newname
mov ah, 56h
mov dx, offset dir1   ; existing.
mov di, offset dir2   ; new.
int 21h  
ret