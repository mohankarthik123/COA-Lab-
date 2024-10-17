mov al, 35           ; Load the two-digit number directly into AL
    mov bl, 10
    div bl               ; Divide AL by 10: AL = quotient (tens), AH = remainder (ones)

    ; Convert tens place (quotient in AL) to ASCII
    add al, '0'          ; Convert to ASCII
    mov dl, al           ; Move the tens ASCII to DL for printing 
    mov bh, ah
    mov ah, 2            ; DOS interrupt for printing character
    int 21h              ; Print the tens digit

    ; Convert ones place (remainder in AH) to ASCII
    mov ah, bh
    add ah, '0'          ; Convert to ASCII
    mov dl, ah           ; Move the ones ASCII to DL for printing
    mov ah, 2            ; DOS interrupt for printing character
    int 21h              ; Print the ones digit

    ; Exit program
    mov ah, 4Ch          ; DOS interrupt for program termination
    int 21h