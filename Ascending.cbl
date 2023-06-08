000010 IDENTIFICATION DIVISION.
000020 PROGRAM-ID. ASCENDING-EXAMPLE.

000030 DATA DIVISION.
000040 WORKING-STORAGE SECTION.
000050 01 ARRAY-SIZE PIC 9(3) VALUE 5.
000060 01 NUMBERS OCCURS 0 TO 999 TIMES DEPENDING ON ARRAY-SIZE PIC 9(3).
000070 01 I PIC 9(3).
000080 01 J PIC 9(3).
000090 01 TEMP PIC 9(3).

000100 PROCEDURE DIVISION.
000110 MAIN-LOGIC.
000120     PERFORM INITIALIZE-ARRAY.
000130     PERFORM READ-NUMBERS.
000140     PERFORM SORT-ARRAY.
000150     PERFORM DISPLAY-ARRAY.
000160     STOP RUN.

000170 INITIALIZE-ARRAY.
000180     MOVE 7 TO ARRAY-SIZE.
000190     PERFORM VARYING I FROM 1 BY 1 UNTIL I > ARRAY-SIZE
000200         MOVE 0 TO NUMBERS(I)
000210     END-PERFORM.

000220 READ-NUMBERS.
000230     DISPLAY "Enter the numbers to sort:".
000240     PERFORM VARYING I FROM 1 BY 1 UNTIL I > ARRAY-SIZE
000250         ACCEPT NUMBERS(I) FROM CONSOLE
000260     END-PERFORM.

000270 SORT-ARRAY.
000280     PERFORM VARYING I FROM 1 BY 1 UNTIL I > ARRAY-SIZE - 1
000290         PERFORM VARYING J FROM 1 BY 1 UNTIL J > ARRAY-SIZE - I
000300             IF NUMBERS(J) > NUMBERS(J + 1)
000310                 MOVE NUMBERS(J) TO TEMP
000320                 MOVE NUMBERS(J + 1) TO NUMBERS(J)
000330                 MOVE TEMP TO NUMBERS(J + 1)
000340             END-IF
000350         END-PERFORM
000360     END-PERFORM.

000370 DISPLAY-ARRAY.
000380     DISPLAY "Sorted numbers:".
000390     PERFORM VARYING I FROM 1 BY 1 UNTIL I > ARRAY-SIZE
000400         DISPLAY NUMBERS(I)
000410     END-PERFORM.
