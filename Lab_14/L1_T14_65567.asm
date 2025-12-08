mov al,12h
mov ah,0
int 10h      

mov al,3
 
;Table
 
mov al,12h
mov ah,0
int 10h      

mov al,3
mov ah,0Ch

mov cx,359
mov dx,294
int 10h

mov cx,519
mov dx,304
mov bl,120
call Horizontal_Right

mov cx,639
mov dx,304
mov bl,120
call Diagonal_Down_Left

mov cx,519
mov dx,424
mov bl,120
call Horizontal_Left

mov cx,399
mov dx,424
mov bl,120
call Diagonal_Up_Right

mov cx,529
mov dx,314
mov bl,80
call Horizontal_Right

mov cx,609
mov dx,314
mov bl,100
call Diagonal_Down_Left

mov cx,509
mov dx,414
mov bl,80
call Horizontal_Left

mov cx,429
mov dx,414
mov bl,100
call Diagonal_Up_Right

mov cx,534
mov dx,319
mov bl,60
call Horizontal_Right

mov cx,594
mov dx,319
mov bl,80
call Diagonal_Down_Left

mov cx,514
mov dx,399
mov bl,60
call Horizontal_Left

mov cx,454
mov dx,399
mov bl,80
call Diagonal_Up_Right

mov cx,539
mov dx,324
mov bl,40
call Horizontal_Right

mov cx,579
mov dx,324
mov bl,60
call Diagonal_Down_Left

mov cx,519
mov dx,384
mov bl,40
call Horizontal_Left

mov cx,479
mov dx,384
mov bl,60
call Diagonal_Up_Right

mov cx,544
mov dx,329
mov bl,20
call Horizontal_Right

mov cx,564
mov dx,329
mov bl,40
call Diagonal_Down_Left

mov cx,524
mov dx,369
mov bl,20
call Horizontal_Left

mov cx,504
mov dx,369
mov bl,40
call Diagonal_Up_Right

mov cx,549
mov dx,334
mov bl,10
call Horizontal_Right

mov cx,539
mov dx,354
mov bl,10
call Horizontal_Left

mov cx,529
mov dx,354
mov bl,20
call Diagonal_Up_Right

mov cx,399
mov dx,424
mov bl,50
call Vertical_Down

mov cx,409
mov dx,424
mov bl,50
call Vertical_Down

mov cx,409
mov dx,474
mov bl,5
call Diagonal_Down_Left

mov cx,404
mov dx,479
mov bl,5
call Diagonal_Up_Left

mov cx,524
mov dx,419
mov bl,55
call Vertical_Down

mov cx,514
mov dx,424
mov bl,50
call Vertical_Down

mov cx,524
mov dx,474
mov bl,5
call Diagonal_Down_Left

mov cx,519
mov dx,479
mov bl,5
call Diagonal_Up_Left

mov cx,484
mov dx,424
mov bl,25
call Vertical_Down

mov cx,472
mov dx,424
mov bl,25
call Vertical_Down

mov cx,484
mov dx,449
mov bl,5
call Diagonal_Down_Left

mov cx,477
mov dx,454
mov bl,5
call Diagonal_Up_Left

mov cx,639
mov dx,304
mov bl,50
call Vertical_Down

mov cx,629
mov dx,314
mov bl,40
call Vertical_Down

mov cx,629
mov dx,354
mov bl,5
call Diagonal_Down_Right

mov cx,634
mov dx,359
mov bl,5
call Diagonal_Up_Right

;Bed

mov cx,170
mov dx,60
mov ah,0Ch
int 10h   

mov bl,100 

call Horizontal_Right     

mov cx,170
mov dx,120
mov ah,0Ch
int 10h 
        
mov bl,100
        
call Horizontal_Right   

mov cx,170        
mov dx,60         
mov ah,0Ch 
int 10h

mov bl,60

call Vertical_Down

mov cx,270    
mov dx,60
mov ah,0Ch

mov bl,60 

call Vertical_Down  

mov cx,180
mov dx,70
mov ah,0Ch
int 10h   

mov bl,80 

call Horizontal_Right        

mov cx,180        
mov dx,70         
mov ah,0Ch

mov bl,50

call Vertical_Down

mov cx,260    
mov dx,70
mov ah,0Ch

mov bl,50 

call Vertical_Down

mov cx,190
mov dx,80
mov ah,0Ch
int 10h   

mov bl,60 
        
call Horizontal_Right    

mov cx,190        
mov dx,80         
mov ah,0Ch

mov bl,40

call Vertical_Down

mov cx,250    
mov dx,80
mov ah,0Ch

mov bl,40 

call Vertical_Down

mov cx,200
mov dx,90
mov ah,0Ch
int 10h   

mov bl,40 
        
call Horizontal_Right   

mov cx,200        
mov dx,90         
mov ah,0Ch

mov bl,30

call Vertical_Down

mov cx,240    
mov dx,90
mov ah,0Ch

mov bl,30 

call Vertical_Down

mov cx,210
mov dx,100
mov ah,0Ch
int 10h   

mov bl,20 
        
call Horizontal_Right    

mov cx,210        
mov dx,100         
mov ah,0Ch

mov bl,20

call Vertical_Down

mov cx,230    
mov dx,100
mov ah,0Ch

mov bl,20 

call Vertical_Down

mov cx,170    
mov dx,120
mov ah,0Ch  

mov bl,100  

call Diagonal_Down_Left
                  
mov cx,270    
mov dx,120
mov ah,0Ch  

mov bl,100  

call Diagonal_Down_Left

mov cx,70
mov dx,220
mov ah,0Ch
int 10h   

mov bl,100 

call Horizontal_Right

mov cx,70
mov dx,220
mov ah,0Ch
int 10h   

mov bl,100

mov cx,70
mov dx,220
mov ah,0Ch
int 10h   

mov bl,50     

call Vertical_Down

mov cx,75
mov dx,220
mov ah,0Ch
int 10h   

mov bl,50     

call Vertical_Down
                   
mov cx,70
mov dx,270
mov ah,0Ch
int 10h   

mov bl,6     

call Horizontal_Right  

mov cx,165
mov dx,220                                                      
mov ah,0Ch
int 10h   

mov bl,50     

call Vertical_Down

mov cx,170
mov dx,220
mov ah,0Ch
int 10h   

mov bl,50     

call Vertical_Down
                    
mov cx,165
mov dx,270
mov ah,0Ch
int 10h   

mov bl,6     

call Horizontal_Right 

mov cx,165
mov dx,270
mov ah,0Ch
int 10h   

mov bl,5     

call Horizontal_Right     

mov cx,270
mov dx,120
mov ah,0Ch
int 10h
         
mov bl,50

call Vertical_Down

mov cx,265
mov dx,125
mov ah,0Ch
int 10h
            
mov bl,45

call Vertical_Down

mov cx,265
mov dx,170
mov ah,0Ch
int 10h
            
mov bl,6  

call Horizontal_Right: 

hlt

Horizontal_Right:        
    int 10h
    inc cx
    dec bl
    jnz Horizontal_Right
    ret

Horizontal_Left:        
    int 10h
    dec cx
    dec bl
    jnz Horizontal_Left
    ret

Vertical_Down:          
    int 10h
    inc dx
    dec bl
    jnz Vertical_Down
    ret

Vertical_Up:             
    int 10h
    dec dx
    dec bl
    jnz Vertical_Up
    ret

Diagonal_Down_Right:     
    int 10h
    inc cx
    inc dx
    dec bl
    jnz Diagonal_Down_Right
    ret

Diagonal_Down_Left:     
    int 10h
    dec cx
    inc dx
    dec bl
    jnz Diagonal_Down_Left
    ret

Diagonal_Up_Right:      
    int 10h
    inc cx
    dec dx
    dec bl
    jnz Diagonal_Up_Right
    ret

Diagonal_Up_Left:        
    int 10h
    dec cx
    dec dx
    dec bl
    jnz Diagonal_Up_Left
    ret