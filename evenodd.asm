ORG 100h

start:
    mov dx, offset prompt_msg
    mov ah, 09h
    int 21h

    mov ah, 01h
    int 21h
    sub al, 30h
    mov bl, al

    mov ah, 00h
    mov al, bl
    mov cl, 02
    div cl

    cmp ah, 00h
    je even

odd:
    mov dx, offset odd_msg
    mov ah, 09h
    int 21h
    jmp done

even:
    mov dx, offset even_msg
    mov ah, 09h
    int 21h

done:
    mov ah, 4Ch
    int 21h

prompt_msg db 'Enter a single-digit number: $'
even_msg db 0Dh, 0Ah, 'The number is even.$'
odd_msg db 0Dh, 0Ah, 'The number is odd.$'
