.MODEL SMALL
.STACK 100H 

.DATA
     MSG DB 'Input your string: $'
     MSG2 DB 10,13,'Your reverse String is: $'   
     
.CODE   
    MAIN PROC
        MOV AX, @DATA
        MOV DS, AX
        
        ;massage 1
        LEA DX, MSG
        MOV AH, 9
        INT 21H
        
        ;INPUT
        MOV AH, 1 
        MOV CX, 0
        INPUT:
        INT 21H   
        CMP AL, 0DH
        JE EXIT
        PUSH AX 
        INC CX
        JMP INPUT
        
        EXIT:  
        ;massage 2
        LEA DX, MSG2
        MOV AH, 9
        INT 21H
        
        ;OUTPUT
        MOV AH, 2
        OUTPUT:
        POP DX     
        INT 21H
        LOOP OUTPUT
        
        
        MOV AH, 4CH 
        INT 21H 
        
    MAIN ENDP
END MAIN
