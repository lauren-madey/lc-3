;LAUREN MADEY
;March 25, 2019
;This program adds the sum of 5 number 0-9 entered by the user
;if the user presses the 'ENTER' key the sum of the current numbers entered will be displayed
;if the user presses the 'q' key the program will stop

.ORIG x3000

AND R6, R6, x0
AND R5, R5, x0
LD R3, COUNTER

LOOP
	AND R4, R4, #0
	AND R1, R1, #0
	AND R2, R2, #0

	LEA R0, START
	PUTS
	GETC
	OUT

	;int<=x39 and int=>x30 for the symbols inputed to be 0-9
	;if int=xA(ENTER) then go to SUM 
	;or if intx71(q) go to quit

		ADD R4, R4, R0 ;stores input value into R4
		STI R4, STORE1
		LD R1, LOWLIMIT ;R1=-48
		ADD R2, R4, R1	;int-48																							   
		BRzp INTabove47 ;if int-48 is zero or positive go to INTabove47
		BRn INTbelow48 ;if int-48 is negative go to INTbelow48

INTbelow48	AND R2, R2, #0
			ADD R2, R4, #-10 ;int-10
			BRz SUMTOTAL
			BRnp SYMBOLS

	INTabove47	LD R1, UPLIMIT ;if int<48 (int<x30) the code below is skipped
				ADD R2, R4, R1
				BRnz INTbelow58
				BRp INTabove57

	INTbelow58	STI R4, STORE1
				LD R5, OFFSET ;R5=-48
				ADD R4, R4, R5 ;R4-48-->R6
				ADD R6, R6, R4  ;R6+R4-->R6
				STI R6, STORE2
				ADD R3, R3, #-1 ; this decrements the counter by 1
				BRnz SUMTOTAL
				BRp LOOP

	INTabove57	LD R1, DECq
				AND R2, R2, #0
				ADD R2, R4, R1
				BRz LETTERq
				BRnp SYMBOLS

	SYMBOLS	LEA R0, SYMBOLS1
			PUTS
			BRnzp LOOP

	LETTERq	LEA R0, QUIT ;meaning that int=x71(q) for this code to run
			PUTS
			HALT
				
SUMTOTAL		LD R4, OFFSET ; OFFSETby=-48
				ADD R6, R6, #0
				LEA R0, SUM 
				PUTS
				
				LD R1, TEN ;R1=-10
				ADD R5, R6, R1 ; SUM-10-->R5
				BRzp greaterThan9
				BRn lessThanTEN
				
lessThanTEN LD R2, posOFFset 
			ADD R0, R6, R2 ;SUM + x30
			OUT
			HAlT
			
greaterThan9	LD R1, TWENTY ;R1=-20
				ADD R5, R6, R1 ; SUM-20-->R5
				BRzp greaterThan19
				BRn lessThanTWENTY
				
lessThanTWENTY	LD R0, TENS ;R1=#49(symbol '1')
				OUT
				ADD R5, R5, #10 ;(SUM-20)+10-->R5 == SUM-10-->R5
				LD R2, posOFFset ;R2=x30(#48)
				ADD R0, R5, R2 ;[SUM-10]+x30-->R5
				OUT
				HAlT
				
greaterThan19	LD R1, THIRTY ;R1=-30
				ADD R5, R6, R1 ;SUM-30-->R5
				BRzp greaterThan29
				BRn lessThanTHIRTY

lessThanTHIRTY	LD R0, TWENTYS ;R1=#50(symbol '2')
				OUT
				ADD R5, R5, #10 ;(SUM-30)+10-->R5 == SUM-20-->R5
				LD R2, posOFFset ;R2=x30
				ADD R0, R5, R2 ;[SUM-20]+x30-->R5
				OUT
				HAlT
				
greaterThan29	LD R1, FORTY ;R1=-40
				ADD R5, R6, R1 ;SUM-40-->R5
				BRzp greaterThan39
				BRn lessThanFORTY
				
lessThanFORTY	LD R0, THIRTYS ;R1=#51(symbol '3')
				OUT
				ADD R5, R5, #10 ;(SUM-40)+10-->R5 == SUM-30-->R5
				LD R2, posOFFset ;R2=x30
				ADD R0, R5, R2 ; [SUM-30]+x30-->R5
				OUT
				HAlT
				
greaterThan39	LD R0, FORTYS ;R1=#52(symbol '4')
				OUT
				ADD R5, R5, #0
				LD R2, posOFFset
				ADD R0, R5, R2
				OUT
				HAlT

START .STRINGZ "\n Enter a Number(0-9):"
SUM .STRINGZ "\n The sum of the numbers:"
QUIT .STRINGZ "\n Thank you for playing!"
showENTER .STRINGZ "ENTER"
SYMBOLS1 .STRINGZ "\n Please enter a number 0-9 \n "
COUNTER .FILL x0005
UPLIMIT .FILL #-57
LOWLIMIT .FILL #-48
DECq .FILL #-113
OFFSET .FILL #-48
posOFFset .FILL x30
TEN .FILL #-10
TWENTY .FILL #-20
THIRTY .FILL #-30
FORTY .FILL #-40
TENS .FILL #49
TWENTYS .FILL #50
THIRTYS .FILL #51
FORTYS .FILL #52
STORE1 .FILL x4000
STORE2 .FILL x4001