org  100h

jmp start

file1 db "c:\aa.txt", 0  
file2 db "c:\bb.txt", 0
handle dw ?

start:
mov ax, cs
mov dx, ax
mov es, ax

; rename fileL c:\emu8086\vdrive\C\test1\file1.txt to c:\test1\newfile.txt
mov ah, 56h
mov dx, offset file1   ; existing.
mov di, offset file2   ; new.
int 21h

ret
