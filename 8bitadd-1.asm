org 100h

num1 db 22h
num2 db 24h

start:
mov al, num1
add al, num2

mov bl,al
mov ah,al
         
and ah, 0F0h
shr ah, 4
add ah, 30h
cmp ah, 39h 

jle print_first   
add ah, 7

print_first:

mov dl, ah
mov ah, 02h

int 21h

mov ah, bl
and ah, 0Fh 
add ah, 30h
cmp ah, 39h

jle print_second
add ah, 7

print_second:

mov dl, ah
mov ah, 02h 
int 21h





ret