dosseg
.model small
.stack 100h
.data
.code
main proc
mov cx,10   ;its a loop that works on decrement by 1
Mov dx,48   ;data register which value is 48 = 0
L1:         ;Label L1
Mov ah,2    ;printing the value
Int 21h     ;to interept
add dx,1    ;adding 1 in dx register
Loop L1     ;To call the Loop
mov ah,4ch  ;exit function
int 21h     
main endp
end main

