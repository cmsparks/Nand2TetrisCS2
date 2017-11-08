//I/O Handling Program; Fill.hack

(SET)
	@counter
	M=0
(FILL)			//Fills each pixel with black when a key is pressed from left to right
	@KBD		//Read KBD into D
	D=M	
	
	@CLEAR		//If KBD=0 (No key pressed), jump to CLEAR
	D;JEQ	

	@counter	//Else load counter/Ram location to fill
	D=M

	@SCREEN		//fill the current cell
	A=A+D		//Set address to @SCREEN+counter
	M=-1		//Set address register to -1 (All 1's in 16 bit) to fill pixels
	
	@counter
	M=M+1		//Increment counter by 1
	D=M

	@8192		// if reached last Ram location, jump back to the beginning of the screen
	D=D-A
	@SET
	D;JGE

	@FILL		//Force a jump to back to check KBD
	0;JMP	

(CLEAR)			//Clears filled pixels starting from the last filled pixel going backwards
	
	@counter	//load counter/Ram location to fill
	D=M	
	
	@SCREEN		// clear the current cell
	A=A+D		//Set address to @SCREEN+counter
	M=0		//Set address register at @SCREEN+counter to 0, clearing the pixels

	@counter
	M=M-1		//Decrement counter by 1 so CLEAR will move to the previous register
	D=M

	@SET		// if reached beginning Ram location, jump back to the beginning of the screen
	D;JLE

	@FILL		//Force a jump back to check KBD
	0;JMP	
