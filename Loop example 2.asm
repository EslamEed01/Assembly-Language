org 100h

.data

m1 db "Please enter a number: $"
m2 db 10,13,"$"
num db 0 

.code

mov cl,5
         
mov ah,09
lea dx,m1
int 21h
        
mov ah,01
int 21h

sub al,48
mov num,al
           
mov ah,09
lea dx,m2
int 21h
           
begin:

mov dl,num
add dl,30h

mov ah,02
int 21h

inc num 

mov ah,09
lea dx,m2
int 21h

loop begin