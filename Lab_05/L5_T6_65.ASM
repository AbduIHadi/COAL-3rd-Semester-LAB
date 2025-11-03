dosseg
.model samll
.stack 100h
.data
msg1 db ' Number is equal$'
msg2 db ' Number is not equal$'
.code
main proc
mov ax,@data
mov ds,ax
mov dl,'3'
mov ah,1
int 21h
cmp al,dl
je move
mov dx,offset msg2
mov ah, 9
int 21h
mov ah,4ch
int 21h
move:
mov dx, offset msg1
mov ah,9
int 21h
mov ah,4ch
int 21h
main endp
end main


