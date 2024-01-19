org 100h

.data

m1 db "Please enter a number: $"
m2 db 10,13,"$"
m3 db 10,13,"please set the loop count: $"
num db 0
count db ?

.code
         
mov ah,09
lea dx,m1
int 21h
        
mov ah,01
int 21h

sub al,48
mov num,al
           
mov ah,09
lea dx,m3
int 21h

mov ah,01
int 21h

mov count,al
sub count,48

mov cl, count

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