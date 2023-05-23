ORG 00H
START:
MOV TMOD,#06H
MOV TL0,#00H
SETB TR0

AGAIN: 
    MOV A,#38H
    ACALL COMMANDW
    MOV A,#0EH
    ACALL COMMANDW
    MOV A,#01H
    ACALL COMMANDW
    MOV A,#06H
    ACALL COMMANDW
    MOV A,#80H
    ACALL COMMANDW
    MOV A,#'C'
    ACALL DATAW
    MOV A,#'O'
    ACALL DATAW
    MOV A,#'U'
    ACALL DATAW
    MOV A,#'N'
    ACALL DATAW
    MOV A,#'T'
    ACALL DATAW
    MOV A,#' '
    ACALL DATAW
    MOV A,#':'
    ACALL DATAW
    MOV A,#0C4H
    ACALL COMMANDW

    MOV A,TL0
    ADD A,#48
    ACALL DATAW

    JNB TF0 , AGAIN
    CLR TR0
    CLR TF0

 COMMANDW: 
        ACALL READY
        MOV P1,A
        CLR P2.0
        CLR P2.1
        SETB P2.2
        CLR P2.2
        RET
 DATAW:
        ACALL READY
        MOV P1,A
        SETB P2.0
        CLR P2.1
        SETB P2.2
        CLR P2.2
        RET
 READY:
       MOV R0,#05H
      HERE: MOV R1,#05H
      HERE1:DJNZ R1,HERE1
      DJNZ R0,HERE
      RET

      END