;Write a program that sets SI to the offset of the first positive 
;value in an array; if no positive value is found set SI = -1

org 100h
.data 

array DW -3,-6,-1,-10,10,30,40,4
arrayLen = ($-array)/2 

.code
mov si,OFFSET array
mov cx,arrayLen
next:
cmp WORD PTR [si],0 ; compare to 0
jg quit ; +ve value found
add si, 2 ; offset of next item
loop next ; continue loop
mov si, -1 ; none found
quit:
ret



