dosseg
.model small
.stack 100h
.data
.code
main proc
mov dl,0
mov cx,26
mov dx,65
L1:
mov ah,2
int 21h
add dx,1
Loop L1
mov dl,0Ah
int 21h
mov cx,26
mov dx,97
L2:
mov ah,2
int 21h
add dx,1
Loop L2
mov ah,4ch
int 21h
main endp
end main
