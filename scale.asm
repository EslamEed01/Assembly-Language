org 100h

.data

m1 db "Please enter a number: $"
m2 db 10,13,"The number you entered is above five $"
m3 db 10,13,"The number you entered is below five $"  
m4 db 10,13,"The number you entered is equal five $" 

.code 

mov ah,09
lea dx,m1
int 21h

mov ah,01
int 21h

sub al,48

cmp al,5
ja above
je equal
jmp below

above: 
mov ah,09
lea dx,m2
int 21h
jmp finish

equal:
mov ah,09
lea dx,m4
int 21h
jmp finish

below:   
mov ah,09
lea dx,m3
int 21h  
jmp finish

finish:
mov ah,00
int 21h

