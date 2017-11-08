@R0  
D=M
@INFINITE_LOOP
D;JLE  //if r0 is less than 0 then end the program
@counter
M=D
@SCREEN //point to screen and set pixels to black
D=A
@addr
M=D
(LOOP)
@addr
A=M
M=-1
@addr
D=M
@32
D=D+A
@addr
M=D
@counter  //subtract from the counter
MD=M-1
@LOOP  // restart tge loop
D;JGT
(INFINITE_LOOP)
@INFINITE_LOOP
0;JMP