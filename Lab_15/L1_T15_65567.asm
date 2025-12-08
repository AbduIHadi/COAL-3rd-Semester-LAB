mov al,12h
mov ah,0
int 10h      

mov al,3
mov ah,0Ch 

mov cx,75
mov dx,185

mov bl, 45

call Reverse_Diagonal_line 

mov bl,100
call Vertical_line 

mov bl, 45
call Horizontal_line

mov bl, 150
call Horizontal_line
                    
mov bl, 150
call Horizontal_line 

mov cx,75
mov dx,140

mov bl, 190  

call Vertical_line

mov cx,375
mov dx,140

mov bl,190 

call Vertical_line

mov cx,225
mov dx,140 

mov bl, 180
call Horizontal_line

mov cx,225
mov dx,110

mov bl, 150
call Horizontal_line

mov cx,375
mov dx,110
                  
mov bl, 30
call Diagonal_line

mov cx,225
mov dx,140

mov bl, 190
call Vertical_line

mov cx,150
mov dx,65

mov bl, 75
call Diagonal_line

mov cx,150
mov dx,65 

mov bl, 75
call Reverse_Diagonal_line 

mov cx,150
mov dx,35

mov bl, 90
call Diagonal_line 

mov bl, 15
call Reverse_Diagonal_line

mov cx,150
mov dx,35 

mov bl, 90
call Reverse_Diagonal_line

mov bl, 15
call Diagonal_line
          
mov cx,30         
mov dx,315

mov bl, 45
call Horizontal_line  
          
mov cx,120
mov dx,315

mov bl, 15

call Vertical_line

mov bl, 30

mov cx,120
mov dx,315

mov bl, 60
call Horizontal_line  

mov bl, 15

call Vertical_line  

mov cx,130
mov dx,220
                   
mov bl, 95
call Vertical_line

mov cx,130
mov dx,220
                   
mov bl, 40
call Horizontal_line
        
mov bl, 95
call Vertical_line     

mov cx,245
mov dx,240

mov bl, 45
call Horizontal_line

mov bl, 45
call Vertical_line

mov cx,245
mov dx,240

mov bl, 45
call Vertical_line

mov bl, 45
call Horizontal_line 

mov cx,267
mov dx,240

mov bl, 45
call Vertical_line

mov cx,245
mov dx,262

mov bl, 45
call Horizontal_line
                    
mov cx,310
mov dx,240

mov bl, 45
call Horizontal_line

mov bl, 45
call Vertical_line

mov cx,310
mov dx,240

mov bl, 45
call Vertical_line

mov bl, 45
call Horizontal_line

mov cx,332
mov dx,240

mov bl, 45
call Vertical_line

mov cx,310
mov dx,262

mov bl, 45
call Horizontal_line

mov cx,210
mov dx,60

mov bl, 35
call Vertical_line

mov cx,235
mov dx,60

mov bl, 50
call Vertical_line

mov cx,205
mov dx,52

mov bl, 8
call Vertical_line

mov bl, 35
call Horizontal_line  

mov cx,205
mov dx,52

mov bl, 35
call Horizontal_line

mov bl, 8
call Vertical_line

hlt
          
;\\\\\\\\\\\\\\\\\
          
    ;Functions

;/////////////////

Horizontal_line:
int 10h
inc cx 
dec bl
jne Horizontal_line
ret

Vertical_line:
int 10h
inc dx 
dec bl
jne Vertical_line
ret 

Diagonal_line:
int 10h
inc cx
inc dx 
dec bl
jne Diagonal_line
ret

Reverse_Diagonal_line:
int 10h
dec cx
inc dx 
dec bl
jne Reverse_Diagonal_line
ret