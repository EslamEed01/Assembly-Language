org 100h 

.data

.code

mov cl,5

begin:

mov dl,5
add dl,30h

mov ah,02
int 21h

loop begin