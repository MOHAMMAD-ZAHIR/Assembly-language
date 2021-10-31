.MODEL SMALL
.STACK 100H
.DATA
    STRING DB ?
    MSG DB 10,13,'Enter your UpperCase String: $'
    MSG2 DB 10,13, 'Your String is: $'
.CODE   
    MAIN PROC
        MOV AX, @DATA
        MOV DS, AX
        
        LEA DX, MSG
        MOV AH,9
        INT 21H
        
        LEA SI, STRING
        
        INP:
        MOV AH, 1 
        INT 21H
        MOV [SI], AL  
        ADD [SI], 32   ; LAST CHAR NEW LINE TA HYPHEN HOYE IN HOITECE
        INC SI
        
        CMP AL, 0DH
        JNZ INP
        
        DEC SI    ; LAST HYPHEN BAAD KORE DILAM        
        MOV [SI], '$'
        
        LEA DX, MSG2
        MOV AH,9
        INT 21H 
        
        LEA DX, STRING
        MOV AH, 9
        INT 21H
        
        
        MOV AH, 4CH
        INT 21H
    MAIN ENDP
END MAIN
