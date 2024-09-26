ORG 100h           ; Origin, to specify that the program starts at 100h (COM file format)

; Display message "Enter a letter: "
MOV DX, OFFSET msg_input  ; Load the address of the message   
MOV AH, 09h        ; Function 09h of INT 21h is used to display a string
INT 21h            ; Call DOS interrupt to print the message
; Read a single character from user
MOV AH, 01h        ; Function 01h of INT 21h is used to read a character from input
INT 21h            ; Call DOS interrupt to get the character
MOV DL, AL         ; Store the input character from AL register to DL for printing
MOV BL,AL
; Print the character on screen
MOV DX, OFFSET msg_output  ; Load the address of the output message
MOV AH, 09h        ; Function 09h of INT 21h is used to display a string
INT 21h            ; Call DOS interrupt to print the message

MOV DL,BL
MOV AH, 02h        ; Function 02h of INT 21h is used to print a character
INT 21h            ; Call DOS interrupt to print the character

; Terminate the program
MOV AH, 4Ch        ; Function 4Ch of INT 21h terminates the program
INT 21h            ; Call DOS interrupt to exit

msg_input  DB 'Enter a letter: $';DB->defined by and $ ->next printing statements not printed. 
msg_output DB 0Dh, 0Ah, 'The letter is: $'  ; Output message
END                ; End of program