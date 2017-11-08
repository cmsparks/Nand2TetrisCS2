(INPUT)
@SCREEN
D=A
@pixel
M=D
@i
M=0

@24576
D=M
@DARK
D;JGT
@LIGHT
0;JMP

(DARK)
@pixel
D=M
A=D
M=-1
@pixel
D=M
D=D+1
M=D
@i
M=M+1 

@8192
D=A
@i
D=M-D
@INPUT 

@DARK
0;JMP


(LIGHT)
@pixel
D=M
A=D
M=0
@pixel
D=M
D=D+1
M=D
@i
M=M+1

@8192
D=A
@i
D=M-D
@INPUT

@DARK
0;JMP //if there are still pixels to lighten then keep lightening the pixels