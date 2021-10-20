include emu8086.inc
.stack 100h 
.model small

.data

.code

    main proc 
         
        print 'enter your character: '
        mov ah ,01h  ; data will be stored at AL
        int 21h   
        
        
        mov bl,al ; move the value of al to bl
        
        mov dl,10   ; new line
        mov ah,02h
        int 21h
        
        mov dl,13  ; c return or carrage return
        mov ah,02h
        int 21h
        
        print 'print your character: '
        mov dl,bl
        mov ah,02h
        int 21h                             
        
        main endp
end main