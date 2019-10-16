.ORIG X3000

		LD R4, COUNTER
		AND R6, R6, x0
		
LOOP		
		LEA R0, START
		PUTS
		GETC
		OUT
		
		AND R1, R1, x0 ;R1=x0/ascii 0
		AND R2, R2, x0 ;R1=x0/ascii 0
		AND R3, R3, x0 ;R1=x0/ascii 0
		
		STI R0, STORE
		ADD R6, R6, R0 ;input is stored in R1
		ADD R1, R1, R0 ;input is stored in R1
		LEA R2, UPLIMIT
		NOT R2, R2
		ADD R2, R2, #1
		ADD R3, R1, R2
		BRnz SYMBOLS1
		
		LEA R0, SPACE
		PUTS
		OUT
		ADD R4, R4, #1
		
		SYMBOLS1
		LEA R2, LOWLIMIT
		NOT R1, R1
		ADD R1, R1, #1
		ADD R3, R2, R1
		BRnz SYMBOLS2
		
		SYMBOLS2
		LEA R0, SPACE
		PUTS
		OUT
		LEA R0, SYMBOLS
		PUTS
		OUT
		ADD R4, R4, #1
		
		LEA R0, SPACE
		PUTS
		OUT

		ADD R4, R4, #-1 ; this decrements the counter by 1 
BRp LOOP
		
		
		HALT

UPLIMIT .FILL x0039
LOWLIMIT .FILL x0030
STORE .FILL x4000
COUNTER .FILL x0005
START .STRINGZ "Enter a Number(0-9):"
NEXT .STRINGZ "Enter Next Number(0-9):"
SYMBOLS .STRINGZ "Please enter a number 0-9 \n"
SUM .STRINGZ "The sum of the numbers:"
QUIT .STRINGZ "Thank you for playing!"
SPACE .STRINGZ "\n"