org 100h

.data

myArray db 2,1,4

.code   

mov ch,3
mov bx, offset myArray ; lea bx, myArray

again:

mov dl,[bx]
add dl,30h

mov ah,02
int 21h

inc bx

dec ch
jnz again

