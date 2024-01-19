org 100h

.data

m1 dw "Please enter the first number: $"
m2 dw 10,13,"Please enter the second number:  $"
m3 db 10,13,"The result= $"  

.code

mov ah,09
lea dx,m1
int 21h

mov ah,01
int 21h

sub al,48
mov bl,al

mov ah,09
lea dx,m2
int 21h

mov ah,01
int 21h

sub al,48
mov cl,al

add bl,cl
add bl,30h
          
mov ah,09
lea dx,m3
int 21h

mov ah,02
mov dl,bl
int 21h          