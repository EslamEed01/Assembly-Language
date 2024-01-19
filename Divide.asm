org 100h

.data   

m1 db "Please enter first number: $"
m2 db 10,13,"Please enter second number: $"
m3 db 10,13,"Result = $"

.code

mov ah,09
lea dx,m1
int 21h

mov ah,01
int 21h

mov bl,al
sub bl,48

mov ah,09
lea dx,m2
int 21h

mov ah,01
int 21h

mov cl,al
sub cl,48

mov ah,09
lea dx,m3
int 21h
        
mov ah,00 
mov al,bl
div cl

mov dl,al
add dl,30h 

mov ah,02
int 21h
