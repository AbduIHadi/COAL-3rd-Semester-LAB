.MODEL SMALL
.STACK 100h

.DATA
msgInput DB 'Enter a number between 0-9: $'
msgEven  DB 13,10,'The number is Even',13,10,'$'
msgOdd   DB 13,10,'The number is Odd',13,10,'$'

.CODE
MAIN PROC
    ; Set up data segment
    MOV AX, @DATA
    MOV DS, AX

    ; Show input prompt
    MOV DX, OFFSET msgInput
    MOV AH, 09h
    INT 21h

    ; Read a character from keyboard
    MOV AH, 01h
    INT 21h
    SUB AL, 30h        ; Convert ASCII to integer (0–9)
    MOV BL, AL

    ; Check if even or odd
    TEST BL, 1         ; Test least significant bit
    JZ PRINT_EVEN

PRINT_ODD:
    MOV DX, OFFSET msgOdd
    MOV AH, 09h
    INT 21h
    JMP EXIT

PRINT_EVEN:
    MOV DX, OFFSET msgEven
    MOV AH, 09h
    INT 21h

EXIT:
    MOV AH, 4Ch
    INT 21h
MAIN ENDP
END MAIN
