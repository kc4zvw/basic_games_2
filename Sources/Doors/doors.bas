rem
rem Program: DOORS.BAS
rem
rem Ported by David Billsbrough
rem

Declare Function FNR( Z As Integer ) As Integer
DIM k3 as integer

' define the function FNR
Function FNR( Z As Integer ) As Integer
   FNR = Z * RND(1)
End Function

1 PRINT TAB(27); "DOORS"
2 PRINT TAB(20); "Creative Computing"
3 PRINT TAB(18); "Morristown, New Jersey"
4 PRINT:PRINT:PRINT
5 REM Declare varables
25 DIM K(20) as integer
26 DIM R$(30)
27 DIM S$(30)
30 rem DEF FNR(Z)=INT(Z * RND)
32 FOR X=0 TO 6:READ R$(X):NEXT X
33 FOR X=0 TO 6:READ S$(X):NEXT X
35 D=1:T=10+FNR(21):N=3+FNR(3):K3=8+FNR(5)
40 PRINT "There are"; N; " locked doors and there are"; K3; " keys ( 0 - "; K3-1; ")"
41 PRINT USING "You will have ### tries to open them all"; T-1
42 PRINT "(Some keys may open more than one door)"
43 PRINT
65 FOR X=2 TO N:K(X)=FNR(K3):NEXT X
70 T=T-1:IF T=0 THEN 150
80 PRINT "Tries left #"; T; TAB(25); "door #"; D; " key #";
90 INPUT K2
100 IF K2 <> K(D) THEN 70
110 PRINT S$(FNR(7)):D = D + 1
120 IF D < N+1 THEN 70
125 PRINT
130 PRINT "You did it, behind door"; M; "is ... "
140 PRINT R$(FNR(7)):GOTO 170
150 PRINT"You lose, the rest of the keys are:"
160 FOR X=D TO N:PRINT " Door"; x; "  Key "; K(X):NEXT X
170 PRINT "Do you want to play again <Yes or No> sir"
171 INPUT ucase$(D$)
172 D$=LEFT$(D$,1)
173 PRINT D$
180 IF D$="Y" THEN 35
181 IF D$="N" THEN 999
190 PRINT "Hey, i didn't just fall off a turnip truck, ya know!"
200 GOTO 170
500 DATA "a Pot of Gold", "a Beautiful Maiden", "a Man eating Tiger"
505 DATA "Nothing", "$22.59", "a Rolls Royce", "the Keys to the World"
600 DATA "Open Sesane!", "C-R-E-E-E-E-E-A-A-K", "Wa Lah!", "TA-DAH!"
605 DATA "AbraCaDabra", "Click!!!", "Surprise!"
999 END
