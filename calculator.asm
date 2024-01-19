org 100h 

.data

m1 db 10,13, "enter the fisrt number: $"
m2 db 10,13,"enter the second number: $"   
m3 db 10,13, "choose the operator: ",10,13, "$"
m4 db 10,13,"$"
m5 db 10,13,"do you want another operation? if yes press 1 if no press 0 ",10,13, "$"
m6 db 10,13,"wrong input",10,13,"$"

.code          
 
calc: 
mov ah , 09
mov dx, offset m1
int 21h 

mov ah, 01 
int 21h 

mov bl, al 
sub bl , 30h 

mov ah , 09
mov dx, offset m2
int 21h

mov ah, 01 
int 21h
 
mov cl, al 
sub cl , 30h 

mov ah , 09
mov dx, offset m3
int 21h

mov ah, 01
int 21h


cmp al , '+'
je toadd 

cmp al , '-'
je tosub   

cmp al , '*'
je tomul  
          
cmp al ,'/' 
je todiv 

          
toadd:
mov ah , 09
mov dx, offset m4
int 21h 
add bl , cl
add bl , 30h 
mov dl , bl
mov ah ,02 
int 21h   
jmp repeat   

;;;;;;;;;;;;;;;;;;;;;;;

tosub:
mov ah , 09
mov dx, offset m4
int 21h 
sub bl , cl
add bl , 30h 
mov dl , bl
mov ah ,02 
int 21h 
jmp repeat


;;;;;;;;;;;;;;;;;;;;;;;

tomul:
mov ah , 09
mov dx, offset m4
int 21h 
mov al,bl
mul cl 
mov dl , al
add dl, 30h
mov ah ,02 
int 21h 
jmp repeat


;;;;;;;;;;;;;;;;;;;;;;;



todiv: 
mov ah , 09
mov dx, offset m4
int 21h 
mov ah, 00
mov al,bl
div cl  
mov dl , al
add dl, 30h
mov ah ,02 
int 21h 
jmp repeat   

;;;;;;;;;;;;;;;;;;;;;;;

repeat:
mov ah,09
mov dx, offset m5
int 21h 
mov ah,01
int 21h 

sub al, 30h

cmp al,1
je calc

cmp al, 0
je finish

;;;;;;;;;;;;;;;;;;;;;;
  

wrong:
mov ah,09
mov dx, offset m6
int 21h 


finish:
mov ah,00


