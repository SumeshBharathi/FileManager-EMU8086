org 100h ; .com memory layout 

mov dx, offset file ; address of file to dx 
mov al,0 ; open file (read-only) 
mov ah,3dh 
int 21h ; call the interupt 
jc terminate ; if error occurs, terminate program 
mov bx,ax ; put handler to file in bx 

mov cx,1 ; read one character at a time 
print: 
lea dx, BUF 
mov ah,3fh ; read from the opened file (its handler in bx) 
int 21h 
CMP AX, 0 ; how many bytes transfered? 
JZ terminate ; end program if end of file is reached (no bytes 
;left). 
mov al, BUF ; char is in BUF, send to ax for printing (char is 
;in al) 
mov ah,0eh ; print character (teletype). 
int 10h 
jmp print ; repeat if not end of file. 


terminate: 
mov ah, 0 ; wait for any key... 
int 16h 
ret 

file db "c:\input.txt", 0 
BUF db ? 


END