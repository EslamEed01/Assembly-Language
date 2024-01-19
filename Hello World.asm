org 100h

.data

m1 db "Hello World $"  

.code

mov ah,09
mov dx, offset m1 
int 21h