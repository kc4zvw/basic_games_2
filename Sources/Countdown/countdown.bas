1 PRINT TAB(24);"COUNT DOWN"
2 PRINT TAB(20);"Creative Computing"
3 PRINT TAB(18);"Morristown, New Jersey"
4 PRINT:PRINT:PRINT
5 A=INT(RND * 10)
6 T=O
7 N=O
10 PRINT "You have activated the self-destruct mechanism ";
20 PRINT "in this school."
25 PRINT "If you wish, you may stop the mechanism"
27 PRINT "To do so, just type in the correct number,"
35 PRINT "which will stop the count-down."
37 PRINT "Please hurry! There is no time to waste !!!!!" 
44 PRINT "What will it be";:INPUT X:PRINT
45 IF T=4 THEN 98
47 GOTO 200
50 REM
75 PRINT "Your number does not compute!"
80 PRINT "Please try again *****": T=T+1
81 IF T=2 THEN 96
82 IF T=3 THEN 105
83 GOTO 44
85 PRINT "Correct! *****":LET N=5
90 PRINT "The countdown has stopped."
92 PRINT "You have saved the school!"
93 PRINT "(Have you seen your shrink lately?)"
94 LET T=10
95 GOTO 1000
96 PRINT "Time grows short, Please hurry! *****"
97 GOTO 44
98 PRINT:PRINT:PRINT:PRINT
99 PRINT TAB(32);"Too Late"
100 PRINT:PRINT:PRINT:PRINT TAB(32);"\ **** /"
101 PRINT TAB(31);"-- BOOM --"
102 PRINT TAB(32);"/ **** \"
103 PRINT:PRINT:PRINT
104 GOTO 1000
105 PRINT "Hurry, the count-doun is approaching zero ''''"
110 GOTO 44
200 IF X<A THEN PRINT "Too Small !!!!! ":GOTO 50
210 IF X>A THEN PRINT "Too Big !!!!! ":GOTO 50
225 IF X=A THEN 85
1000 END
