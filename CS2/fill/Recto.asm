//Recto program
	@R0
	D=M
	@INFINITE_LOOP
	D;JLE
	@counter
	M=D
	@SCREEN
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
	@counter
	MD=M-1
	@LOOP
	D;JGT
(INFINITE_LOOP)
	@INFINITE_LOOP
	0;JMP