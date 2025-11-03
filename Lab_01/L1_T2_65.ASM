dosseg
.model small
.stack 100h
.data
.code
main proc
mov dl,'A'
mov ah, 2
int 21h
mov dl,'b'
mov ah, 2
int 21h
mov dl,'d'
mov ah, 2
int 21h
mov dl,'u'
mov ah, 2
int 21h
mov dl,'l'
mov ah, 2
int 21h
mov dl,'_'
mov ah, 2
int 21h
mov dl,'H'
mov ah, 2
int 21h
mov dl,'a'
mov ah, 2
int 21h
mov dl,'d'
mov ah, 2
int 21h
mov dl,'i'
mov ah, 2
int 21h
mov ah, 4ch
int 21h
main endp
end main








