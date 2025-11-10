.model small
.stack 100h

.data
msg1 db 10,13, "Vowel character....$"
msg2 db 10,13, "Consonant character....$"

.code
main proc
    mov ax, @data
    mov ds, ax

    mov ah, 1      
    int 21h        

    cmp al, 'A'
    je vowel
    cmp al, 'a'
    je vowel
    cmp al, 'E'
    je vowel
    cmp al, 'e'
    je vowel
    cmp al, 'I'
    je vowel
    cmp al, 'i'
    je vowel
    cmp al, 'O'
    je vowel
    cmp al, 'o'
    je vowel
    cmp al, 'U'
    je vowel
    cmp al, 'u'
    je vowel

    mov dx, offset msg2
    mov ah, 9
    int 21h
    jmp exit

vowel:
    mov dx, offset msg1
    mov ah, 9
    int 21h

exit:
    mov ah, 4Ch
    int 21h
main endp
end main
