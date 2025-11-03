dosseg
.model small
.stack 100h
.data
.code
main proc
mov dl,0
mov cx,10
mov dx,48
L1:
mov ah,2
int 21h
add dx,1
Loop L1
mov dl,0AH
int 21h
mov cx,5
mov dx,48
L2:
mov ah,2
int 21h
add dx,2
Loop L2
mov dl,0AH
int 21h
mov cx,5
mov dx,49
L3:
mov ah,2
int 21h
add dx,2
Loop L3
mov ah,4ch
int 21h
main endp
end main


