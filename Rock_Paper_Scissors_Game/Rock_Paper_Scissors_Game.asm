.model small
.stack 100h

.data
    msg_title      db 'ROCK PAPER SCISSORS GAME',13,10,'$'
    msg_player1    db 'Player 1 - Choose: (1)Rock (2)Paper (3)Scissors: $'
    msg_player2    db 'Player 2 - Choose: (1)Rock (2)Paper (3)Scissors: $'
    msg_p1_chose   db 'Player 1 chose: $'
    msg_p2_chose   db 'Player 2 chose: $'
    msg_p1_win     db 'Player 1 WINS!$'
    msg_p2_win     db 'Player 2 WINS!$'
    msg_tie        db 'It is a TIE!$'
    msg_play_again db 13,10,'Play again? (Y/N): $'
    msg_invalid    db 13,10,'Invalid choice! Press 1-3 only!$'
    msg_processing db 'Processing...$'
    msg_continue   db 'Press any key to continue...$'
    
    choices        db ' Rock$  Paper$  Scissors$'
    newline        db 13,10,'$'
    
    player1_choice db ?
    player2_choice db ?

.code
main proc
    mov ax, @data
    mov ds, ax
    
game_loop:
    ; Clear screen and display title
    call clear_screen
    mov ah, 09h
    lea dx, msg_title
    int 21h
    lea dx, newline
    int 21h
    
    ; Get Player 1's choice (completely hidden)
    call get_player1_input
    
    ; Clear screen before Player 2's turn
    call clear_screen
    mov ah, 09h
    lea dx, msg_title
    int 21h
    lea dx, newline
    int 21h
    
    ; Get Player 2's choice (completely hidden)
    call get_player2_input
    
    ; Clear screen and show results
    call clear_screen
    mov ah, 09h
    lea dx, msg_title
    int 21h
    lea dx, newline
    int 21h
    
    ; Display both choices
    call display_choices
    
    ; Determine winner
    call determine_winner
    
    ; Ask to play again
    mov ah, 09h
    lea dx, msg_play_again
    int 21h
    
    mov ah, 01h        ; Read character
    int 21h
    
    cmp al, 'Y'
    je game_loop
    cmp al, 'y'
    je game_loop
    
    jmp exit_program

exit_program:
    mov ah, 4ch        ; Exit to DOS
    int 21h
main endp

; Get Player 1's input (completely hidden)
get_player1_input proc
get_input_p1:
    mov ah, 09h
    lea dx, msg_player1
    int 21h
    
    ; Read character without echo - input is completely hidden
    mov ah, 07h
    int 21h
    
    ; Validate input
    cmp al, '1'
    jb invalid_p1
    cmp al, '3'
    ja invalid_p1
    
    ; Valid input - store it
    sub al, '0'
    mov player1_choice, al
    
    ; Show processing message
    mov ah, 09h
    lea dx, newline
    int 21h
    lea dx, msg_processing
    int 21h
    
    ; Simple and reliable delay - wait for any key
    mov ah, 09h
    lea dx, msg_continue
    int 21h
    mov ah, 07h        ; Wait for key press (hidden)
    int 21h
    
    ret
    
invalid_p1:
    mov ah, 09h
    lea dx, msg_invalid
    int 21h
    lea dx, newline
    int 21h
    jmp get_input_p1
get_player1_input endp

; Get Player 2's input (completely hidden)
get_player2_input proc
get_input_p2:
    mov ah, 09h
    lea dx, msg_player2
    int 21h
    
    ; Read character without echo - input is completely hidden
    mov ah, 07h
    int 21h
    
    ; Validate input
    cmp al, '1'
    jb invalid_p2
    cmp al, '3'
    ja invalid_p2
    
    ; Valid input - store it
    sub al, '0'
    mov player2_choice, al
    
    ; Show processing message
    mov ah, 09h
    lea dx, newline
    int 21h
    lea dx, msg_processing
    int 21h
    
    ; Simple and reliable delay - wait for any key
    mov ah, 09h
    lea dx, msg_continue
    int 21h
    mov ah, 07h        ; Wait for key press (hidden)
    int 21h
    
    ret
    
invalid_p2:
    mov ah, 09h
    lea dx, msg_invalid
    int 21h
    lea dx, newline
    int 21h
    jmp get_input_p2
get_player2_input endp

; Display both players' choices
display_choices proc
    mov ah, 09h
    lea dx, newline
    int 21h
    
    ; Display Player 1's choice
    lea dx, msg_p1_chose
    int 21h
    mov al, player1_choice
    call display_choice_name
    
    lea dx, newline
    int 21h
    
    ; Display Player 2's choice
    lea dx, msg_p2_chose
    int 21h
    mov al, player2_choice
    call display_choice_name
    
    lea dx, newline
    int 21h
    lea dx, newline
    int 21h
    ret
display_choices endp

; Display choice name (Rock/Paper/Scissors)
display_choice_name proc
    dec al             ; Convert to 0-based index
    mov bl, 8          ; Each string is 8 bytes (with padding)
    mul bl
    
    lea si, choices
    add si, ax
    
    mov ah, 09h
    mov dx, si
    int 21h
    ret
display_choice_name endp

; Determine winner and display result
determine_winner proc
    mov al, player1_choice
    mov bl, player2_choice
    
    cmp al, bl
    je tie_game
    
    ; Rock (1) vs Scissors (3)
    cmp al, 1
    jne check_paper
    cmp bl, 3
    je player1_wins
    
check_paper:
    ; Paper (2) vs Rock (1)
    cmp al, 2
    jne check_scissors
    cmp bl, 1
    je player1_wins
    
check_scissors:
    ; Scissors (3) vs Paper (2)
    cmp al, 3
    jne player2_wins
    cmp bl, 2
    je player1_wins
    
player2_wins:
    mov ah, 09h
    lea dx, msg_p2_win
    int 21h
    jmp end_determine
    
player1_wins:
    mov ah, 09h
    lea dx, msg_p1_win
    int 21h
    jmp end_determine
    
tie_game:
    mov ah, 09h
    lea dx, msg_tie
    int 21h
    
end_determine:
    ret
determine_winner endp

; Clear screen function
clear_screen proc
    mov ax, 0003h      ; Clear screen using mode change
    int 10h
    ret
clear_screen endp

end main