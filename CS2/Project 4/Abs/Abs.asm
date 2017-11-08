@R0  // read R0
D=M
@R1 // Read R1 
D=D-M //r0-r1, store in D
@R2 // Store answer
M=D //  if R2 >= 0 (positive), jump to END 
@END 
D;JGE
@R1 // subtract R1 - R0 store in D
D=M
@R0
D=D-M
@R2 // subtract to R2
M=D
(END)
@END
0;JMP
