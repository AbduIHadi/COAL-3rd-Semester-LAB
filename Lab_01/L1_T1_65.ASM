dosseg            ;Manage the arrangement of Program
.model small      ;model directive   ;How much space in RAM?
.stack 100h       ;stack segment directive
.data             ;Data segment directive/Define variable
.code             ;Code segment directive
main proc
mov dl,'A'        
mov ah, 2
int 21h
mov ah,4ch
int 21h
main endp
end main








