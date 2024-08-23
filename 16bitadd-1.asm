
.model small
.stack 100h
.data  
    a dw 1132H
    b dw 0101H
    msg db 'The addition of 16-bit numbers is: $'
.code  
    mov ax, @data
    mov ds, ax

    mov ah, 09h
    lea dx, msg
    int 21h

    mov ax, a
    mov bx, b
    add ax, bx

    mov ch, 04h
    mov cl, 04h
    mov bx, ax

l2: 
    rol bx, cl
    mov dl, bl
    and dl, 0fH
    add dl, 30H
    cmp dl, 39H
    jbe l4  
    add dl, 07H  
l4: 
    mov ah, 02H
    int 21H
    dec ch
    jnz l2

    mov ah, 4cH
    int 21H
end
