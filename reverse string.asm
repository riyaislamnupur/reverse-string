.MODEL TINY
.DATA
     STR DB '0'
.CODE 
MAIN PROC
      MOV SI,0
      MOV CX,0
      MOV AH,1
INP: 
    INT 21H
    MOV STR[SI],AL
    INC CX
    INC SI
    CMP AL,13
    JE NL
    JMP INP

NL:
   MOV AH,2
   MOV DL,10
   INT 21H
   MOV DL,13
   INT 21H
   DEC CX
   MOV DI,CX
  
  OP: 
     DEC DI
     MOV DL,STR[DI]
     INT 21H
     MOV DL,32 ;FOR SPACE
     INT 21H   ;IF UPPER IS CUT THEN THIS WILL BE CUT OTHERWISE RRUUPPUUNN
     LOOP OP
     
END