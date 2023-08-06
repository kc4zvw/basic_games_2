rem 
rem Program: BlackBox.bas
rem
rem Ported by David Billsbrough
rem

Declare Function FNR( Z As Integer ) As Integer

DIM B(10,10) as Integer
DIM D(10,10) as Integer

' define the function FNR for a random number in range Z
Function FNR( Z As Integer ) As Integer
   FNR = (Z * RND(1) + 1)
End Function

100 PRINT TAB(25); "BLACKBOX" 
110 PRINT TAB(20); "Creative Computing" 
120 PRINT TAB(18); "Morristown, New Jersey" 
130 PRINT:PRINT:PRINT 
140 REM ****** DEF FNR(Z) = INT(8 * RND(1) + 1)
150 PRINT "NO. of Atoms";: INPUT N 
160 FOR J=0 TO 9: FOR I=0 TO 9: B(I,J)=0: NEXT I,J 
170 FOR I=1 TO N 
180 X=FNR(1): Y=FNR(1): IF B(X,Y) <> 0 THEN 180 
190 B(X,Y)=1: NEXT I 
200 S=0:C=0 
210 PRINT "Ray";: INPUT R: IF R < 1 THEN 480 
220 ON (R-1)/S+1 GOTO 240,250,260,270 
230 PRINT "ERROR": GOTO 210 
240 X=0: Y=R: U=1: V=0: GOTO 280 
250 X=R-8: Y=9: U=0: V=-1: GOTO 280 
260 X=9: Y=25-R: U=-1: V=0: GOTO 280 
270 X=33-R: Y=0: U=0: V=l 
280 X1=X+U: Yl=Y+V 
290 IF U=O THEN X2=X1-1: X3=X1+1: Y2=Y1: Y3=Y1: GOTO 310 
300 Y2=Y1-1: Y3=Y1+1: X2=X1: X3=X1 
310 ON B(X1,Y1)+B(X2,Y2)+B(X3,Y3)+1 GOTO 330,340,350,340 
320 PRINT "Absorbed":S=S+l: GOTO 210 
330 X=X1: Y=Y1: GOTO 380 
340 Z=1: GOTO 360 
350 Z=-1 
360 IF U=O THEN U=l: V=O: GOTO 380 
370 U=O: V=Z 
380 ON (X+15)/8 GOTO 420,400,430 
390 STOP 
400 ON (Y+15)/8 GOTO 440,280,450 
410 STOP 
420 Z=Y: GOTO 460 
430 Z=25-Y: GOTO 460 
440 Z=33-X: GOTO 460 
450 Z=8+X 
460 IF Z=R THEN PRINT "Reflected":S=S+1: GOTO 210 
470 PRINT "TO"; Z : S=S+2: GOTO 210 
480 PRINT "Now tell me, where do you think the atoms are?" 
490 PRINT "(In Row,Column format please.)" 
500 FOR Q=1 TO N 
510 PRINT "Atom # "; Q;
520 INPUT I, J 
530 If B(J,I) <> 1 THEN S=S + 5:GOTO 540 
532 D(J,1)=2 
535 C=C+1 
540 NEXT Q 
550 PRINT: FOR J=1 TO 8: FOR I=1 TO 8 
560 IF D(I,J)=O THEN PRINT " .";: GOTO 580 
570 PRINT "  *"; 
580 NEXT I: PRINT: NEXT J: PRINT: 
590 PRINT USING "You guessed ### out of ### Atoms correctly!"; C; N 
600 PRINT "Your score for this round was "; S;" points." 
610 INPUT "Care to try again"; A$ : A$=LCASE$(A$)
620 IF LEFT$(A$,1)="y" THEN PRINT:GOTO 150 
630 PRINT "Good-Bye"
640 END
