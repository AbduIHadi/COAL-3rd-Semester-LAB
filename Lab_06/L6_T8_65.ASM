dosseg
.model small
.stack 100h
.data
msgInput db 'Enter a number$'
msgEven db 'The number is Even$'
msgOdd db 'The number is odd$'

.code
main proc
mov ax,@data
mov ds,ax

mov dx,offset msgInput
mov ah,9
int 21h

mov ah,1
int 21h
sub al,48
xor ah,ah
mov bl,2
div bl

cmp ah,0
jne odd

mov ah,9
mov dx,offset msgEven
int 21h
jmp exit

odd:
mov ah,9
mov dx,offset msgOdd
int 21h

exit:
mov ah,4ch
int 21h
main endp
end main

