org 100h

.data

m1 db "Enter a number: $"  
m2 db 10,13,"The number you entered is: $"

.code

mov ah,09        
mov dx, offset m1 
int 21h

mov ah,01        
int 21h

mov bl,al        
sub bl,48        

mov ah,09      
lea dx,m2        
int 21h  

mov dl,bl        
add dl,30h       
                  
mov ah,02      
int 21h
