;LAUREN MADEY
;This program draws a cloud and rain that comes from the cloud
;the rain can change colors by pressing different keys on the key board
;r=red
;b=blue
;g=green
;y=yellow
;space=white
;enter/return=clear rain
;q=quit

.ORIG x3000
;LOOPC1-LOOPC26 fill in each row of the cloud with the color grey 
LD R6, GREY 

LD R3, COUNT1 ;loads the number of pixels in cloud row 1 into R3
LD R5, CLOUD1 ;loads the first pixel # in the first row of the cloud in R5

LOOPC1	STR R6, R5, #0 ;storing the color grey into the locaiton in R5
		ADD R5, R5, x1 ;moving the location in R5 to the right by x1
		ADD R3, R3, #-1 ;decrementing the counter in R3
		BRzp LOOPC1 ;looping until cloud row one is filled
		
LD R3, COUNT2
LD R5, CLOUD2

LOOPC2	STR R6, R5, #0
		ADD R5, R5, x1
		ADD R3, R3, #-1
		BRzp LOOPC2

LD R3, COUNT3
LD R5, CLOUD3
		
LOOPC3	STR R6, R5, #0
		ADD R5, R5, x1
		ADD R3, R3, #-1
		BRzp LOOPC3
		
LD R3, COUNT4
LD R5, CLOUD4

LOOPC4	STR R6, R5, #0
		ADD R5, R5, x1
		ADD R3, R3, #-1
		BRzp LOOPC4

LD R3, COUNT5
LD R5, CLOUD5
		
LOOPC5	STR R6, R5, #0
		ADD R5, R5, x1
		ADD R3, R3, #-1
		BRzp LOOPC5
		
LD R3, COUNT6
LD R5, CLOUD6

LOOPC6	STR R6, R5, #0
		ADD R5, R5, x1
		ADD R3, R3, #-1
		BRzp LOOPC6
		
LD R3, COUNT7
LD R5, CLOUD7
		
LOOPC7	STR R6, R5, #0
		ADD R5, R5, x1
		ADD R3, R3, #-1
		BRzp LOOPC7
		
LD R3, COUNT8
LD R5, CLOUD8

LOOPC8	STR R6, R5, #0
		ADD R5, R5, x1
		ADD R3, R3, #-1
		BRzp LOOPC8
		
LD R3, COUNT9
LD R5, CLOUD9
		
LOOPC9	STR R6, R5, #0
		ADD R5, R5, x1
		ADD R3, R3, #-1
		BRzp LOOPC9
		
LD R3, COUNT10
LD R5, CLOUD10

LOOPC10	STR R6, R5, #0
		ADD R5, R5, x1
		ADD R3, R3, #-1
		BRzp LOOPC10
		
LD R3, COUNT11
LD R5, CLOUD11
		
LOOPC11	STR R6, R5, #0
		ADD R5, R5, x1
		ADD R3, R3, #-1
		BRzp LOOPC11
		
LD R3, COUNT12
LD R5, CLOUD12

LOOPC12	STR R6, R5, #0
		ADD R5, R5, x1
		ADD R3, R3, #-1
		BRzp LOOPC12

LD R3, COUNT13
LD R5, CLOUD13
		
LOOPC13	STR R6, R5, #0
		ADD R5, R5, x1
		ADD R3, R3, #-1
		BRzp LOOPC13
		
LD R3, COUNT14
LD R5, CLOUD14

LOOPC14	STR R6, R5, #0
		ADD R5, R5, x1
		ADD R3, R3, #-1
		BRzp LOOPC14
		
LD R3, COUNT15
LD R5, CLOUD15
		
LOOPC15	STR R6, R5, #0
		ADD R5, R5, x1
		ADD R3, R3, #-1
		BRzp LOOPC15
		
LD R3, COUNT16
LD R5, CLOUD16

LOOPC16	STR R6, R5, #0
		ADD R5, R5, x1
		ADD R3, R3, #-1
		BRzp LOOPC16

LD R3, COUNT17
LD R5, CLOUD17
		
LOOPC17	STR R6, R5, #0
		ADD R5, R5, x1
		ADD R3, R3, #-1
		BRzp LOOPC17
		
LD R3, COUNT18
LD R5, CLOUD18

LOOPC18	STR R6, R5, #0
		ADD R5, R5, x1
		ADD R3, R3, #-1
		BRzp LOOPC18
		
LD R3, COUNT19
LD R5, CLOUD19
		
LOOPC19	STR R6, R5, #0
		ADD R5, R5, x1
		ADD R3, R3, #-1
		BRzp LOOPC19
		
LD R3, COUNT20
LD R5, CLOUD20

LOOPC20	STR R6, R5, #0
		ADD R5, R5, x1
		ADD R3, R3, #-1
		BRzp LOOPC20
		
LD R3, COUNT21
LD R5, CLOUD21
		
LOOPC21	STR R6, R5, #0
		ADD R5, R5, x1
		ADD R3, R3, #-1
		BRzp LOOPC21
		
LD R3, COUNT22
LD R5, CLOUD22

LOOPC22	STR R6, R5, #0
		ADD R5, R5, x1
		ADD R3, R3, #-1
		BRzp LOOPC22

LD R3, COUNT23
LD R5, CLOUD23
		
LOOPC23	STR R6, R5, #0
		ADD R5, R5, x1
		ADD R3, R3, #-1
		BRzp LOOPC23
		
LD R3, COUNT24
LD R5, CLOUD24

LOOPC24	STR R6, R5, #0
		ADD R5, R5, x1
		ADD R3, R3, #-1
		BRzp LOOPC24
		
LD R3, COUNT25
LD R5, CLOUD25
		
LOOPC25	STR R6, R5, #0
		ADD R5, R5, x1
		ADD R3, R3, #-1
		BRzp LOOPC25
		
LD R3, COUNT26
LD R5, CLOUD26

LOOPC26	STR R6, R5, #0
		ADD R5, R5, x1
		ADD R3, R3, #-1
		BRzp LOOPC26

BRnzp NEXT ;skippping over all the .FILLs and going to NEXT

CLOUD1 .FILL xD429
COUNT1 .FILL #47
CLOUD2 .FILL xD3A8
COUNT2 .FILL #49
CLOUD3 .FILL xD326
COUNT3 .FILL #53
CLOUD4 .FILL xD2A6
COUNT4 .FILL #53
CLOUD5 .FILL xD225
COUNT5 .FILL #55
CLOUD6 .FILL xD1A5
COUNT6 .FILL #55
CLOUD7 .FILL xD124
COUNT7 .FILL #57
CLOUD8 .FILL xD0A5
COUNT8 .FILL #55
CLOUD9 .FILL xD025
COUNT9 .FILL #55
CLOUD10 .FILL xCFA6
COUNT10 .FILL #53
CLOUD11 .FILL xCF26
COUNT11 .FILL #53
CLOUD12 .FILL xCEA7
COUNT12 .FILL #51
CLOUD13 .FILL xCE29
COUNT13 .FILL #46
CLOUD14 .FILL xCDAA
COUNT14 .FILL #44
CLOUD15 .FILL xCD2C
COUNT15 .FILL #41
CLOUD16 .FILL xCCAD
COUNT16 .FILL #40
CLOUD17 .FILL xCC2D
COUNT17 .FILL #40
CLOUD18 .FILL xCBAD
COUNT18 .FILL #39
CLOUD19 .FILL xCB2E
COUNT19 .FILL #16
CLOUD20 .FILL xCAAF
COUNT20 .FILL #13
CLOUD21 .FILL xCA31
COUNT21 .FILL #10
CLOUD22 .FILL xCB3F
COUNT22 .FILL #21
CLOUD23 .FILL xCAC0
COUNT23 .FILL #19
CLOUD24 .FILL xCA41
COUNT24 .FILL #17
CLOUD25 .FILL xC9C2
COUNT25 .FILL #14
CLOUD26 .FILL xC943
COUNT26 .FILL #11
GREY .FILL xC618
RAINDROPoff .FILL x80
STORE1 .FILL x3700
COUNTERDROP .FILL #8
DOWN .FILL #83
NUM .FILL #1000
RAINDROP1 .FILL xD4B4
RAINDROP2 .FILL xD4C7
QUITra .FILL x31DE

NEXT
LD R6, BLUE ;loading blue into R6

LOOP
RAIN
START
LD R1, RAINDROP1 ;loading the locaiton of the first raindrop into R1
LD R3, COUNTERDROP ;loading #8 into R3 because the raindrop is 8x1
LOOPRD1	STR R6, R1, #0 ;changes pixel to color in R6
		LD R2, RAINDROPoff ;each row is x80 
		ADD R1, R1, R2 ;so to get to the next row add x80 to the pixel location
		ADD R3, R3, #-1 ;decrementing the counter
		BRp LOOPRD1 ;looping until the raindrop is 8x1
LD R3, DOWN ;this is the distance from the bottom of the 8x1 to the bottom of the screen
LD R5, RAINDROP1 ;load the start location of the raindrop so the top pixel of the raindrop can be turned black 
LD R4, BLACK 
NOT R2, R2 
ADD R2, R2, #1 ;two complement so R2 is now -R2
ADD R1, R1, R2 ;subtracting the first pixel location by x80 so the location is now up a row
LD R2, RAINDROPoff ;
LOOPR
STR R4, R5, #0
ADD R5, R5, R2 ;adding x80 to the pixel location is now down a row
ADD R1, R1, R2 ;adding x80 to the pixel location is now down a row
STR R6, R1, #0
ADD R3, R3, #-1 ;decrementing the counter
BRzp LOOPR ;looping back until the raindrop is off the screen 

LD R1, RAINDROP2
LD R3, COUNTERDROP
LOOPRD2	STR R6, R1, #0 ;changes pixel to color in R6
		LD R2, RAINDROPoff
		ADD R1, R1, R2
		ADD R3, R3, #-1
		BRp LOOPRD2
LD R3, DOWN
LD R5, RAINDROP2
LD R4, BLACK
NOT R2, R2
ADD R2, R2, #1
ADD R1, R1, R2
LD R2, RAINDROPoff
LOOPR2
STR R4, R5, #0
ADD R5, R5, R2
ADD R1, R1, R2
STR R6, R1, #0
ADD R3, R3, #-1
BRzp LOOPR2

BRnzp NEXT5
RAINDROP3 .FILL xD4BD
RAINDROP4 .FILL xD4D5
NEXT5
LD R1, RAINDROP3
LD R3, COUNTERDROP
LOOPRD3	STR R6, R1, #0 ;changes pixel to color in R6
		LD R2, RAINDROPoff
		ADD R1, R1, R2
		ADD R3, R3, #-1
		BRp LOOPRD3
LD R3, DOWN
LD R5, RAINDROP3
LD R4, BLACK
NOT R2, R2
ADD R2, R2, #1
ADD R1, R1, R2
LD R2, RAINDROPoff
LOOPR3
STR R4, R5, #0
ADD R5, R5, R2
ADD R1, R1, R2
STR R6, R1, #0
ADD R3, R3, #-1
BRzp LOOPR3

LD R1, RAINDROP4
LD R3, COUNTERDROP
LOOPRD4	STR R6, R1, #0 ;changes pixel to color in R6
		LD R2, RAINDROPoff
		ADD R1, R1, R2
		ADD R3, R3, #-1
		BRp LOOPRD4
LD R3, DOWN
LD R5, RAINDROP4
LD R4, BLACK
NOT R2, R2
ADD R2, R2, #1
ADD R1, R1, R2
LD R2, RAINDROPoff
LOOPR4
STR R4, R5, #0
ADD R5, R5, R2
ADD R1, R1, R2
STR R6, R1, #0
ADD R3, R3, #-1
BRzp LOOPR4

BRnzp NEXT6
RAINDROP5 .FILL xD4B0
RAINDROP6 .FILL xD4CF
NEXT6
LD R1, RAINDROP5
LD R3, COUNTERDROP
LOOPRD5	STR R6, R1, #0 ;changes pixel to color in R6
		LD R2, RAINDROPoff
		ADD R1, R1, R2
		ADD R3, R3, #-1
		BRp LOOPRD5
LD R3, DOWN
LD R5, RAINDROP5
LD R4, BLACK
NOT R2, R2
ADD R2, R2, #1
ADD R1, R1, R2
LD R2, RAINDROPoff
LOOPR5
STR R4, R5, #0
ADD R5, R5, R2
ADD R1, R1, R2
STR R6, R1, #0
ADD R3, R3, #-1
BRzp LOOPR5

LD R1, RAINDROP6
LD R3, COUNTERDROP
LOOPRD6	STR R6, R1, #0 
		LD R2, RAINDROPoff
		ADD R1, R1, R2
		ADD R3, R3, #-1
		BRp LOOPRD6
LD R3, DOWN
LD R5, RAINDROP6
LD R4, BLACK
NOT R2, R2
ADD R2, R2, #1
ADD R1, R1, R2
LD R2, RAINDROPoff
LOOPR6
STR R4, R5, #0
ADD R5, R5, R2
ADD R1, R1, R2
STR R6, R1, #0
ADD R3, R3, #-1
BRzp LOOPR6

BRnzp NEXT7
RAINDROP7 .FILL xD4B9
RAINDROP8 .FILL xD4AD
NEXT7
LD R1, RAINDROP7
LD R3, COUNTERDROP
LOOPRD7	STR R6, R1, #0 
		LD R2, RAINDROPoff
		ADD R1, R1, R2
		ADD R3, R3, #-1
		BRp LOOPRD7
LD R3, DOWN
LD R5, RAINDROP7
LD R4, BLACK
NOT R2, R2
ADD R2, R2, #1
ADD R1, R1, R2
LD R2, RAINDROPoff
LOOPR7
STR R4, R5, #0
ADD R5, R5, R2
ADD R1, R1, R2
STR R6, R1, #0
ADD R3, R3, #-1
BRzp LOOPR7

LD R1, RAINDROP8
LD R3, COUNTERDROP
LOOPRD8	STR R6, R1, #0 
		LD R2, RAINDROPoff
		ADD R1, R1, R2
		ADD R3, R3, #-1
		BRp LOOPRD8
LD R3, DOWN
LD R5, RAINDROP8
LD R4, BLACK
NOT R2, R2
ADD R2, R2, #1
ADD R1, R1, R2
LD R2, RAINDROPoff
LOOPR8
STR R4, R5, #0
ADD R5, R5, R2
ADD R1, R1, R2
STR R6, R1, #0
ADD R3, R3, #-1
BRzp LOOPR8

BRnzp NEXT8
RAINDROP9 .FILL xD4B9
RAINDROP10 .FILL xD4AD
NEXT8
LD R1, RAINDROP9
LD R3, COUNTERDROP
LOOPRD9	STR R6, R1, #0 
		LD R2, RAINDROPoff
		ADD R1, R1, R2
		ADD R3, R3, #-1
		BRp LOOPRD9
LD R3, DOWN
LD R5, RAINDROP9
LD R4, BLACK
NOT R2, R2
ADD R2, R2, #1
ADD R1, R1, R2
LD R2, RAINDROPoff
LOOPR9
STR R4, R5, #0
ADD R5, R5, R2
ADD R1, R1, R2
STR R6, R1, #0
ADD R3, R3, #-1
BRzp LOOPR9

LD R1, RAINDROP10
LD R3, COUNTERDROP
LOOPRD10	STR R6, R1, #0 
			LD R2, RAINDROPoff
			ADD R1, R1, R2
			ADD R3, R3, #-1
			BRp LOOPRD10
LD R3, DOWN
LD R5, RAINDROP10
LD R4, BLACK
NOT R2, R2
ADD R2, R2, #1
ADD R1, R1, R2
LD R2, RAINDROPoff
LOOPR10
STR R4, R5, #0
ADD R5, R5, R2
ADD R1, R1, R2
STR R6, R1, #0
ADD R3, R3, #-1
BRzp LOOPR10

LDI R1, KBSR 
BRzp START ;if the KBSR is negative meaning a key has been press then the loop will break
LDI R0, KBDR ;loading the value of the key pressed into R0
STI R0, STORE1
LDI R1, DSR
BRnzp NEXT2 
BRnzp LOOP

KBSR .FILL xFE00
KBDR .FILL xFE02
DSR .FILL xFE04
DDR .FILL xFE06
R .FILL #-114
G .FILL #-103
B .FILL #-98
Y .FILL #-121
SPACE .FILL #-32
RETURN .FILL #-10
Q .FILL #-113
RED .FILL x7C00
GREEN .FILL x03E0
BLUE .FILL x001F
YELLOW .FILL x7FED
WHITE .FILL x7FFF
BLACK .FILL x0000
CLEARSTART .FILL x3001
RAINSTART .FILL x30DC
CLEARSCREEN .FILL x3DFF

NEXT2
BRnzp NEXT4

BLUEr	
LD R6, BLUE
BRnzp RAIN
	
REDr
LD R6, RED
BRnzp RAIN

GREENr
LD R6, GREEN
BRnzp RAIN

YELLOWr
LD R6, YELLOW
BRnzp RAIN

SPACEkey
LD R6, WHITE
BRnzp RAIN
	
RETURNkey
LD R6, BLACK
BRnzp RAIN ;clears the rain and not the box location which contains the cloud

QUITr	HALT

NEXT4
AND R2, R2, #0
LD R1, R
ADD R2,R0,R1
BRz REDr ;if the key pressed was r then go to REDr
	
AND R2, R2, #0
LD R1, G
ADD R2, R0, R1
BRz GREENr ;if the key pressed was g then go to GREENr
	
AND R2, R2, #0
LD R1, B
ADD R2, R0, R1
BRz BLUEr ;if the key pressed was b then go to BLUEr
	
AND R2, R2, #0
LD R1, Y
ADD R2, R0, R1
BRz YELLOWr ;if the key pressed was y then go to YELLOWr
	
AND R2, R2, #0
LD R1, SPACE
ADD R2, R0, R1
BRz SPACEkey ;if the key pressed was (space) then go to SPACEkey
	
AND R2, R2, #0
LD R1, RETURN
ADD R2, R0, R1
BRz RETURNkey ;if the key pressed was (enter) then go to RETURNkey
	
AND R2, R2, #0
LD R1, Q
ADD R2, R0, R1
BRz QUITr ;if the key pressed was q then go to QUITr
LD R3, RAINSTART
JMP R3 ;if the key press is not one of the hot keys then it remains raining the same color







