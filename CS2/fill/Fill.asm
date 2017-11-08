(Reset)
@SCREEN 
D=A 
@i
M=D

(Check)
@KBD
D=A
@i
D=D-M
@Reset
D;JEQ
@KBD
D=M
@White
D;JEQ
@Black
0;JMP

(White)
@i
A=M
M=0
@i
M=M+1
@Check
0;JMP

(Black)
@i
A=M
M=-1
@i
M=M+1
@Check
0;JMP