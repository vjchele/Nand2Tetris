@i
M=0
(LOOP)
	
	@i
	D=M
	@8192
	D = D - A
	@END
	D;JEQ
	
	@SCREEN
	D=A
	@i
	A=D+M
	M=-1
	@i
	M=M+1
	@LOOP
	0;JMP


(END)
	@END
	0;JEQ
	


