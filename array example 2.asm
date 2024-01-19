org 100h

.data
  
m1 db "Please enter a number: $"
m2 db 10,13,"$"     
m3 db 10,13,"Array values : $"
myArray db ?     

.code   

mov cl,3
lea bx, myArray

again:

mov ah,09
lea dx,m1
int 21h 

mov ah,01
int 21h

mov [bx],al   

mov ah,09
lea dx,m2
int 21h 

inc bx
dec cl
jnz again

mov ah,09
lea dx,m3
int 21h 

mov ah,09
lea dx,m2
int 21h  

mov cl,3
lea bx, myArray
               
output:

mov dl,[bx]

mov ah,02
int 21h

mov ah,09
lea dx,m2
int 21h  

inc bx
dec cl
jnz output