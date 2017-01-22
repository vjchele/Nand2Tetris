// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Fill.asm

// Runs an infinite loop that listens to the keyboard input. 
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel. When no key is pressed, the
// program clears the screen, i.e. writes "white" in every pixel.

// Put your code here.


(MAINLOOP)
	@i
	M=0
	@8192
	M=0

	@KBD
	D=M
	@BLACKLOOP
	D;JGT
	
	@WHITELOOP
	D;JEQ
	
	@MAINLOOP
	0;JMP


(BLACKLOOP)
	
	@i
	D=M
	@8192
	D = D - A
	@MAINLOOP
	D;JEQ
	
	@SCREEN
	D=A
	@i
	A=D+M
	M=-1
	@i
	M=M+1
	@BLACKLOOP
	0;JMP

(WHITELOOP)
	
	@i
	D=M
	@8192
	D = D - A
	@MAINLOOP
	D;JEQ
	
	@SCREEN
	D=A
	@i
	A=D+M
	M=0
	@i
	M=M+1
	@WHITELOOP
	0;JMP


(END)
	@END
	0;JEQ