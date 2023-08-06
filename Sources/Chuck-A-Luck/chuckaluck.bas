rem
rem  Program: CHUCK-A-LUCK.BAS
rem
rem  Ported by David Billsbrough
rem

defint A,B,D,C,N,T

20 RANDOMIZE

100 PRINT TAB(23); "CHUCK-A-LUCK"
110 PRINT TAB(20); "Creative Computing" 
120 PRINT TAB(18); "Morristown, New Jersey" 
130 PRINT:PRINT:PRINT 
140 PRINT "Choose a number from 1 to 6. I will roll 3 dice."
150 PRINT "If your number matches 1 die, I pay off even money." 
160 PRINT "TWO Dice, 2:1    3 Dice, 3:1" 
170 PRINT:PRINT:M=500 
180 PRINT "You have $"; M; ". Make a bet." 
190 INPUT B 
200 IF B > M THEN 410 
210 IF (B > 0) THEN
	rem print "Test #2"
	T1=B*100: T2=int(B*100)
	IF T1=T2 THEN
		rem print "Matched"
		GOTO 230
	END IF
    end if
220 GOTO 420 
230 PRINT "Choose a nunber"; 
240 INPUT N 
250 IF (N > 0) AND (N < 7) THEN 270 
260 PRINT "Cheater!!!!!!":GOTO 230 
270 A=INT(RND(1)*6)+1:PRINT A;" "; :D=INT(RND(1)*6)+1:PRINT D; " ";
280 C=INT(RND(1)*6)+1:PRINT C:PRINT
290 T = 0 
300 IF (A = N) THEN T+=l end if
310 IF (D = N) THEN T+=l end if
320 IF (C = N) THEN T+=l end if
330 PRINT "You've matched "; T; " times." 
340 ON T GOTO 380,390,400 
350 PRINT USING "You loose $###"; B 
360 M=M-B:IF M=0 THEN 430 
370 GOTO 180 
380 PRINT "You've won $";B:M=M+B:GOTO 180 
390 PRINT "You've won $";B*2:M=M+B:GOTO 180 
400 PRINT "You've won $";B*3:M=M+B:GOTO 180
410 PRINT "I don't take I.O.U's !!! ":GOTO 180 
420 PRINT "Don't get cute! ":GOTO 180 
430 PRINT 
440 PRINT "Good-Bye"
450 END 
