org 100h             ; Set the origin to 100h for .COM programs


start:
    mov cx, 10       ; Set the loop counter to 10 (for numbers 0 to 9)
    mov dl, '0'      ; Initialize DL with ASCII for '0'

print_loop:
    ; Print the character in DL
    mov ah, 02h      ; DOS function 02h (print character in DL)
    int 21h          ; Call DOS interrupt

    ; Increment DL to the next ASCII character
    inc dl           ; Move to the next ASCII character

    ; Decrement CX and check if it's zero
    loop print_loop  ; Loop until CX reaches zero

    ; Exit the program
    mov ah, 4Ch      ; DOS function 4Ch (exit program)
    int 21h          ; Call DOS interrupt